import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed/salah_time_state.freezed.dart';

/// A sealed class representing different Islamic prayer times (Salah) and related states.
///
/// This sealed class defines the five daily prayers and additional time states
/// in Islamic practice:
///
/// **The Five Daily Prayers:**
/// - **Fajr**: The dawn prayer, performed before sunrise
/// - **Zuhr**: The noon prayer, performed after the sun passes its zenith
/// - **Asr**: The afternoon prayer, performed in the late afternoon
/// - **Maghrib**: The sunset prayer, performed just after sunset
/// - **Isha**: The night prayer, performed after twilight disappears
///
/// **Additional States:**
/// - **Sunrise**: The time when the sun rises (end of Fajr time)
/// - **None**: No specific prayer time (used for neutral states)
///
/// These prayer times are fundamental to Islamic worship and are calculated
/// based on the position of the sun throughout the day. Each prayer has
/// specific time windows during which it should be performed, and these
/// times vary based on geographical location and date.
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
