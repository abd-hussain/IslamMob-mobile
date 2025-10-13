import 'dart:async';
import 'dart:io';

import 'package:advertisments_manager/advertisments_manager.dart';
import 'package:firebase_manager/firebase_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/domain/usecase/load_file_from_document_usecase.dart';
import 'package:islam_app/domain/usecase/quran_referances_usecase.dart';
import 'package:islam_app/my_app/locator.dart';
import 'package:pdfx/pdfx.dart';
import 'package:preferences/preferences.dart';

part 'quran_kareem_bloc.freezed.dart';
part 'quran_kareem_event.dart';
part 'quran_kareem_state.dart';

/// BLoC for managing the Quran Kareem (Holy Quran) reading interface state.
///
/// This BLoC handles all the business logic for the Quran reading experience,
/// including PDF document management, page navigation, bookmarking, screen
/// brightness control, and help interface management.
///
/// Key responsibilities:
/// - Managing PDF document loading and display
/// - Tracking current page number and navigation
/// - Handling bookmarked pages persistence
/// - Managing screen brightness and tutorial states
/// - Coordinating with advertisement system
/// - Providing Surah and Juz reference information
class QuranKareemBloc extends Bloc<QuranKareemEvent, QuranKareemState> {
  /// Controller for managing the PDF document display and navigation.
  ///
  /// This controller is responsible for rendering the Quran PDF pages
  /// and handling page transitions.
  PdfController? pdfController;

  /// The current page number being displayed in the Quran.
  ///
  /// This field tracks the active page number (1-based indexing) and is used
  /// for navigation, bookmarking, and determining Surah/Juz references.
  int currentPageNumber = 0;

  /// Creates a new [QuranKareemBloc] instance.
  ///
  /// Initializes the BLoC with default state and sets up event handlers
  /// for all supported events. Also triggers the initialization process
  /// to load the PDF and restore user preferences.
  QuranKareemBloc() : super(const QuranKareemState()) {
    on<_ShowHideHelpBar>(_showHideHelpBar);
    on<_UpdatePageCount>(_updatePageCount);
    on<_UpdateSorahName>(_updateSorahName);
    on<_UpdateJozo2Name>(_updateJozo2Name);
    on<_UpdateSidePage>(_updateSidePage);
    on<_UpdateBookMarkedPages>(_updateBookMarkedPages);
    on<_UpdateScreenBrigtness>(_updateScreenBrigtness);
    on<_UpdateScreenTutorial>(_updateScreenTutorial);
    on<_UpdateRewardedAd>(_updateRewardedAd);
    on<_UpdateReadPDFFile>(_updateReadPDFFile);

    initialize();
  }

  /// Initializes the Quran Kareem BLoC with necessary setup operations.
  ///
  /// This method performs the initial setup required for the Quran reading
  /// interface including:
  /// - Loading the PDF document from storage
  /// - Restoring bookmarked pages from local database
  /// - Setting up rewarded advertisements
  /// - Updating the initial state with loaded data
  Future<void> initialize() async {
    await _setupFirstInitialPDF();
    _loadBookmarkedPages();
    await RewarderAds.createRewardedAd();
    add(QuranKareemEvent.updateRewardedAd(RewarderAds.mainRewardedAd != null));
  }

  // Load the initial PDF
  Future<void> _setupFirstInitialPDF() async {
    final pageNumber = locator<IslamPreferences>().getValue(
      key: DatabaseFieldQuranCopyConstant.quranKaremLastPageNumber,
      defaultValue: "1",
    );

    final filePath = await locator<LoadFileFromDocumentUseCase>().call();

    if (filePath == null || filePath.isEmpty) {
      debugPrint("No print name found in database.");
      return;
    }
    final file = File(filePath);

    if (file.existsSync()) {
      debugPrint("file exists at: ${file.path}");
      final int intPageNumber = int.parse(pageNumber);

      pdfController = PdfController(
        viewportFraction: 1.1,
        document: PdfDocument.openFile(file.path),
      )..initialPage = intPageNumber;

      add(QuranKareemEvent.updateReadPDFFile(file.path));
      add(QuranKareemEvent.updatePageCount(intPageNumber));
    } else {
      debugPrint("file does NOT exist at: ${file.path}");
    }
  }

