import 'dart:async';
import 'dart:io';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:islam_app/utils/adds_helper.dart';
import 'package:islam_app/core/constants/database_constant.dart';
import 'package:islam_app/domain/usecase/quran_referances_usecase.dart';
import 'package:pdfx/pdfx.dart';

part 'quran_kareem_event.dart';
part 'quran_kareem_state.dart';
part 'quran_kareem_bloc.freezed.dart';

class QuranKareemBloc extends Bloc<QuranKareemEvent, QuranKareemState> {
  final _box = Hive.box(DatabaseBoxConstant.userInfo);
  int _numRewardedLoadAttempts = 0;
  PdfController? pdfController;
  int currentPageNumber = 0;

  QuranReferancesUsecase quranReferancesUsecase = QuranReferancesUsecase();

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

    initialize();
  }

  void initialize() async {
    await _setupFirstInitialPDF();
    _loadBookmarkedPages();
    _createRewardedAd();
  }

  // Load the initial PDF
  Future<void> _setupFirstInitialPDF() async {
    final pageNumber = _box.get(
        DatabaseFieldQuranCopyConstant.quranKaremLastPageNumber,
        defaultValue: 1);
    final printName = _box.get(
        DatabaseFieldQuranCopyConstant.quranKaremPrintNameToUse,
        defaultValue: "");

    final file = File(printName);
    if (file.existsSync()) {
      debugPrint("file exists at: ${file.path}");

      pdfController = PdfController(
        viewportFraction: 1.1,
        document: PdfDocument.openFile(file.path),
      )..initialPage = pageNumber;

      add(QuranKareemEvent.updateReadPDFFile(file.path));
      add(QuranKareemEvent.updatePageCount(pageNumber));
    } else {
      debugPrint("file does NOT exist at: ${file.path}");
    }
  }

  // Create and load the rewarded ad
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

  // Show the rewarded ad
  void showRewardedAd(RewardedAd rewardedAd) {
    rewardedAd.fullScreenContentCallback = FullScreenContentCallback(
      onAdShowedFullScreenContent: (_) {
        debugPrint('Ad showed full screen content.');
      },
      onAdDismissedFullScreenContent: (RewardedAd ad) {
        debugPrint('$ad dismissed.');
        _handleAdDismissal(ad);
      },
      onAdFailedToShowFullScreenContent: (RewardedAd ad, AdError error) {
        debugPrint('$ad failed to show: $error');
        _handleAdDismissal(ad);
      },
    );
    rewardedAd.setImmersiveMode(true);
    rewardedAd.show(onUserEarnedReward: (_, reward) {
      _logAdReward(reward);
    });
    add(QuranKareemEvent.updateRewardedAd(null));
  }

  // Handle the ad dismissal and load a new one
  void _handleAdDismissal(RewardedAd ad) {
    FirebaseAnalytics.instance.logEvent(
      name: "RewardedAd_Quran_tab",
      parameters: {"status": "onAdDismissedFullScreenContent"},
    );
    ad.dispose();
    _createRewardedAd();
  }

  // Log the earned reward
  void _logAdReward(RewardItem reward) {
    debugPrint('Reward: $reward');
    FirebaseAnalytics.instance.logEvent(
      name: "RewardedAd_Quran_tab",
      parameters: {
        "status": "earned reward $reward",
      },
    );
  }

  // Load bookmarked pages from local storage
  void _loadBookmarkedPages() {
    final List<dynamic> bookMarkedPages = _box.get(
        DatabaseFieldQuranCopyConstant.quranKaremBookMarkList,
        defaultValue: []);

    if (bookMarkedPages.isNotEmpty) {
      final intList = List<int>.from(bookMarkedPages);
      add(QuranKareemEvent.updateBookMarkedPages(intList));
    }
  }

  // Change the help bar visibility
  void changeHelpBarShowingStatus() {
    final status = state.showHelpBar;
    add(QuranKareemEvent.showHideHelpBar(!status));
  }

  // Event Handlers
  FutureOr<void> _showHideHelpBar(
      _ShowHideHelpBar event, Emitter<QuranKareemState> emit) {
    emit(state.copyWith(showHelpBar: event.status));
  }

  FutureOr<void> _updatePageCount(
      _UpdatePageCount event, Emitter<QuranKareemState> emit) async {
    currentPageNumber = event.pageCount;
    emit(state.copyWith(pageCount: currentPageNumber));

    final sorahName = quranReferancesUsecase
        .getSurahReferenceNameFromPageNumber(currentPageNumber);
    final jozo2Name =
        quranReferancesUsecase.getJuzNumberFromPageNumber(currentPageNumber);
    add(QuranKareemEvent.updateSorahName(sorahName));
    add(QuranKareemEvent.updateJozo2Name(jozo2Name));

    add(QuranKareemEvent.updateSidePage(_getPageSide(currentPageNumber)));

    await _box.put(DatabaseFieldQuranCopyConstant.quranKaremLastPageNumber,
        event.pageCount);
  }

  // Get the page side (left or right)
  QuranKareemStatePageSideState _getPageSide(int pageNumber) =>
      pageNumber.isEven
          ? const QuranKareemStatePageSideStateLeft()
          : const QuranKareemStatePageSideStateRight();

  FutureOr<void> _updateSidePage(
      _UpdateSidePage event, Emitter<QuranKareemState> emit) {
    emit(state.copyWith(pageSide: event.side));
  }

  FutureOr<void> _updateBookMarkedPages(
      _UpdateBookMarkedPages event, Emitter<QuranKareemState> emit) async {
    await _box.put(
        DatabaseFieldQuranCopyConstant.quranKaremBookMarkList, event.list);
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
