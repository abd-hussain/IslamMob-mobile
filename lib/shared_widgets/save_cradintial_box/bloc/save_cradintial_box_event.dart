part of 'save_cradintial_box_bloc.dart';

@freezed
abstract class SaveCradintialBoxEvent with _$SaveCradintialBoxEvent {
  const factory SaveCradintialBoxEvent.saveCradintialsChanged({
    required bool value,
  }) = _SaveCradintialsChanged;
}
