part of 'quran_parts_list_bloc.dart';

@freezed
class QuranPartsListEvent with _$QuranPartsListEvent {
  factory QuranPartsListEvent.updateBookMarkedPages(List<int> list) =
      _UpdateBookMarkedPages;
}
