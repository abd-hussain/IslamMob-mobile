part of 'quran_pages_index_bloc.dart';

@freezed
class QuranPagesIndexState with _$QuranPagesIndexState {
  const factory QuranPagesIndexState({
    @Default(0) int selectedIndex,
  }) = _QuranPagesIndexState;
}
