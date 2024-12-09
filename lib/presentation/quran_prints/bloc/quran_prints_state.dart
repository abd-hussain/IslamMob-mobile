part of 'quran_prints_bloc.dart';

@freezed
class QuranPrintsState with _$QuranPrintsState {
  const factory QuranPrintsState({
    List<QuranPrints>? listOfPrints,
    @Default(false) bool internetConnectionStauts,
    @Default([]) List<String> printsDownloading,
  }) = _QuranPrintsState;
}
