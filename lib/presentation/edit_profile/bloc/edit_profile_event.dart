part of 'edit_profile_bloc.dart';

@freezed
class EditProfileEvent with _$EditProfileEvent {
  const factory EditProfileEvent.initialValues() = _InitialValues;
  const factory EditProfileEvent.updateButtonEnablity({
    required IslamMobLocalizations localizations,
    required String fullName,
    required String dateOfBirth,
    required String gender,
    required String country,
    required File? profilePic,
  }) = _UpdateButtonEnablity;
  const factory EditProfileEvent.editPressed({
    required IslamMobLocalizations localizations,
    required bool isUserChangeProfileImage,
    required String fullName,
    required String dateOfBirth,
    required String gender,
    required String country,
    required File? profilePic,
  }) = _EditPressed;
}
