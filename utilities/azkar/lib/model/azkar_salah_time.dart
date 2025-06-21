import 'package:freezed_annotation/freezed_annotation.dart';

part 'azkar_salah_time.freezed.dart';

/// Represents the different Islamic prayer times (Salah) for Azkar (remembrance) purposes.
///
/// This sealed class defines the various prayer times throughout the day when
/// specific Azkar (Islamic supplications and remembrances) should be recited.
@freezed
sealed class AzkarSalahTimeState with _$AzkarSalahTimeState {
  const factory AzkarSalahTimeState.fajir() = AzkarSalahTimeStateFajir;
  const factory AzkarSalahTimeState.sunrise() = AzkarSalahTimeStateSunrise;
  const factory AzkarSalahTimeState.zhur() = AzkarSalahTimeStateZhur;
  const factory AzkarSalahTimeState.asr() = AzkarSalahTimeStateAsr;
  const factory AzkarSalahTimeState.maghrib() = AzkarSalahTimeStateMaghrib;
  const factory AzkarSalahTimeState.isha() = AzkarSalahTimeStateIsha;
  const factory AzkarSalahTimeState.none() = AzkarSalahTimeStateNone;
}
