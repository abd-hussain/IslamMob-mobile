part of 'quran_pages_list_bloc.dart';

@freezed
class QuranPagesListEvent with _$QuranPagesListEvent {
  const factory QuranPagesListEvent.changeMarkerStatus({
    required bool status,
  }) = _ChangeMarkerStatus;
}
