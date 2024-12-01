part of 'azkar_bloc.dart';

@freezed
class AzkarState with _$AzkarState {
  const factory AzkarState({
    @Default(false) bool showAzkarView,
    @Default([]) List<AzkarModel> azkarList,
  }) = _AzkarState;
}
