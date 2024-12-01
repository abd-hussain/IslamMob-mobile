import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/models/app_model/azkar.dart';
import 'package:islam_app/screens/home_tab/bloc/home_tab_bloc.dart';

part 'azkar_event.dart';
part 'azkar_state.dart';
part 'azkar_bloc.freezed.dart';

class AzkarBloc extends Bloc<AzkarEvent, AzkarState> {
  final SalahTimeState salahType;

  AzkarBloc(this.salahType) : super(const AzkarState()) {
    on<_UpdateShowingAzkarStatus>(_handleUpdateShowingAzkarStatus);
    on<_ResetCounters>(_handleResetCounters);
    on<_IncrementCounter>(_handleIncrementCounter);

    _initializeAzkar(salahType);
  }

  // Constant for Bismillah
  final String besemellah = "بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم";

  final String aothBellah = "أَعُوذُ بِاللهِ مِنْ الشَّيْطَانِ الرَّجِيمِ";

  /// Initializes the Azkar list and triggers state update.
  void _initializeAzkar(SalahTimeState salahType) {
    add(AzkarEvent.updateShowingAzkarStatus(_buildAzkarList(salahType)));
  }

  /// Constructs the Azkar list.
  List<AzkarModel> _buildAzkarList(SalahTimeState salahType) {
    List<AzkarModel> list = [
      AzkarModel(id: 1, title: '', desc: "أَسْـتَغْفِرُ الله", maxCount: 3),
      AzkarModel(
        id: 2,
        title: '',
        desc:
            "اللّهُـمَّ أَنْـتَ السَّلامُ ، وَمِـنْكَ السَّلام ، تَبارَكْتَ يا ذا الجَـلالِ وَالإِكْـرام",
        maxCount: 1,
      ),
      AzkarModel(
        id: 3,
        title: '',
        desc:
            "لا إلهَ إلاّ اللّهُ وحدَهُ لا شريكَ لهُ، لهُ المُـلْكُ ولهُ الحَمْد، وهوَ على كلّ شَيءٍ قَدير، اللّهُـمَّ لا مانِعَ لِما أَعْطَـيْت، وَلا مُعْطِـيَ لِما مَنَـعْت، وَلا يَنْفَـعُ ذا الجَـدِّ مِنْـكَ الجَـد",
        maxCount: 1,
      ),
      AzkarModel(
        id: 4,
        title: '',
        desc:
            "لا إلهَ إلاّ اللّه, وحدَهُ لا شريكَ لهُ، لهُ الملكُ ولهُ الحَمد، وهوَ على كلّ شيءٍ قدير، لا حَـوْلَ وَلا قـوَّةَ إِلاّ بِاللهِ، لا إلهَ إلاّ اللّـه، وَلا نَعْـبُـدُ إِلاّ إيّـاه, لَهُ النِّعْـمَةُ وَلَهُ الفَضْل وَلَهُ الثَّـناءُ الحَـسَن، لا إلهَ إلاّ اللّهُ مخْلِصـينَ لَـهُ الدِّينَ وَلَوْ كَـرِهَ الكـافِرون",
        maxCount: 1,
      ),
      AzkarModel(
          id: 6,
          title: '',
          desc: "سُـبْحانَ اللهِ، والحَمْـدُ لله ، واللهُ أكْـبَر",
          maxCount: 33),
      AzkarModel(
          id: 9,
          title: '',
          desc:
              "لا إلهَ إلاّ اللّهُ وَحْـدَهُ لا شريكَ لهُ، لهُ الملكُ ولهُ الحَمْد، وهُوَ على كُلّ شَيءٍ قَـدير",
          maxCount: 1),
      AzkarModel(
        id: 10,
        title: besemellah,
        desc:
            "قُلْ هُوَ ٱللَّهُ أَحَدٌ، ٱللَّهُ ٱلصَّمَدُ، لَمْ يَلِدْ وَلَمْ يُولَدْ، وَلَمْ يَكُن لَّهُۥ كُفُوًا أَحَدٌۢ",
        maxCount: (salahType == const SalahTimeStateFajir() ||
                salahType == const SalahTimeStateMaghrib())
            ? 3
            : 1,
      ),
      AzkarModel(
        id: 11,
        title: besemellah,
        desc:
            "قُلْ أَعُوذُ بِرَبِّ ٱلْفَلَقِ، مِن شَرِّ مَا خَلَقَ، وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ، وَمِن شَرِّ ٱلنَّفَّٰثَٰتِ فِى ٱلْعُقَدِ، وَمِن شَرِّ حَاسِدٍ إِذَا حَسَدَ",
        maxCount: (salahType == const SalahTimeStateFajir() ||
                salahType == const SalahTimeStateMaghrib())
            ? 3
            : 1,
      ),
      AzkarModel(
        id: 12,
        title: besemellah,
        desc:
            "قُلْ أَعُوذُ بِرَبِّ ٱلنَّاسِ، مَلِكِ ٱلنَّاسِ، إِلَٰهِ ٱلنَّاسِ، مِن شَرِّ ٱلْوَسْوَاسِ ٱلْخَنَّاسِ، ٱلَّذِى يُوَسْوِسُ فِى صُدُورِ ٱلنَّاسِ، مِنَ ٱلْجِنَّةِ وَٱلنَّاسِ",
        maxCount: (salahType == const SalahTimeStateFajir() ||
                salahType == const SalahTimeStateMaghrib())
            ? 3
            : 1,
      ),
      AzkarModel(
        id: 13,
        title: aothBellah,
        desc:
            "اللّهُ لاَ إِلَـهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ. [آية الكرسى - البقرة 255]",
        maxCount: 1,
      ),
    ];

    if (salahType == const SalahTimeStateFajir() ||
        salahType == const SalahTimeStateMaghrib()) {
      list.add(AzkarModel(
        id: 14,
        title: "",
        desc:
            "لا إلهَ إلاّ اللّهُ وحْـدَهُ لا شريكَ لهُ، لهُ المُلكُ ولهُ الحَمْد، يُحيـي وَيُمـيتُ وهُوَ على كُلّ شيءٍ قدير",
        maxCount: 10,
      ));
    }

    if (salahType == const SalahTimeStateFajir()) {
      list.add(AzkarModel(
        id: 15,
        title: "",
        desc:
            "اللّهُـمَّ إِنِّـي أَسْأَلُـكَ عِلْمـاً نافِعـاً وَرِزْقـاً طَيِّـباً ، وَعَمَـلاً مُتَقَـبَّلاً",
        maxCount: 1,
      ));
    }

    if (salahType == const SalahTimeStateFajir() ||
        salahType == const SalahTimeStateMaghrib()) {
      list.add(AzkarModel(
        id: 16,
        title: "",
        desc: "اللَّهُمَّ أَجِرْنِي مِنْ النَّار",
        maxCount: 7,
      ));
    }

    list.add(AzkarModel(
      id: 17,
      title: "",
      desc:
          "اللَّهُمَّ أَعِنِّي عَلَى ذِكْرِكَ وَشُكْرِكَ وَحُسْنِ عِبَادَتِكَ",
      maxCount: 1,
    ));

    return list;
  }

  /// Checks if all counters are filled.
  bool isCounterFilled() =>
      state.azkarList.every((zeker) => zeker.currentCount >= zeker.maxCount);

  /// Updates the Azkar list in the state.
  FutureOr<void> _handleUpdateShowingAzkarStatus(
      _UpdateShowingAzkarStatus event, Emitter<AzkarState> emit) {
    emit(state.copyWith(azkarList: event.azkarList));
  }

  /// Resets all counters to 0 and updates the state.
  FutureOr<void> _handleResetCounters(
      _ResetCounters event, Emitter<AzkarState> emit) {
    final List<AzkarModel> resetList = state.azkarList
        .map(
          (zeker) => zeker.copyWith(currentCount: 0),
        )
        .toList();
    emit(state.copyWith(azkarList: resetList));
  }

  /// Increments the counter of a specific Azkar item.
  FutureOr<void> _handleIncrementCounter(
      _IncrementCounter event, Emitter<AzkarState> emit) {
    final List<AzkarModel> updatedList = state.azkarList.map((zeker) {
      if (zeker.id == event.zeker.id) {
        return zeker.copyWith(currentCount: event.zeker.currentCount);
      }
      return zeker;
    }).toList();
    emit(state.copyWith(azkarList: updatedList));
  }
}
