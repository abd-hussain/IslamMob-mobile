import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:islam_app/utils/constants/database_constant.dart';
import 'package:islam_app/utils/quran_referances.dart';
import 'package:pdfx/pdfx.dart';

part 'quran_kareem_event.dart';
part 'quran_kareem_state.dart';
part 'quran_kareem_bloc.freezed.dart';

class QuranKareemBloc extends Bloc<QuranKareemEvent, QuranKareemState> {
  final box = Hive.box(DatabaseBoxConstant.userInfo);
  PdfController pdfController = PdfController(
    viewportFraction: 1.1,
    document: PdfDocument.openAsset('assets/pdf/quran_kareem.pdf'),
  );

  QuranKareemBloc() : super(const QuranKareemState()) {
    on<_ShowHideHelpBar>(_showHideHelpBar);
    on<_UpdatePageCount>(_updatePageCount);
    on<_UpdateSorahReferanceNumber>(_updateSorahReferanceNumber);
    on<_UpdateJozo2ReferanceNumber>(_updateJozo2ReferanceNumber);
    on<_UpdateSidePage>(_updateSidePage);
    on<_UpdateBookMarkedPages>(_updateBookMarkedPages);
    on<_UpdateScreenBrigtness>(_updateScreenBrigtness);

    _getListOfBookMarkedPages();
  }

  void _getListOfBookMarkedPages() {
    final List<dynamic> bookMarkedPages =
        box.get(DatabaseFieldConstant.quranKaremBookMarkList, defaultValue: []);

    if (bookMarkedPages.isNotEmpty) {
      List<int> intList = bookMarkedPages.cast<int>();
      add(QuranKareemEvent.updateBookMarkedPages(intList));
    }
  }

  PdfController pageController() {
    final pageNumber = box.get(DatabaseFieldConstant.quranKaremLastPageNumber,
        defaultValue: 1);
    add(QuranKareemEvent.updatePageCount(pageNumber));
    pdfController.initialPage = pageNumber;
    pdfController.document =
        PdfDocument.openAsset('assets/pdf/quran/arabic-madina.pdf');

    return pdfController;
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
        QuranReferances.getJuzName(event.pageCount)));
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
}
