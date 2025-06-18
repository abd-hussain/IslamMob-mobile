part of 'azkar_after_salah_bloc.dart';

@freezed
class AzkarAfterSalahState with _$AzkarAfterSalahState {
  const factory AzkarAfterSalahState({
    @Default([]) List<AzkarModel> azkarList,
    @Default(false) bool showAzkarView,
  }) = _AzkarAfterSalahState;
}
