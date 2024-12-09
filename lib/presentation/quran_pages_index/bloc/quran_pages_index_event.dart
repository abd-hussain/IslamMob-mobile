part of 'quran_pages_index_bloc.dart';

@freezed
class QuranPagesIndexEvent with _$QuranPagesIndexEvent {
  factory QuranPagesIndexEvent.updateSelectedTab(int index) =
      _UpdateSelectedTab;
}
