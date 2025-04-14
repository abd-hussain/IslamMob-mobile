part of 'azkar_after_salah_view_bloc.dart';

@freezed
class AzkarAfterSalahViewState with _$AzkarAfterSalahViewState {
  const factory AzkarAfterSalahViewState({
    @Default(false) bool showAzkarView,
    @Default([]) List<AzkarModel> azkarList,
  }) = _AzkarAfterSalahViewState;
}
