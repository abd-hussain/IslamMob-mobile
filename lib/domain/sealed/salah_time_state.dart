import 'package:freezed_annotation/freezed_annotation.dart';
part 'freezed/salah_time_state.freezed.dart';

@freezed
sealed class SalahTimeState with _$SalahTimeState {
  const factory SalahTimeState.fajir() = SalahTimeStateFajir;
  const factory SalahTimeState.sunrise() = SalahTimeStateSunrise;
  const factory SalahTimeState.zhur() = SalahTimeStateZhur;
  const factory SalahTimeState.asr() = SalahTimeStateAsr;
  const factory SalahTimeState.maghrib() = SalahTimeStateMaghrib;
  const factory SalahTimeState.isha() = SalahTimeStateIsha;
  const factory SalahTimeState.none() = SalahTimeStateNone;
}
