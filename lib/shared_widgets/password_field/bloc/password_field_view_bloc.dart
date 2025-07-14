import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'password_field_view_bloc.freezed.dart';
part 'password_field_view_event.dart';
part 'password_field_view_state.dart';

class PasswordFieldViewBloc
    extends Bloc<PasswordFieldViewEvent, PasswordFieldViewState> {
  PasswordFieldViewBloc() : super(const PasswordFieldViewState()) {
    on<_UpdatePasswordVisability>(_updatePasswordVisability);
  }

  void _updatePasswordVisability(
    _UpdatePasswordVisability event,
    Emitter<PasswordFieldViewState> emit,
  ) {
    emit(state.copyWith(showPasswordTextInTheField: event.value));
  }
}
