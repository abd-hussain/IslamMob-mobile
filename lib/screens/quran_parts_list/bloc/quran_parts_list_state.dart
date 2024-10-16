part of 'quran_parts_list_bloc.dart';

@freezed
class QuranPartsListState with _$QuranPartsListState {
  const factory QuranPartsListState({
    @Default([]) List<int> bookmarkedPages,
  }) = _QuranPartsListState;
}
