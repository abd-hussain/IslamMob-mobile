import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:islam_app/utils/constants/database_constant.dart';
import 'package:pdfx/pdfx.dart';

part 'quran_kareem_event.dart';
part 'quran_kareem_state.dart';
part 'quran_kareem_bloc.freezed.dart';

class QuranKareemBloc extends Bloc<QuranKareemEvent, QuranKareemState> {
  QuranKareemBloc() : super(const QuranKareemState()) {
    on<_ShowHideHelpBar>(_showHideHelpBar);
    on<_UpdatePageCount>(_updatePageCount);
    on<_UpdateSorahName>(_updateSorahName);
    on<_UpdateJozo2Name>(_updateJozo2Name);
    on<_UpdateHezebNumber>(_updateHezebNumber);
    on<_UpdateSidePage>(_updateSidePage);
  }
  final box = Hive.box(DatabaseBoxConstant.userInfo);

  Map<int, String> pageToSurah = {
    1: 'Al-Fatiha',
    2: 'Al-Baqarah',
    50: 'Al-Imran',
    77: 'An-Nisa',
    106: 'Al-Ma\'idah',
    128: 'Al-An\'am',
    151: 'Al-A\'raf',
    177: 'Al-Anfal',
    187: 'At-Tawbah',
    208: 'Yunus',
    221: 'Hud',
    235: 'Yusuf',
    249: 'Ar-Ra\'d',
    255: 'Ibrahim',
    262: 'Al-Hijr',
    267: 'An-Nahl',
    282: 'Al-Isra',
    293: 'Al-Kahf',
    305: 'Maryam',
    312: 'Ta-Ha',
    322: 'Al-Anbiya',
    332: 'Al-Hajj',
    342: 'Al-Mu\'minun',
    350: 'An-Nur',
    359: 'Al-Furqan',
    367: 'Ash-Shu\'ara',
    377: 'An-Naml',
    385: 'Al-Qasas',
    396: 'Al-Ankabut',
    404: 'Ar-Rum',
    411: 'Luqman',
    415: 'As-Sajda',
    418: 'Al-Ahzab',
    428: 'Saba',
    434: 'Fatir',
    440: 'Ya-Sin',
    446: 'As-Saffat',
    452: 'Sad',
    458: 'Az-Zumar',
    467: 'Ghafir',
    477: 'Fussilat',
    483: 'Ash-Shura',
    489: 'Az-Zukhruf',
    496: 'Ad-Dukhan',
    499: 'Al-Jathiya',
    502: 'Al-Ahqaf',
    507: 'Muhammad',
    511: 'Al-Fath',
    515: 'Al-Hujurat',
    518: 'Qaf',
    520: 'Adh-Dhariyat',
    523: 'At-Tur',
    526: 'An-Najm',
    528: 'Al-Qamar',
    531: 'Ar-Rahman',
    534: 'Al-Waqi\'a',
    537: 'Al-Hadid',
    542: 'Al-Mujadila',
    545: 'Al-Hashr',
    549: 'Al-Mumtahina',
    551: 'As-Saff',
    553: 'Al-Jumu\'a',
    554: 'Al-Munafiqun',
    556: 'At-Taghabun',
    558: 'At-Talaq',
    560: 'At-Tahrim',
    562: 'Al-Mulk',
    564: 'Al-Qalam',
    566: 'Al-Haqqah',
    568: 'Al-Ma\'arij',
    570: 'Nuh',
    572: 'Al-Jinn',
    574: 'Al-Muzzammil',
    575: 'Al-Muddathir',
    577: 'Al-Qiyama',
    578: 'Al-Insan',
    580: 'Al-Mursalat',
    582: 'An-Naba',
    583: 'An-Nazi\'at',
    584: 'Abasa',
    586: 'At-Takwir',
    587: 'Al-Infitar / Al-Mutaffifin',
    589: 'Al-Inshiqaq',
    590: 'Al-Buruj',
    591: 'At-Tariq / Al-A\'la',
    592: 'Al-Ghashiyah',
    593: 'Al-Fajr',
    594: 'Al-Balad',
    595: 'Ash-Shams / Al-Lail',
    596: 'Ad-Duhaa / Ash-Sharh',
    597: 'At-Tin / Al-Alaq',
    598: 'Al-Qadr / Al-Bayyina',
    599: 'Az-Zalzalah / Al-Adiyat',
    600: 'Al-Qari\'ah / At-Takathur',
    601: 'Al-Asr / Al-Humazah / Al-Fil',
    602: 'Quraish / Al-Ma\'un / Al-Kawthar',
    603: 'Al-Kafirun / An-Nasr / Al-Masad',
    604: 'Al-Ikhlas / Al-Falaq / An-Nas',
  };

