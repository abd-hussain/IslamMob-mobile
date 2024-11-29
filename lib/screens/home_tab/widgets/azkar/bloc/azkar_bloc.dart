import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'azkar_event.dart';
part 'azkar_state.dart';
part 'azkar_bloc.freezed.dart';

class AzkarBloc extends Bloc<AzkarEvent, AzkarState> {
  AzkarBloc() : super(const AzkarState()) {
    on<_UpdateShowingAzkarStatus>(_updateShowingAzkarStatus);
    on<_ResetCounters>(_resetCounters);
    on<_IncrementCounter>(_incrementCounter);
  }

  final String besemellah = "بِسۡمِ ٱللَّهِ ٱلرَّحۡمَٰنِ ٱلرَّحِيمِ";

  final List<String> azkarList = [
    'ٱسْتَغْفِرُ ٱللَّهَ',
    'ٱللَّهُمَّ أَنتَ ٱلسَّلَامُ، وَمِنكَ ٱلسَّلَامُ، تَبَارَكتَ يَا ذَا ٱلْجَلَالِ وَٱلْإِكْرَامِ، لَا إِلٰهَ إِلَّا ٱللَّهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ ٱلْمُلْكُ وَلَهُ ٱلْحَمْدُ وَهُوَ عَلَىٰ كُلِّ شَيْءٍ قَدِيرٌ، لَا حَوْلَ وَلَا قُوَّةَ إِلَّا بِٱللَّهِ، لَا إِلٰهَ إِلَّا ٱللَّهُ وَلَا نَعْبُدُ إِلَّا إِيَّاهُ، لَهُ ٱلنِّعْمَةُ وَلَهُ ٱلْفَضْلُ وَلَهُ ٱلثَّنَاءُ ٱلْحَسَنُ، لَا إِلٰهَ إِلَّا ٱللَّهُ مُخْلِصِينَ لَهُ ٱلدِّينَ وَلَوْ كَرِهَ ٱلْكَافِرُونَ، ٱللَّهُمَّ لَا مَانِعَ لِمَا أَعْطَيْتَ وَلَا مُعْطِيَ لِمَا مَنَعْتَ وَلَا يَنفَعُ ذَا ٱلْجَدِّ مِنْكَ ٱلْجَدُّ',
    'سُبْحَانَ اللَّهِ',
    'ٱلْحَمْدُ لِلَّهِ',
    'ٱللَّهُ أَكْبَرُ',
    'لَا إِلٰهَ إِلَّا ٱللَّهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ ٱلْمُلْكُ وَلَهُ ٱلْحَمْدُ وَهُوَ عَلَىٰ كُلِّ شَيْءٍ قَدِيرٌ',
    'لَا إِلٰهَ إِلَّا ٱللَّهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ ٱلْمُلْكُ وَلَهُ ٱلْحَمْدُ، يُحْيِي وَيُمِيتُ، وَهُوَ عَلَىٰ كُلِّ شَيْءٍ قَدِيرٌ',
    'اللَّهُ لَا إِلَهَ إِلَّا هُوَ الْحَيُّ الْقَيُّومُ لَا تَأْخُذُهُ سِنَةٌ وَلَا نَوْمٌ لَهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الْأَرْضِ مَنْ ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلَّا بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلَا يُحِيطُونَ بِشَيْءٍ مِنْ عِلْمِهِ إِلَّا بِمَا شَاءَ وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالْأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ',
    'قُلۡ هُوَ ٱللَّهُ أَحَدٌ * ٱللَّهُ ٱلصَّمَدُ * لَمۡ يَلِدۡ وَلَمۡ يُولَدۡ * وَلَمۡ يَكُن لَّهُۥ كُفُوًا أَحَدُۢ',
    'قُلۡ أَعُوذُ بِرَبِّ ٱلۡفَلَقِ * مِن شَرِّ مَا خَلَقَ * وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ * وَمِن شَرِّ ٱلنَّفَّٰثَٰتِ فِي ٱلۡعُقَدِ * وَمِن شَرِّ حَاسِدٍ إِذَا حَسَدَ',
    'قُلۡ أَعُوذُ بِرَبِّ ٱلنَّاسِ * مَلِكِ ٱلنَّاسِ * إِلَٰهِ ٱلنَّاسِ * مِن شَرِّ ٱلۡوَسۡوَاسِ ٱلۡخَنَّاسِ * ٱلَّذِي يُوَسۡوِسُ فِي صُدُورِ ٱلنَّاسِ * مِنَ ٱلۡجِنَّةِ وَٱلنَّاسِ',
  ];

  FutureOr<void> _updateShowingAzkarStatus(
      _UpdateShowingAzkarStatus event, Emitter<AzkarState> emit) {
    emit(state.copyWith(showAzkarView: event.status));
  }

  FutureOr<void> _incrementCounter(
      _IncrementCounter event, Emitter<AzkarState> emit) {
    final AzkarCounters? updatedCounters =
        _updateCounter(state.counters, event.counterIndex, 1);
    if (updatedCounters != null) {
      emit(state.copyWith(counters: updatedCounters));
    }
  }

  /// Helper method to update a specific counter dynamically
  AzkarCounters? _updateCounter(
      AzkarCounters counters, int counterIndex, int increment) {
    switch (counterIndex) {
      case 1:
        return counters.copyWith(counter1: counters.counter1 + increment);
      case 2:
        return counters.copyWith(counter2: counters.counter2 + increment);
      case 3:
        return counters.copyWith(counter3: counters.counter3 + increment);
      case 4:
        return counters.copyWith(counter4: counters.counter4 + increment);
      case 5:
        return counters.copyWith(counter5: counters.counter5 + increment);
      case 6:
        return counters.copyWith(counter6: counters.counter6 + increment);
      case 7:
        return counters.copyWith(counter7: counters.counter7 + increment);
      case 8:
        return counters.copyWith(counter8: counters.counter8 + increment);
      case 9:
        return counters.copyWith(counter9: counters.counter9 + increment);
      case 10:
        return counters.copyWith(counter10: counters.counter10 + increment);
      case 11:
        return counters.copyWith(counter11: counters.counter11 + increment);
      default:
        return null; // Invalid index, no update
    }
  }

  bool isCounterFilled() {
    return state.counters.counter1 == 3 &&
        state.counters.counter2 == 1 &&
        state.counters.counter3 == 33 &&
        state.counters.counter4 == 33 &&
        state.counters.counter5 == 33 &&
        state.counters.counter6 == 1 &&
        state.counters.counter7 == 1 &&
        state.counters.counter8 == 1 &&
        state.counters.counter9 == 1 &&
        state.counters.counter10 == 1 &&
        state.counters.counter11 == 1;
  }

  FutureOr<void> _resetCounters(
      _ResetCounters event, Emitter<AzkarState> emit) {
    emit(state.copyWith(counters: const AzkarCounters()));
  }
}
