part of 'save_cradintial_box_bloc.dart';

@freezed
class SaveCradintialBoxState with _$SaveCradintialBoxState {
  const factory SaveCradintialBoxState({
    @Default(false) bool saveCraditialEnabled,
  }) = _SaveCradintialBoxState;
}
