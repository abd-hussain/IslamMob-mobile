part of 'quran_pages_list_bloc.dart';

@freezed
class QuranPagesListEvent with _$QuranPagesListEvent {
  factory QuranPagesListEvent.updateBookMarkedPages(List<int> list) =
      _UpdateBookMarkedPages;
}
