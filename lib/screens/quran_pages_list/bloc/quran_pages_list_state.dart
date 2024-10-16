part of 'quran_pages_list_bloc.dart';

@freezed
class QuranPagesListState with _$QuranPagesListState {
  const factory QuranPagesListState({
    @Default([]) List<int> bookmarkedPages,
  }) = _QuranPagesListState;
}
