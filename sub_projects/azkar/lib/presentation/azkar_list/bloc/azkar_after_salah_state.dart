part of 'azkar_after_salah_bloc.dart';

@freezed
class AzkarAfterSalahState with _$AzkarAfterSalahState {
  const factory AzkarAfterSalahState({
    @Default(false) bool showAzkarView,
    @Default([]) List<AzkarModel> azkarList,
  }) = _AzkarAfterSalahState;
}
