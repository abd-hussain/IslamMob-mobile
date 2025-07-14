import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'save_cradintial_box_bloc.freezed.dart';
part 'save_cradintial_box_event.dart';
part 'save_cradintial_box_state.dart';

class SaveCradintialBoxBloc
    extends Bloc<SaveCradintialBoxEvent, SaveCradintialBoxState> {
  SaveCradintialBoxBloc() : super(const SaveCradintialBoxState()) {
    on<_SaveCradintialsChanged>(_saveCradintialsChanged);
  }

  void _saveCradintialsChanged(
    _SaveCradintialsChanged event,
    Emitter<SaveCradintialBoxState> emit,
  ) {
    emit(state.copyWith(saveCraditialEnabled: event.value));
  }
}
