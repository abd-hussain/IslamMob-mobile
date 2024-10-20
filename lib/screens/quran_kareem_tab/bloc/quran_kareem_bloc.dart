import 'dart:async';
import 'dart:io';

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

class QuranKareemBloc extends Bloc<QuranKareemEvent, QuranKareemState> {
  final box = Hive.box(DatabaseBoxConstant.userInfo);
  int _numRewardedLoadAttempts = 0;

  late PdfController pdfController = PdfController(
    viewportFraction: 1.1,
    document: PdfDocument.openAsset(""),
  );

  QuranKareemBloc() : super(const QuranKareemState()) {
    on<_ShowHideHelpBar>(_showHideHelpBar);
    on<_UpdatePageCount>(_updatePageCount);
    on<_UpdateSorahReferanceNumber>(_updateSorahReferanceNumber);
    on<_UpdateJozo2ReferanceNumber>(_updateJozo2ReferanceNumber);
    on<_UpdateSidePage>(_updateSidePage);
    on<_UpdateBookMarkedPages>(_updateBookMarkedPages);
    on<_UpdateScreenBrigtness>(_updateScreenBrigtness);
    on<_UpdateRewardedAd>(_updateRewardedAd);
    on<_UpdateReadPDFFile>(_updateReadPDFFile);

    _setupFirstInitialPDF();

    _getListOfBookMarkedPages();
    _createRewardedAd();
  }

  void _setupFirstInitialPDF() async {
    final pageNumber = box.get(DatabaseFieldConstant.quranKaremLastPageNumber,
        defaultValue: 1);
    final printName = box.get(DatabaseFieldConstant.quranKaremPrintNameToUse,
        defaultValue: "");
    pdfController.initialPage = pageNumber;

    final file = File(printName);
    if (await file.exists()) {
      debugPrint("file exists at: ${file.path}");
      pdfController.loadDocument(PdfDocument.openFile(file.path));
      add(QuranKareemEvent.updateReadPDFFile(file.path));
    } else {
      debugPrint("file does NOT exist at: ${file.path}");
    }
    add(QuranKareemEvent.updatePageCount(pageNumber));

    //TODO: pdf not jump to the last page
    pdfController.jumpToPage(pageNumber);
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
        ad.dispose();
        _createRewardedAd();
      },
      onAdFailedToShowFullScreenContent: (RewardedAd ad, AdError error) {
        debugPrint('$ad onAdFailedToShowFullScreenContent: $error');
        ad.dispose();
        _createRewardedAd();
      },
    );

    rewardedAd.setImmersiveMode(true);
    rewardedAd.show(onUserEarnedReward: (AdWithoutView ad, RewardItem reward) {
      debugPrint(
          '$ad with reward $RewardItem(${reward.amount}, ${reward.type})');
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

  FutureOr<void> _showHideHelpBar(
      _ShowHideHelpBar event, Emitter<QuranKareemState> emit) {
    emit(state.copyWith(showHelpBar: event.status));
  }

  FutureOr<void> _updatePageCount(
      _UpdatePageCount event, Emitter<QuranKareemState> emit) async {
    final pageCount = event.pageCount;
    emit(state.copyWith(pageCount: pageCount));

    add(QuranKareemEvent.updateSorahReferanceNumber(
        QuranReferances.getSurahName(event.pageCount)));
    add(QuranKareemEvent.updateJozo2ReferanceNumber(
        QuranReferances.getJuzNumberFromPageNumber(event.pageCount)));
    add(QuranKareemEvent.updateSidePage(_getPageSide(event.pageCount)));

    await box.put(
        DatabaseFieldConstant.quranKaremLastPageNumber, event.pageCount);
  }

  FutureOr<void> _updateSorahReferanceNumber(
      _UpdateSorahReferanceNumber event, Emitter<QuranKareemState> emit) {
    emit(state.copyWith(sorahReferanceNumber: event.num));
  }

  FutureOr<void> _updateJozo2ReferanceNumber(
      _UpdateJozo2ReferanceNumber event, Emitter<QuranKareemState> emit) {
    emit(state.copyWith(jozo2ReferanceNumber: event.num));
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
    emit(state.copyWith(sourceFileOfPDF: event.value));
  }
}
