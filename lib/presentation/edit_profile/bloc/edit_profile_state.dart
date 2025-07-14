part of 'edit_profile_bloc.dart';

@freezed
class EditProfileState with _$EditProfileState {
  const factory EditProfileState({
    @Default(EditProfileProcessState.loading())
    EditProfileProcessState processState,
    @Default(false) bool isButtonEnabled,
    @Default("") String errorMessage,
    ProfileModel? originalProfileInfo,
    File? localImage,
    String? localCountry,
    String? localDateOfBirth,
    String? localFullName,
    String? localGender,
  }) = _EditProfileState;
}

@freezed
sealed class EditProfileProcessState with _$EditProfileProcessState {
  const factory EditProfileProcessState.idl() = EditProfileProcessStateIdl;
  const factory EditProfileProcessState.loading() =
      EditProfileProcessStateLoading;
  const factory EditProfileProcessState.success() =
      EditProfileProcessStateSuccess;
  const factory EditProfileProcessState.error(String message) =
      EditProfileProcessStateError;
}
