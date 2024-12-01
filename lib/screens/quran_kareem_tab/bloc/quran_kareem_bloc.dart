import 'dart:async';
import 'dart:io';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:islam_app/utils/adds_helper.dart';
import 'package:islam_app/utils/constants/database_constant.dart';
import 'package:islam_app/utils/quran_referances.dart';
import 'package:pdfx/pdfx.dart';

part 'quran_kareem_event.dart';
part 'quran_kareem_state.dart';
part 'quran_kareem_bloc.freezed.dart';
//TODO: This tree need to be refactored

class QuranKareemBloc extends Bloc<QuranKareemEvent, QuranKareemState> {
  final box = Hive.box(DatabaseBoxConstant.userInfo);
  int _numRewardedLoadAttempts = 0;

  PdfController? pdfController;

  QuranKareemBloc() : super(const QuranKareemState()) {
    on<_ShowHideHelpBar>(_showHideHelpBar);
    on<_UpdatePageCount>(_updatePageCount);
    on<_UpdateSorahName>(_updateSorahName);
    on<_UpdateJozo2Name>(_updateJozo2Name);

    on<_UpdateSidePage>(_updateSidePage);
    on<_UpdateBookMarkedPages>(_updateBookMarkedPages);
    on<_UpdateScreenBrigtness>(_updateScreenBrigtness);
    on<_UpdateRewardedAd>(_updateRewardedAd);
    on<_UpdateReadPDFFile>(_updateReadPDFFile);

    initalMethod();
  }

  void initalMethod() async {
    await _setupFirstInitialPDF();
    _getListOfBookMarkedPages();
    _createRewardedAd();
  }

  int currentPageNumber = 0;

  Future<void> _setupFirstInitialPDF() async {
    final pageNumber = box.get(DatabaseFieldConstant.quranKaremLastPageNumber,
        defaultValue: 1);
    final printName = box.get(DatabaseFieldConstant.quranKaremPrintNameToUse,
        defaultValue: "");

    final file = File(printName);
    if (file.existsSync()) {
      debugPrint("file exists at: ${file.path}");

      pdfController = PdfController(
        viewportFraction: 1.1,
        document: PdfDocument.openFile(file.path),
      );

      pdfController?.initialPage = pageNumber;

      add(QuranKareemEvent.updateReadPDFFile(file.path));
      add(QuranKareemEvent.updatePageCount(pageNumber));
    } else {
      debugPrint("file does NOT exist at: ${file.path}");
    }
  }

  void _createRewardedAd() {
    RewardedAd.load(
      adUnitId: AdHelper.rewardedAdUnitId,
      request: const AdRequest(),
      rewardedAdLoadCallback:
          RewardedAdLoadCallback(onAdLoaded: (RewardedAd rewardedAd) {
        _numRewardedLoadAttempts = 0;
        add(QuranKareemEvent.updateRewardedAd(rewardedAd));
      }, onAdFailedToLoad: (LoadAdError error) {
        add(QuranKareemEvent.updateRewardedAd(null));
        _numRewardedLoadAttempts += 1;
        if (_numRewardedLoadAttempts < 3) {
          _createRewardedAd();
        }
      }),
    );
  }

  void showRewardedAd(RewardedAd rewardedAd) {
    rewardedAd.fullScreenContentCallback = FullScreenContentCallback(
      onAdShowedFullScreenContent: (RewardedAd ad) =>
          debugPrint('ad onAdShowedFullScreenContent.'),
      onAdDismissedFullScreenContent: (RewardedAd ad) {
        debugPrint('$ad onAdDismissedFullScreenContent.');
        FirebaseAnalytics.instance.logEvent(
          name: "RewardedAd_Quran_tab",
          parameters: {"status": "onAdDismissedFullScreenContent"},
        );

        ad.dispose();
        _createRewardedAd();
      },
      onAdFailedToShowFullScreenContent: (RewardedAd ad, AdError error) {
        debugPrint('$ad onAdFailedToShowFullScreenContent: $error');
        FirebaseAnalytics.instance.logEvent(
          name: "RewardedAd_Quran_tab",
          parameters: {"status": "onAdFailedToShowFullScreenContent"},
        );
        ad.dispose();
        _createRewardedAd();
      },
    );

    rewardedAd.setImmersiveMode(true);
    rewardedAd.show(onUserEarnedReward: (AdWithoutView ad, RewardItem reward) {
      debugPrint(
          '$ad with reward $RewardItem(${reward.amount}, ${reward.type})');
      FirebaseAnalytics.instance.logEvent(
        name: "RewardedAd_Quran_tab",
        parameters: {
          "status":
              "$ad with reward $RewardItem(${reward.amount}, ${reward.type})"
        },
      );
    });
    add(QuranKareemEvent.updateRewardedAd(null));
  }

