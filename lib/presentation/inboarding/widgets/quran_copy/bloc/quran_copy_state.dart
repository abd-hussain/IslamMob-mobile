part of 'quran_copy_bloc.dart';

@freezed
class QuranCopyState with _$QuranCopyState {
  const factory QuranCopyState({
    List<QuranPrints>? listOfPrints,
    @Default(false) bool internetConnectionStauts,
    @Default([]) List<String> printsDownloading,
  }) = _QuranCopyState;
}
