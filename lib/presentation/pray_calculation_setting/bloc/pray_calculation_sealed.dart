import 'package:freezed_annotation/freezed_annotation.dart';

part 'pray_calculation_sealed.freezed.dart';

/// Represents the different types of Azan (call to prayer) times that can be edited for minute adjustments.
///
/// This sealed class defines the various Islamic prayer times and related time periods
/// that users can modify by adding or subtracting minutes in the prayer calculation settings.
/// Includes the five daily prayers (Fajr, Dhuhr, Asr, Maghrib, Isha), sunrise, midnight,
/// and the last third of the night.
@freezed
sealed class AzanTypeForEditMinState with _$AzanTypeForEditMinState {
  const factory AzanTypeForEditMinState.fajir() = Fajir;
  const factory AzanTypeForEditMinState.sunrise() = Sunrise;
  const factory AzanTypeForEditMinState.zhur() = Zhur;
  const factory AzanTypeForEditMinState.asr() = Asr;
  const factory AzanTypeForEditMinState.magrieb() = Magrieb;
  const factory AzanTypeForEditMinState.isha() = Isha;
  const factory AzanTypeForEditMinState.midnight() = Midnight;
  const factory AzanTypeForEditMinState.last3th() = Last3th;
}

/// Represents the different states for preview boxes in the prayer calculation setting.
///
/// This sealed class defines various prayer times and time display options
/// that can be previewed in the UI, including the five daily prayers,
/// sunrise, midnight, last third of the night, device time, and application time.
@freezed
sealed class PreviewBoxesState with _$PreviewBoxesState {
  const factory PreviewBoxesState.fajir() = PreviewBoxesFajir;
  const factory PreviewBoxesState.sunrise() = PreviewBoxesSunrise;
  const factory PreviewBoxesState.zhur() = PreviewBoxesZhur;
  const factory PreviewBoxesState.asr() = PreviewBoxesAsr;
  const factory PreviewBoxesState.magrieb() = PreviewBoxesMagrieb;
  const factory PreviewBoxesState.isha() = PreviewBoxesIsha;
  const factory PreviewBoxesState.midnight() = PreviewBoxesMidnight;
  const factory PreviewBoxesState.last3th() = PreviewBoxesLast3th;
  const factory PreviewBoxesState.deviceTime() = PreviewBoxesDeviceTime;
  const factory PreviewBoxesState.applicationTime() =
      PreviewBoxesApplicationTime;
}
