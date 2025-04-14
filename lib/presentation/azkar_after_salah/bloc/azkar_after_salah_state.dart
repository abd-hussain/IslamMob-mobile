part of 'azkar_after_salah_bloc.dart';

@freezed
class AzkarAfterSalahState with _$AzkarAfterSalahState {
  const factory AzkarAfterSalahState({
    @Default(true) bool allowSound,
    @Default(true) bool allowVibration,
    @Default([]) List<AzkarModel> list,
    @Default(0) int selectedListIndex,
  }) = _AzkarAfterSalahState;
}
