part of 'tasbeeh_bloc.dart';

@freezed
class TasbeehState with _$TasbeehState {
  const factory TasbeehState({
    @Default(true) bool allowSound,
    @Default(true) bool allowVibration,
    @Default([]) List<TasbeehModel> list,
    @Default(0) int selectedListIndex,
  }) = _TasbeehState;
}
