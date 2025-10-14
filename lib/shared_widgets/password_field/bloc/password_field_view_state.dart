part of 'password_field_view_bloc.dart';

@freezed
abstract class PasswordFieldViewState with _$PasswordFieldViewState {
  const factory PasswordFieldViewState({
    @Default(false) bool showPasswordTextInTheField,
  }) = _PasswordFieldViewState;
}
