import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islam_app/utils/sorah_type.dart';

class QuranReferances {
  static int getSurahName(int pageNumber) {
    return _pageToSurah()
        .where((entry) => entry <= pageNumber)
        .reduce((prev, next) => prev > next ? prev : next);
  }

  static int getJuzNumberFromPageNumber(int pageNumber) {
    return _pageToJuz()
        .entries
        .where((entry) => entry.key <= pageNumber)
        .reduce((prev, next) => prev.key > next.key ? prev : next)
        .value;
  }

  static Map<int, int> _pageToJuz() {
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

  static List<int> _pageToSurah() {
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
      453,
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
      585,
      586,
      587,
      588,
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

  static Widget getSorahTypeIcon(
      {required BuildContext context,
      required int pageNumber,
      required String sorahName}) {
    if (pageNumber == 598) {
      return Row(
        children: [
          SizedBox(
            width: 35,
            child: Image.asset("assets/images/sorah_type/macca.png"),
          ),
          SizedBox(
            width: 35,
            child: Image.asset("assets/images/sorah_type/madenah.png"),
          ),
        ],
      );
    } else if (pageNumber == 599) {
      return Row(
        children: [
          SizedBox(
            width: 35,
            child: Image.asset("assets/images/sorah_type/madenah.png"),
          ),
          SizedBox(
            width: 35,
            child: Image.asset("assets/images/sorah_type/macca.png"),
          ),
        ],
      );
    } else if (pageNumber == 603) {
      return Row(
        children: [
          SizedBox(
            width: 35,
            child: Image.asset("assets/images/sorah_type/macca.png"),
          ),
          SizedBox(
            width: 35,
            child: Image.asset("assets/images/sorah_type/madenah.png"),
          ),
          SizedBox(
            width: 35,
            child: Image.asset("assets/images/sorah_type/macca.png"),
          ),
        ],
      );
    } else {
      return SizedBox(
        width: 35,
        child: Image.asset(SorahTypeHelper.getSorahType(
                    context: context, sorahName: sorahName) ==
                SorahType.maccah
            ? "assets/images/sorah_type/macca.png"
            : "assets/images/sorah_type/madenah.png"),
      );
    }
  }

  static String getSorahName(
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
      case 322:
        return AppLocalizations.of(context)!.quranSorahName21;
      case 332:
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
      case 453:
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
      case 585:
        return AppLocalizations.of(context)!.quranSorahName80;
      case 586:
        return AppLocalizations.of(context)!.quranSorahName81;
      case 587:
        return "${AppLocalizations.of(context)!.quranSorahName82} / ${AppLocalizations.of(context)!.quranSorahName83}";
      case 588:
        return AppLocalizations.of(context)!.quranSorahName83;
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

  static List<String> getSurahNamesInRange({
    required BuildContext context,
    required int fromPage,
    required int toPage,
  }) {
    List<String> surahNames = [];

    for (int i = fromPage; i <= toPage; i++) {
      String surahName = getSorahName(context: context, pageNumber: i);
      if (surahName.isNotEmpty && !surahNames.contains(surahName)) {
        surahNames.add(surahName);
      }
    }

    return surahNames;
  }

  static String juzNameDependOnNumber(
      {required BuildContext context, required int index}) {
    switch (index) {
      case 1:
        return AppLocalizations.of(context)!.jusone;
      case 2:
        return AppLocalizations.of(context)!.justwo;
      case 3:
        return AppLocalizations.of(context)!.justhree;
      case 4:
        return AppLocalizations.of(context)!.jusfour;
      case 5:
        return AppLocalizations.of(context)!.jusfive;
      case 6:
        return AppLocalizations.of(context)!.jussix;
      case 7:
        return AppLocalizations.of(context)!.jusseven;
      case 8:
        return AppLocalizations.of(context)!.juseight;
      case 9:
        return AppLocalizations.of(context)!.jusnine;
      case 10:
        return AppLocalizations.of(context)!.justen;
      case 11:
        return AppLocalizations.of(context)!.juseleven;
      case 12:
        return AppLocalizations.of(context)!.justwelve;
      case 13:
        return AppLocalizations.of(context)!.justhirteen;
      case 14:
        return AppLocalizations.of(context)!.jusfourteen;
      case 15:
        return AppLocalizations.of(context)!.jusfifteen;
      case 16:
        return AppLocalizations.of(context)!.jussixteen;
      case 17:
        return AppLocalizations.of(context)!.jusseventeen;
      case 18:
        return AppLocalizations.of(context)!.juseightteen;
      case 19:
        return AppLocalizations.of(context)!.jusnineteen;
      case 20:
        return AppLocalizations.of(context)!.justtwenty;
      case 21:
        return AppLocalizations.of(context)!.justwentyone;
      case 22:
        return AppLocalizations.of(context)!.justwentytwo;
      case 23:
        return AppLocalizations.of(context)!.justwentythree;
      case 24:
        return AppLocalizations.of(context)!.justwentyfour;
      case 25:
        return AppLocalizations.of(context)!.justwentyfive;
      case 26:
        return AppLocalizations.of(context)!.justwentysix;
      case 27:
        return AppLocalizations.of(context)!.justwentyseven;
      case 28:
        return AppLocalizations.of(context)!.justwentyeight;
      case 29:
        return AppLocalizations.of(context)!.justwentynine;
      case 30:
        return AppLocalizations.of(context)!.justhirty;
      default:
        return "";
    }
  }

  static List<int> getPageRangeForJuz({required int juz}) {
    final pages = _pageToJuz();
    int? startPage;
    int? endPage;

    // Iterate through the map to find the range
    pages.forEach((page, j) {
      if (j == juz) {
        startPage = page;
      } else if (j == juz + 1) {
        endPage = page - 1;
      }
    });

    // If the endPage is null, it means it's the last Juz
    endPage ??= 604; // Assuming 604 is the last page of the Quran

    if (startPage != null) {
      return [startPage!, endPage!];
    } else {
      throw ArgumentError('Invalid Juz number');
    }
  }
}
