import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:islam_app/utils/constants/database_constant.dart';
import 'package:pdfx/pdfx.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

part 'quran_kareem_event.dart';
part 'quran_kareem_state.dart';
part 'quran_kareem_bloc.freezed.dart';

class QuranKareemBloc extends Bloc<QuranKareemEvent, QuranKareemState> {
  final box = Hive.box(DatabaseBoxConstant.userInfo);
  final List<int> _pageToSurah = _initializePageToSurah();
  final Map<int, int> _pageToJuz = _initializePageToJuz();

  QuranKareemBloc() : super(const QuranKareemState()) {
    on<_ShowHideHelpBar>(_showHideHelpBar);
    on<_UpdatePageCount>(_updatePageCount);
    on<_UpdateSorahReferanceNumber>(_updateSorahReferanceNumber);
    on<_UpdateJozo2ReferanceNumber>(_updateJozo2ReferanceNumber);
    on<_UpdateSidePage>(_updateSidePage);
  }

  PdfController pageController() {
    final pageNumber = box.get(DatabaseFieldConstant.quranKaremLastPageNumber,
        defaultValue: 1);
    add(QuranKareemEvent.updatePageCount(pageNumber));

    return PdfController(
      initialPage: pageNumber,
      viewportFraction: 1.1,
      document: PdfDocument.openAsset('assets/pdf/quran/arabic-madina.pdf'),
    );
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
        _getSurahName(event.pageCount)));
    add(QuranKareemEvent.updateJozo2ReferanceNumber(
        _getJuzName(event.pageCount)));
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

  int _getSurahName(int pageNumber) {
    return _pageToSurah
        .where((entry) => entry <= pageNumber)
        .reduce((prev, next) => prev > next ? prev : next);
  }

  int _getJuzName(int pageNumber) {
    return _pageToJuz.entries
        .where((entry) => entry.key <= pageNumber)
        .reduce((prev, next) => prev.key > next.key ? prev : next)
        .value;
  }

  PageSide _getPageSide(int pageNumber) {
    return pageNumber.isEven ? PageSide.left : PageSide.right;
  }

  FutureOr<void> _updateSidePage(
      _UpdateSidePage event, Emitter<QuranKareemState> emit) {
    emit(state.copyWith(pageSide: event.side));
  }

  static Map<int, int> _initializePageToJuz() {
    return {
      1: 1,
      22: 2,
      42: 3,
      62: 4,
      82: 5,
      102: 6,
      121: 7,
      142: 8,
      162: 9,
      182: 10,
      201: 11,
      222: 12,
      242: 13,
      262: 14,
      282: 15,
      302: 16,
      322: 17,
      342: 18,
      362: 19,
      382: 20,
      402: 21,
      422: 22,
      442: 23,
      462: 24,
      482: 25,
      502: 26,
      522: 27,
      542: 28,
      562: 29,
      582: 30,
    };
  }

  static List<int> _initializePageToSurah() {
    return [
      1,
      2,
      50,
      77,
      106,
      128,
      151,
      177,
      187,
      208,
      221,
      235,
      249,
      255,
      262,
      267,
      282,
      293,
      305,
      312,
      322,
      332,
      342,
      350,
      359,
      367,
      377,
      385,
      396,
      404,
      411,
      415,
      418,
      428,
      434,
      440,
      446,
      452,
      458,
      467,
      477,
      483,
      489,
      496,
      499,
      502,
      507,
      511,
      515,
      518,
      520,
      523,
      526,
      528,
      531,
      534,
      537,
      542,
      545,
      549,
      551,
      553,
      554,
      556,
      558,
      560,
      562,
      564,
      566,
      568,
      570,
      572,
      574,
      575,
      577,
      578,
      580,
      582,
      583,
      584,
      586,
      587,
      589,
      590,
      591,
      592,
      593,
      594,
      595,
      596,
      597,
      598,
      599,
      600,
      601,
      602,
      603,
      604,
    ];
  }

  String getSorahName(
      {required BuildContext context, required int pageNumber}) {
    switch (pageNumber) {
      case 1:
        return AppLocalizations.of(context)!.quranSorahName1;
      case 2:
        return AppLocalizations.of(context)!.quranSorahName2;
      case 50:
        return AppLocalizations.of(context)!.quranSorahName3;
      case 77:
        return AppLocalizations.of(context)!.quranSorahName4;
      case 106:
        return AppLocalizations.of(context)!.quranSorahName5;
      case 128:
        return AppLocalizations.of(context)!.quranSorahName6;
      case 151:
        return AppLocalizations.of(context)!.quranSorahName7;
      case 177:
        return AppLocalizations.of(context)!.quranSorahName8;
      case 187:
        return AppLocalizations.of(context)!.quranSorahName9;
      case 208:
        return AppLocalizations.of(context)!.quranSorahName10;
      case 221:
        return AppLocalizations.of(context)!.quranSorahName11;
      case 235:
        return AppLocalizations.of(context)!.quranSorahName12;
      case 249:
        return AppLocalizations.of(context)!.quranSorahName13;
      case 255:
        return AppLocalizations.of(context)!.quranSorahName14;
      case 262:
        return AppLocalizations.of(context)!.quranSorahName15;
      case 267:
        return AppLocalizations.of(context)!.quranSorahName16;
      case 282:
        return AppLocalizations.of(context)!.quranSorahName17;
      case 293:
        return AppLocalizations.of(context)!.quranSorahName18;
      case 305:
        return AppLocalizations.of(context)!.quranSorahName19;
      case 312:
        return AppLocalizations.of(context)!.quranSorahName20;
      case 313:
        return AppLocalizations.of(context)!.quranSorahName21;
      case 322:
        return AppLocalizations.of(context)!.quranSorahName22;
      case 342:
        return AppLocalizations.of(context)!.quranSorahName23;
      case 350:
        return AppLocalizations.of(context)!.quranSorahName24;
      case 359:
        return AppLocalizations.of(context)!.quranSorahName25;
      case 367:
        return AppLocalizations.of(context)!.quranSorahName26;
      case 377:
        return AppLocalizations.of(context)!.quranSorahName27;
      case 385:
        return AppLocalizations.of(context)!.quranSorahName28;
      case 396:
        return AppLocalizations.of(context)!.quranSorahName29;
      case 404:
        return AppLocalizations.of(context)!.quranSorahName30;
      case 411:
        return AppLocalizations.of(context)!.quranSorahName31;
      case 415:
        return AppLocalizations.of(context)!.quranSorahName32;
      case 418:
        return AppLocalizations.of(context)!.quranSorahName33;
      case 428:
        return AppLocalizations.of(context)!.quranSorahName34;
      case 434:
        return AppLocalizations.of(context)!.quranSorahName35;
      case 440:
        return AppLocalizations.of(context)!.quranSorahName36;
      case 446:
        return AppLocalizations.of(context)!.quranSorahName37;
      case 452:
        return AppLocalizations.of(context)!.quranSorahName38;
      case 458:
        return AppLocalizations.of(context)!.quranSorahName39;
      case 467:
        return AppLocalizations.of(context)!.quranSorahName40;
      case 477:
        return AppLocalizations.of(context)!.quranSorahName41;
      case 483:
        return AppLocalizations.of(context)!.quranSorahName42;
      case 489:
        return AppLocalizations.of(context)!.quranSorahName43;
      case 496:
        return AppLocalizations.of(context)!.quranSorahName44;
      case 499:
        return AppLocalizations.of(context)!.quranSorahName45;
      case 502:
        return AppLocalizations.of(context)!.quranSorahName46;
      case 507:
        return AppLocalizations.of(context)!.quranSorahName47;
      case 511:
        return AppLocalizations.of(context)!.quranSorahName48;
      case 515:
        return AppLocalizations.of(context)!.quranSorahName49;
      case 518:
        return AppLocalizations.of(context)!.quranSorahName50;
      case 520:
        return AppLocalizations.of(context)!.quranSorahName51;
      case 523:
        return AppLocalizations.of(context)!.quranSorahName52;
      case 526:
        return AppLocalizations.of(context)!.quranSorahName53;
      case 528:
        return AppLocalizations.of(context)!.quranSorahName54;
      case 531:
        return AppLocalizations.of(context)!.quranSorahName55;
      case 534:
        return AppLocalizations.of(context)!.quranSorahName56;
      case 537:
        return AppLocalizations.of(context)!.quranSorahName57;
      case 542:
        return AppLocalizations.of(context)!.quranSorahName58;
      case 545:
        return AppLocalizations.of(context)!.quranSorahName59;
      case 549:
        return AppLocalizations.of(context)!.quranSorahName60;
      case 551:
        return AppLocalizations.of(context)!.quranSorahName61;
      case 553:
        return AppLocalizations.of(context)!.quranSorahName62;
      case 554:
        return AppLocalizations.of(context)!.quranSorahName63;
      case 556:
        return AppLocalizations.of(context)!.quranSorahName64;
      case 558:
        return AppLocalizations.of(context)!.quranSorahName65;
      case 560:
        return AppLocalizations.of(context)!.quranSorahName66;
      case 562:
        return AppLocalizations.of(context)!.quranSorahName67;
      case 564:
        return AppLocalizations.of(context)!.quranSorahName68;
      case 566:
        return AppLocalizations.of(context)!.quranSorahName69;
      case 568:
        return AppLocalizations.of(context)!.quranSorahName70;
      case 570:
        return AppLocalizations.of(context)!.quranSorahName71;
      case 572:
        return AppLocalizations.of(context)!.quranSorahName72;
      case 574:
        return AppLocalizations.of(context)!.quranSorahName73;
      case 575:
        return AppLocalizations.of(context)!.quranSorahName74;
      case 577:
        return AppLocalizations.of(context)!.quranSorahName75;
      case 578:
        return AppLocalizations.of(context)!.quranSorahName76;
      case 580:
        return AppLocalizations.of(context)!.quranSorahName77;
      case 582:
        return AppLocalizations.of(context)!.quranSorahName78;
      case 583:
        return AppLocalizations.of(context)!.quranSorahName79;
      case 584:
        return AppLocalizations.of(context)!.quranSorahName80;
      case 586:
        return AppLocalizations.of(context)!.quranSorahName81;
      case 587:
        return "${AppLocalizations.of(context)!.quranSorahName82} / ${AppLocalizations.of(context)!.quranSorahName83}";
      case 589:
        return AppLocalizations.of(context)!.quranSorahName84;
      case 590:
        return AppLocalizations.of(context)!.quranSorahName85;
      case 591:
        return "${AppLocalizations.of(context)!.quranSorahName86} / ${AppLocalizations.of(context)!.quranSorahName87}";
      case 592:
        return AppLocalizations.of(context)!.quranSorahName88;
      case 593:
        return AppLocalizations.of(context)!.quranSorahName89;
      case 594:
        return AppLocalizations.of(context)!.quranSorahName90;
      case 595:
        return "${AppLocalizations.of(context)!.quranSorahName91} / ${AppLocalizations.of(context)!.quranSorahName92}";
      case 596:
        return "${AppLocalizations.of(context)!.quranSorahName93} / ${AppLocalizations.of(context)!.quranSorahName94}";
      case 597:
        return "${AppLocalizations.of(context)!.quranSorahName95} / ${AppLocalizations.of(context)!.quranSorahName96}";
      case 598:
        return "${AppLocalizations.of(context)!.quranSorahName97} / ${AppLocalizations.of(context)!.quranSorahName98}";
      case 599:
        return "${AppLocalizations.of(context)!.quranSorahName99} / ${AppLocalizations.of(context)!.quranSorahName100}";
      case 600:
        return "${AppLocalizations.of(context)!.quranSorahName101} / ${AppLocalizations.of(context)!.quranSorahName102}";
      case 601:
        return "${AppLocalizations.of(context)!.quranSorahName103} / ${AppLocalizations.of(context)!.quranSorahName104} / ${AppLocalizations.of(context)!.quranSorahName105}";
      case 602:
        return "${AppLocalizations.of(context)!.quranSorahName106} / ${AppLocalizations.of(context)!.quranSorahName107} / ${AppLocalizations.of(context)!.quranSorahName108}";
      case 603:
        return "${AppLocalizations.of(context)!.quranSorahName109} / ${AppLocalizations.of(context)!.quranSorahName110} / ${AppLocalizations.of(context)!.quranSorahName111}";
      case 604:
        return "${AppLocalizations.of(context)!.quranSorahName112} / ${AppLocalizations.of(context)!.quranSorahName113} / ${AppLocalizations.of(context)!.quranSorahName114}";
      default:
        return "";
    }
  }
}
