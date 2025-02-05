import 'package:freezed_annotation/freezed_annotation.dart';
part 'pray_calculation_sealed.freezed.dart';

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
