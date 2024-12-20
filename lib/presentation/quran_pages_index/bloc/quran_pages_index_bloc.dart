import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:islam_app/presentation/quran_pages_index/widgets/sub_widgets/sworah_tile_view.dart';
import 'package:islam_app/core/constants/database_constant.dart';

part 'quran_pages_index_event.dart';
part 'quran_pages_index_state.dart';
part 'quran_pages_index_bloc.freezed.dart';

class QuranPagesIndexBloc
    extends Bloc<QuranPagesIndexEvent, QuranPagesIndexState> {
  QuranPagesIndexBloc() : super(const QuranPagesIndexState()) {
    on<_UpdateSelectedTab>(_updateSelectedTab);
    _loadBookmarkedPages();
  }

  final Box _box = Hive.box(DatabaseBoxConstant.userInfo);
  List<int> bookmarkedPages = [];

  /// Loads the list of bookmarked pages from persistent storage.
  void _loadBookmarkedPages() {
    final List<dynamic> storedBookmarks = _box.get(
        DatabaseFieldQuranCopyConstant.quranKaremBookMarkList,
        defaultValue: []);
    if (storedBookmarks.isNotEmpty) {
      bookmarkedPages = storedBookmarks.cast<int>();
    }
  }

  /// Returns a list of all Surah names in the current locale.
  List<String> getAllSurahNames({required BuildContext context}) => [
        AppLocalizations.of(context)!.quranSorahName1,
        AppLocalizations.of(context)!.quranSorahName2,
        AppLocalizations.of(context)!.quranSorahName3,
        AppLocalizations.of(context)!.quranSorahName4,
        AppLocalizations.of(context)!.quranSorahName5,
        AppLocalizations.of(context)!.quranSorahName6,
        AppLocalizations.of(context)!.quranSorahName7,
        AppLocalizations.of(context)!.quranSorahName8,
        AppLocalizations.of(context)!.quranSorahName9,
        AppLocalizations.of(context)!.quranSorahName10,
        AppLocalizations.of(context)!.quranSorahName11,
        AppLocalizations.of(context)!.quranSorahName12,
        AppLocalizations.of(context)!.quranSorahName13,
        AppLocalizations.of(context)!.quranSorahName14,
        AppLocalizations.of(context)!.quranSorahName15,
        AppLocalizations.of(context)!.quranSorahName16,
        AppLocalizations.of(context)!.quranSorahName17,
        AppLocalizations.of(context)!.quranSorahName18,
        AppLocalizations.of(context)!.quranSorahName19,
        AppLocalizations.of(context)!.quranSorahName20,
        AppLocalizations.of(context)!.quranSorahName21,
        AppLocalizations.of(context)!.quranSorahName22,
        AppLocalizations.of(context)!.quranSorahName23,
        AppLocalizations.of(context)!.quranSorahName24,
        AppLocalizations.of(context)!.quranSorahName25,
        AppLocalizations.of(context)!.quranSorahName26,
        AppLocalizations.of(context)!.quranSorahName27,
        AppLocalizations.of(context)!.quranSorahName28,
        AppLocalizations.of(context)!.quranSorahName29,
        AppLocalizations.of(context)!.quranSorahName30,
        AppLocalizations.of(context)!.quranSorahName31,
        AppLocalizations.of(context)!.quranSorahName32,
        AppLocalizations.of(context)!.quranSorahName33,
        AppLocalizations.of(context)!.quranSorahName34,
        AppLocalizations.of(context)!.quranSorahName35,
        AppLocalizations.of(context)!.quranSorahName36,
        AppLocalizations.of(context)!.quranSorahName37,
        AppLocalizations.of(context)!.quranSorahName38,
        AppLocalizations.of(context)!.quranSorahName39,
        AppLocalizations.of(context)!.quranSorahName40,
        AppLocalizations.of(context)!.quranSorahName41,
        AppLocalizations.of(context)!.quranSorahName42,
        AppLocalizations.of(context)!.quranSorahName43,
        AppLocalizations.of(context)!.quranSorahName44,
        AppLocalizations.of(context)!.quranSorahName45,
        AppLocalizations.of(context)!.quranSorahName46,
        AppLocalizations.of(context)!.quranSorahName47,
        AppLocalizations.of(context)!.quranSorahName48,
        AppLocalizations.of(context)!.quranSorahName49,
        AppLocalizations.of(context)!.quranSorahName50,
        AppLocalizations.of(context)!.quranSorahName51,
        AppLocalizations.of(context)!.quranSorahName52,
        AppLocalizations.of(context)!.quranSorahName53,
        AppLocalizations.of(context)!.quranSorahName54,
        AppLocalizations.of(context)!.quranSorahName55,
        AppLocalizations.of(context)!.quranSorahName56,
        AppLocalizations.of(context)!.quranSorahName57,
        AppLocalizations.of(context)!.quranSorahName58,
        AppLocalizations.of(context)!.quranSorahName59,
        AppLocalizations.of(context)!.quranSorahName60,
        AppLocalizations.of(context)!.quranSorahName61,
        AppLocalizations.of(context)!.quranSorahName62,
        AppLocalizations.of(context)!.quranSorahName63,
        AppLocalizations.of(context)!.quranSorahName64,
        AppLocalizations.of(context)!.quranSorahName65,
        AppLocalizations.of(context)!.quranSorahName66,
        AppLocalizations.of(context)!.quranSorahName67,
        AppLocalizations.of(context)!.quranSorahName68,
        AppLocalizations.of(context)!.quranSorahName69,
        AppLocalizations.of(context)!.quranSorahName70,
        AppLocalizations.of(context)!.quranSorahName71,
        AppLocalizations.of(context)!.quranSorahName72,
        AppLocalizations.of(context)!.quranSorahName73,
        AppLocalizations.of(context)!.quranSorahName74,
        AppLocalizations.of(context)!.quranSorahName75,
        AppLocalizations.of(context)!.quranSorahName76,
        AppLocalizations.of(context)!.quranSorahName77,
        AppLocalizations.of(context)!.quranSorahName78,
        AppLocalizations.of(context)!.quranSorahName79,
        AppLocalizations.of(context)!.quranSorahName80,
        AppLocalizations.of(context)!.quranSorahName81,
        AppLocalizations.of(context)!.quranSorahName82,
        AppLocalizations.of(context)!.quranSorahName83,
        AppLocalizations.of(context)!.quranSorahName84,
        AppLocalizations.of(context)!.quranSorahName85,
        AppLocalizations.of(context)!.quranSorahName86,
        AppLocalizations.of(context)!.quranSorahName87,
        AppLocalizations.of(context)!.quranSorahName88,
        AppLocalizations.of(context)!.quranSorahName89,
        AppLocalizations.of(context)!.quranSorahName90,
        AppLocalizations.of(context)!.quranSorahName91,
        AppLocalizations.of(context)!.quranSorahName92,
        AppLocalizations.of(context)!.quranSorahName93,
        AppLocalizations.of(context)!.quranSorahName94,
        AppLocalizations.of(context)!.quranSorahName95,
        AppLocalizations.of(context)!.quranSorahName96,
        AppLocalizations.of(context)!.quranSorahName97,
        AppLocalizations.of(context)!.quranSorahName98,
        AppLocalizations.of(context)!.quranSorahName99,
        AppLocalizations.of(context)!.quranSorahName100,
        AppLocalizations.of(context)!.quranSorahName101,
        AppLocalizations.of(context)!.quranSorahName102,
        AppLocalizations.of(context)!.quranSorahName103,
        AppLocalizations.of(context)!.quranSorahName104,
        AppLocalizations.of(context)!.quranSorahName105,
        AppLocalizations.of(context)!.quranSorahName106,
        AppLocalizations.of(context)!.quranSorahName107,
        AppLocalizations.of(context)!.quranSorahName108,
        AppLocalizations.of(context)!.quranSorahName109,
        AppLocalizations.of(context)!.quranSorahName110,
        AppLocalizations.of(context)!.quranSorahName111,
        AppLocalizations.of(context)!.quranSorahName112,
        AppLocalizations.of(context)!.quranSorahName113,
        AppLocalizations.of(context)!.quranSorahName114,
      ];

  /// Returns a list of all Juz names in the current locale.
  List<String> getAllJuzNames({required BuildContext context}) => [
        AppLocalizations.of(context)!.jusone,
        AppLocalizations.of(context)!.justwo,
        AppLocalizations.of(context)!.justhree,
        AppLocalizations.of(context)!.jusfour,
        AppLocalizations.of(context)!.jusfive,
        AppLocalizations.of(context)!.jussix,
        AppLocalizations.of(context)!.jusseven,
        AppLocalizations.of(context)!.juseight,
        AppLocalizations.of(context)!.jusnine,
        AppLocalizations.of(context)!.justen,
        AppLocalizations.of(context)!.juseleven,
        AppLocalizations.of(context)!.justwelve,
        AppLocalizations.of(context)!.justhirteen,
        AppLocalizations.of(context)!.jusfourteen,
        AppLocalizations.of(context)!.jusfifteen,
        AppLocalizations.of(context)!.jussixteen,
        AppLocalizations.of(context)!.jusseventeen,
        AppLocalizations.of(context)!.juseightteen,
        AppLocalizations.of(context)!.jusnineteen,
        AppLocalizations.of(context)!.justtwenty,
        AppLocalizations.of(context)!.justwentyone,
        AppLocalizations.of(context)!.justwentytwo,
        AppLocalizations.of(context)!.justwentythree,
        AppLocalizations.of(context)!.justwentyfour,
        AppLocalizations.of(context)!.justwentyfive,
        AppLocalizations.of(context)!.justwentysix,
        AppLocalizations.of(context)!.justwentyseven,
        AppLocalizations.of(context)!.justwentyeight,
        AppLocalizations.of(context)!.justwentynine,
        AppLocalizations.of(context)!.justhirty,
      ];

  /// Returns `SowrahType.makyeh` or `SowrahType.madanyeh`.
  SowrahType getSurahType(
      {required BuildContext context, required String surahName}) {
    final madaniyahSurahs = [
      AppLocalizations.of(context)!.quranSorahName2,
      AppLocalizations.of(context)!.quranSorahName3,
      AppLocalizations.of(context)!.quranSorahName4,
      AppLocalizations.of(context)!.quranSorahName5,
      AppLocalizations.of(context)!.quranSorahName8,
      AppLocalizations.of(context)!.quranSorahName9,
      AppLocalizations.of(context)!.quranSorahName13,
      AppLocalizations.of(context)!.quranSorahName15,
      AppLocalizations.of(context)!.quranSorahName24,
      AppLocalizations.of(context)!.quranSorahName33,
      AppLocalizations.of(context)!.quranSorahName47,
      AppLocalizations.of(context)!.quranSorahName48,
      AppLocalizations.of(context)!.quranSorahName49,
      AppLocalizations.of(context)!.quranSorahName55,
      AppLocalizations.of(context)!.quranSorahName57,
      AppLocalizations.of(context)!.quranSorahName58,
      AppLocalizations.of(context)!.quranSorahName59,
      AppLocalizations.of(context)!.quranSorahName60,
      AppLocalizations.of(context)!.quranSorahName61,
      AppLocalizations.of(context)!.quranSorahName62,
      AppLocalizations.of(context)!.quranSorahName63,
      AppLocalizations.of(context)!.quranSorahName64,
      AppLocalizations.of(context)!.quranSorahName65,
      AppLocalizations.of(context)!.quranSorahName66,
      AppLocalizations.of(context)!.quranSorahName76,
      AppLocalizations.of(context)!.quranSorahName98,
      AppLocalizations.of(context)!.quranSorahName99,
      AppLocalizations.of(context)!.quranSorahName110,
    ];

    return madaniyahSurahs.contains(surahName)
        ? SowrahType.madanyeh
        : SowrahType.makyeh;
  }

  FutureOr<void> _updateSelectedTab(
      _UpdateSelectedTab event, Emitter<QuranPagesIndexState> emit) {
    emit(state.copyWith(selectedIndex: event.index));
  }
}
