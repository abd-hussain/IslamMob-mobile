import 'dart:async';
import 'dart:io';

import 'package:advertisments_manager/advertisments_manager.dart';
import 'package:database_manager/database_manager.dart';
import 'package:firebase_manager/firebase_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/domain/usecase/quran_referances_usecase.dart';
import 'package:pdfx/pdfx.dart';

part 'quran_kareem_event.dart';
part 'quran_kareem_state.dart';
part 'quran_kareem_bloc.freezed.dart';

class QuranKareemBloc extends Bloc<QuranKareemEvent, QuranKareemState> {
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
    await RewarderAds.createRewardedAd();
    add(QuranKareemEvent.updateRewardedAd(RewarderAds.mainRewardedAd != null));
  }

  // Load the initial PDF
  Future<void> _setupFirstInitialPDF() async {
    final pageNumber = DataBaseManagerBase.getFromDatabase(
        key: DatabaseFieldQuranCopyConstant.quranKaremLastPageNumber, defaultValue: 1);

    final printName = DataBaseManagerBase.getFromDatabase(
        key: DatabaseFieldQuranCopyConstant.quranKaremPrintNameToUse, defaultValue: "");

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

  // Load bookmarked pages from local storage
  void _loadBookmarkedPages() {
    final List<dynamic> bookMarkedPages = DataBaseManagerBase.getFromDatabase(
        key: DatabaseFieldQuranCopyConstant.quranKaremBookMarkList, defaultValue: []);

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
  FutureOr<void> _showHideHelpBar(_ShowHideHelpBar event, Emitter<QuranKareemState> emit) {
    FirebaseAnalyticsRepository.logEvent(name: "QuranShowHideHelpBar");

    emit(state.copyWith(showHelpBar: event.status));
  }

  FutureOr<void> _updatePageCount(_UpdatePageCount event, Emitter<QuranKareemState> emit) async {
    currentPageNumber = event.pageCount;
    emit(state.copyWith(pageCount: currentPageNumber));

    final sorahName = quranReferancesUsecase.getSurahReferenceNameFromPageNumber(currentPageNumber);
    final jozo2Name = quranReferancesUsecase.getJuzNumberFromPageNumber(currentPageNumber);
    add(QuranKareemEvent.updateSorahName(sorahName));
    add(QuranKareemEvent.updateJozo2Name(jozo2Name));

    add(QuranKareemEvent.updateSidePage(_getPageSide(currentPageNumber)));

    await DataBaseManagerBase.saveInDatabase(
        key: DatabaseFieldQuranCopyConstant.quranKaremLastPageNumber, value: event.pageCount);
  }

  // Get the page side (left or right)
  QuranKareemStatePageSideState _getPageSide(int pageNumber) =>
      pageNumber.isEven ? const QuranKareemStatePageSideStateLeft() : const QuranKareemStatePageSideStateRight();

  FutureOr<void> _updateSidePage(_UpdateSidePage event, Emitter<QuranKareemState> emit) {
    emit(state.copyWith(pageSide: event.side));
  }

  FutureOr<void> _updateBookMarkedPages(_UpdateBookMarkedPages event, Emitter<QuranKareemState> emit) async {
    await DataBaseManagerBase.saveInDatabase(
        key: DatabaseFieldQuranCopyConstant.quranKaremBookMarkList, value: event.list);
    emit(state.copyWith(bookmarkedPages: event.list));
  }

  FutureOr<void> _updateScreenBrigtness(_UpdateScreenBrigtness event, Emitter<QuranKareemState> emit) {
    emit(state.copyWith(brigtness: event.value));
  }

  FutureOr<void> _updateRewardedAd(_UpdateRewardedAd event, Emitter<QuranKareemState> emit) {
    emit(state.copyWith(rewardedAdExists: event.value));
  }

  FutureOr<void> _updateReadPDFFile(_UpdateReadPDFFile event, Emitter<QuranKareemState> emit) {
    add(QuranKareemEvent.showHideHelpBar(true));
    emit(state.copyWith(sourceFileOfPDF: event.value));
  }

  FutureOr<void> _updateSorahName(_UpdateSorahName event, Emitter<QuranKareemState> emit) {
    emit(state.copyWith(sorahName: event.value));
  }

  FutureOr<void> _updateJozo2Name(_UpdateJozo2Name event, Emitter<QuranKareemState> emit) {
    emit(state.copyWith(jozo2Name: event.value));
  }
}