  Map<int, String> pageToJuz = {
    1: 'Juz\' 1',
    22: 'Juz\' 2',
    42: 'Juz\' 3',
    62: 'Juz\' 4',
    82: 'Juz\' 5',
    102: 'Juz\' 6',
    121: 'Juz\' 7',
    141: 'Juz\' 8',
    161: 'Juz\' 9',
    181: 'Juz\' 10',
    201: 'Juz\' 11',
    221: 'Juz\' 12',
    241: 'Juz\' 13',
    261: 'Juz\' 14',
    281: 'Juz\' 15',
    301: 'Juz\' 16',
    321: 'Juz\' 17',
    341: 'Juz\' 18',
    361: 'Juz\' 19',
    381: 'Juz\' 20',
    401: 'Juz\' 21',
    421: 'Juz\' 22',
    441: 'Juz\' 23',
    461: 'Juz\' 24',
    481: 'Juz\' 25',
    501: 'Juz\' 26',
    521: 'Juz\' 27',
    541: 'Juz\' 28',
    561: 'Juz\' 29',
    581: 'Juz\' 30',
  };

  PdfController pageController() {
    int pageNumber = 1;

    if (box.get(DatabaseFieldConstant.quranKaremLastPageNumber) != null) {
      pageNumber = box.get(DatabaseFieldConstant.quranKaremLastPageNumber);
    }
    add(QuranKareemEvent.updatePageCount(pageNumber));

    return PdfController(
      initialPage: pageNumber,
      viewportFraction: 1.1,
      document: PdfDocument.openAsset('assets/pdf/quran/arabic-madina.pdf'),
    );
  }

  FutureOr<void> _showHideHelpBar(_ShowHideHelpBar event, Emitter<QuranKareemState> emit) {
    emit(state.copyWith(showHelpBar: event.status));
  }

  FutureOr<void> _updatePageCount(_UpdatePageCount event, Emitter<QuranKareemState> emit) async {
    emit(state.copyWith(pageCount: event.pageCount));

    add(QuranKareemEvent.updateSorahName(_getSurahName(event.pageCount)));
    add(QuranKareemEvent.updateJozo2Name(_getJuzName(event.pageCount)));
    add(QuranKareemEvent.updateSidePage(_getPageSide(event.pageCount)));

    await box.put(DatabaseFieldConstant.quranKaremLastPageNumber, event.pageCount);
  }

  FutureOr<void> _updateSorahName(_UpdateSorahName event, Emitter<QuranKareemState> emit) {
    emit(state.copyWith(sorahName: event.name));
  }

  FutureOr<void> _updateJozo2Name(_UpdateJozo2Name event, Emitter<QuranKareemState> emit) {
    emit(state.copyWith(jozo2Name: event.name));
  }

  FutureOr<void> _updateHezebNumber(_UpdateHezebNumber event, Emitter<QuranKareemState> emit) {
    emit(state.copyWith(hezebNumber: event.number));
  }

  String _getSurahName(int pageNumber) {
    // Ensure the page number exists in the map or find the nearest page if exact match is not available
    if (pageToSurah.containsKey(pageNumber)) {
      return pageToSurah[pageNumber]!;
    } else {
      // If the page number is not directly found, find the nearest previous page
      int closestPage = pageToSurah.keys.where((page) => page <= pageNumber).reduce((a, b) => a > b ? a : b);
      return pageToSurah[closestPage]!;
    }
  }

  String _getJuzName(int pageNumber) {
    // Ensure the page number exists in the map or find the nearest page if exact match is not available
    if (pageToJuz.containsKey(pageNumber)) {
      return pageToJuz[pageNumber]!;
    } else {
      // If the page number is not directly found, find the nearest previous page
      int closestPage = pageToJuz.keys.where((page) => page <= pageNumber).reduce((a, b) => a > b ? a : b);
      return pageToJuz[closestPage]!;
    }
  }

  PageSide _getPageSide(int pageNumber) {
    if (pageNumber % 2 == 0) {
      return PageSide.left;
    } else {
      return PageSide.right;
    }
  }

  FutureOr<void> _updateSidePage(_UpdateSidePage event, Emitter<QuranKareemState> emit) {
    emit(state.copyWith(pageSide: event.side));
  }
}
