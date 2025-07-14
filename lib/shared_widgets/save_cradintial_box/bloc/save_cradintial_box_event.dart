part of 'save_cradintial_box_bloc.dart';

@freezed
class SaveCradintialBoxEvent with _$SaveCradintialBoxEvent {
  const factory SaveCradintialBoxEvent.saveCradintialsChanged({
    required bool value,
  }) = _SaveCradintialsChanged;
}
