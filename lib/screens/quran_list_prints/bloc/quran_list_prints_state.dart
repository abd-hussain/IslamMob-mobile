part of 'quran_list_prints_bloc.dart';

@freezed
class QuranListPrintsState with _$QuranListPrintsState {
  const factory QuranListPrintsState({
    List<QuranPrints>? listOfPrints,
    @Default(false) bool internetConnectionStauts,
  }) = _QuranListPrintsState;
}