  void _getListOfBookMarkedPages() {
    final List<dynamic> bookMarkedPages =
        box.get(DatabaseFieldConstant.quranKaremBookMarkList, defaultValue: []);

    if (bookMarkedPages.isNotEmpty) {
      List<int> intList = bookMarkedPages.cast<int>();
      add(QuranKareemEvent.updateBookMarkedPages(intList));
    }
  }

  void changeHelpBarShowingStatus() {
    final bool status = state.showHelpBar;
    add(QuranKareemEvent.showHideHelpBar(!status));
  }

  FutureOr<void> _showHideHelpBar(
      _ShowHideHelpBar event, Emitter<QuranKareemState> emit) {
    emit(state.copyWith(showHelpBar: event.status));
  }

  FutureOr<void> _updatePageCount(
      _UpdatePageCount event, Emitter<QuranKareemState> emit) async {
    currentPageNumber = event.pageCount;
    emit(state.copyWith(pageCount: currentPageNumber));

    final referanceSorahName =
        QuranReferances.getSurahReferenceNameFromPageNumber(currentPageNumber);
    add(QuranKareemEvent.updateSorahName(referanceSorahName));

    final referanceJozo2Name =
        QuranReferances.getJuzNumberFromPageNumber(currentPageNumber);
    add(QuranKareemEvent.updateJozo2Name(referanceJozo2Name));

    add(QuranKareemEvent.updateSidePage(_getPageSide(event.pageCount)));

    await box.put(
        DatabaseFieldConstant.quranKaremLastPageNumber, event.pageCount);
  }

  PageSide _getPageSide(int pageNumber) {
    return pageNumber.isEven ? PageSide.left : PageSide.right;
  }

  FutureOr<void> _updateSidePage(
      _UpdateSidePage event, Emitter<QuranKareemState> emit) {
    emit(state.copyWith(pageSide: event.side));
  }

  FutureOr<void> _updateBookMarkedPages(
      _UpdateBookMarkedPages event, Emitter<QuranKareemState> emit) async {
    await box.put(DatabaseFieldConstant.quranKaremBookMarkList, event.list);
    emit(state.copyWith(bookmarkedPages: event.list));
  }

  FutureOr<void> _updateScreenBrigtness(
      _UpdateScreenBrigtness event, Emitter<QuranKareemState> emit) {
    emit(state.copyWith(brigtness: event.value));
  }

  FutureOr<void> _updateRewardedAd(
      _UpdateRewardedAd event, Emitter<QuranKareemState> emit) {
    emit(state.copyWith(rewardedAd: event.value));
  }

  FutureOr<void> _updateReadPDFFile(
      _UpdateReadPDFFile event, Emitter<QuranKareemState> emit) {
    add(QuranKareemEvent.showHideHelpBar(true));
    emit(state.copyWith(sourceFileOfPDF: event.value));
  }

  FutureOr<void> _updateSorahName(
      _UpdateSorahName event, Emitter<QuranKareemState> emit) {
    emit(state.copyWith(sorahName: event.value));
  }

  FutureOr<void> _updateJozo2Name(
      _UpdateJozo2Name event, Emitter<QuranKareemState> emit) {
    emit(state.copyWith(jozo2Name: event.value));
  }
}