  // Load bookmarked pages from local storage
  void _loadBookmarkedPages() {
    final List<dynamic> bookMarkedPages = locator<IslamPreferences>().getValue(
      key: DatabaseFieldQuranCopyConstant.quranKaremBookMarkList,
      defaultValue: [],
    );

    if (bookMarkedPages.isNotEmpty) {
      final intList = List<int>.from(bookMarkedPages);
      add(QuranKareemEvent.updateBookMarkedPages(intList));
    }
  }

  /// Toggles the visibility of the help bar in the Quran reading interface.
  ///
  /// This method switches the current help bar visibility state and marks
  /// the tutorial as shown. It's typically called when the user taps on
  /// the screen to show or hide the navigation and control elements.
  void changeHelpBarShowingStatus() {
    final status = state.showHelpBar;
    add(QuranKareemEvent.showHideHelpBar(!status));
    add(QuranKareemEvent.updateScreenTutorial(true));
  }

  // Event Handlers
  FutureOr<void> _showHideHelpBar(
    _ShowHideHelpBar event,
    Emitter<QuranKareemState> emit,
  ) {
    FirebaseAnalyticsRepository.logEvent(name: "QuranShowHideHelpBar");
    emit(state.copyWith(showHelpBar: event.status));
  }

  FutureOr<void> _updatePageCount(
    _UpdatePageCount event,
    Emitter<QuranKareemState> emit,
  ) async {
    currentPageNumber = event.pageCount;
    emit(state.copyWith(pageCount: currentPageNumber));

    final sorahName =
        QuranReferancesUsecase.getSurahReferenceNameFromPageNumber(
          currentPageNumber,
        );
    final jozo2Name = QuranReferancesUsecase.getJuzNumberFromPageNumber(
      currentPageNumber,
    );
    add(QuranKareemEvent.updateSorahName(sorahName));
    add(QuranKareemEvent.updateJozo2Name(jozo2Name));

    add(QuranKareemEvent.updateSidePage(_getPageSide(currentPageNumber)));

    await locator<IslamPreferences>().setValue(
      key: DatabaseFieldQuranCopyConstant.quranKaremLastPageNumber,
      value: event.pageCount.toString(),
    );
  }

  // Get the page side (left or right)
  QuranKareemStatePageSideState _getPageSide(int pageNumber) =>
      pageNumber.isEven
      ? const QuranKareemStatePageSideStateLeft()
      : const QuranKareemStatePageSideStateRight();

  FutureOr<void> _updateSidePage(
    _UpdateSidePage event,
    Emitter<QuranKareemState> emit,
  ) {
    emit(state.copyWith(pageSide: event.side));
  }

  FutureOr<void> _updateBookMarkedPages(
    _UpdateBookMarkedPages event,
    Emitter<QuranKareemState> emit,
  ) async {
    await locator<IslamPreferences>().setValue(
      key: DatabaseFieldQuranCopyConstant.quranKaremBookMarkList,
      value: event.list,
    );
    emit(state.copyWith(bookmarkedPages: event.list));
  }

  FutureOr<void> _updateScreenBrigtness(
    _UpdateScreenBrigtness event,
    Emitter<QuranKareemState> emit,
  ) {
    emit(state.copyWith(brigtness: event.value));
  }

  FutureOr<void> _updateRewardedAd(
    _UpdateRewardedAd event,
    Emitter<QuranKareemState> emit,
  ) {
    emit(state.copyWith(rewardedAdExists: event.value));
  }

  FutureOr<void> _updateReadPDFFile(
    _UpdateReadPDFFile event,
    Emitter<QuranKareemState> emit,
  ) {
    add(QuranKareemEvent.showHideHelpBar(true));
    emit(state.copyWith(sourceFileOfPDF: event.value));
  }

  FutureOr<void> _updateSorahName(
    _UpdateSorahName event,
    Emitter<QuranKareemState> emit,
  ) {
    emit(state.copyWith(sorahName: event.value));
  }

  FutureOr<void> _updateJozo2Name(
    _UpdateJozo2Name event,
    Emitter<QuranKareemState> emit,
  ) {
    emit(state.copyWith(jozo2Name: event.value));
  }

  FutureOr<void> _updateScreenTutorial(
    _UpdateScreenTutorial event,
    Emitter<QuranKareemState> emit,
  ) {
    emit(state.copyWith(tutorialShown: event.value));
  }
}
