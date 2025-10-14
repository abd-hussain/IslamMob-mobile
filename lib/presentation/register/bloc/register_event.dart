part of 'register_bloc.dart';

@freezed
abstract class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.updateLoginButtonEnablity({
    required IslamMobLocalizations localizations,
    required String email,
    required String password,
    required String confirmPassword,
    required String fullName,
    required String dateOfBirth,
    required String gender,
    required String country,
    required String countryFlag,
    required File? profilePic,
  }) = _UpdateLoginButtonEnablity;
  const factory RegisterEvent.registerPressed({
    required String email,
    required String password,
    required String fullName,
    required String dateOfBirth,
    required String gender,
    required String country,
    required String countryFlag,
    required File? profilePic,
    required bool savedCradintial,
  }) = _RegisterPressed;
}
