import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:firebase_manager/firebase_manager.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/domain/model/profile_model.dart';
import 'package:islam_app/domain/usecase/profile_info_usecase.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:path/path.dart' as path;

part 'edit_profile_bloc.freezed.dart';
part 'edit_profile_event.dart';
part 'edit_profile_state.dart';

class EditProfileBloc extends Bloc<EditProfileEvent, EditProfileState> {
  EditProfileBloc() : super(const EditProfileState()) {
    on<_InitialValues>(_initialValues);
    on<_UpdateButtonEnablity>(_updateButtonEnablity);
    on<_EditPressed>(_editPressed);
  }

  FutureOr<void> _initialValues(
    _InitialValues event,
    Emitter<EditProfileState> emit,
  ) async {
    final profileDetails = await ProfileInfoUsecase.getDetails();

    emit(
      state.copyWith(
        originalProfileInfo: profileDetails,
        processState: profileDetails != null
            ? const EditProfileProcessState.idl()
            : const EditProfileProcessState.error(
                "Error Fetching profile details",
              ),
      ),
    );
  }

  FutureOr<void> _updateButtonEnablity(
    _UpdateButtonEnablity event,
    Emitter<EditProfileState> emit,
  ) {
    final isValid =
        event.country.isNotEmpty &&
        event.dateOfBirth.isNotEmpty &&
        event.fullName.isNotEmpty &&
        event.gender.isNotEmpty;

    emit(
      state.copyWith(
        localCountry: event.country,
        localDateOfBirth: event.dateOfBirth,
        localFullName: event.fullName,
        localGender: event.gender,
        localImage: event.profilePic,
        isButtonEnabled: isValid,
      ),
    );
  }

  FutureOr<void> _editPressed(
    _EditPressed event,
    Emitter<EditProfileState> emit,
  ) async {
    emit(
      state.copyWith(
        errorMessage: "",
        processState: const EditProfileProcessState.loading(),
      ),
    );

    String? filePathInStorage;
    if (event.isUserChangeProfileImage) {
      if (event.profilePic != null) {
        filePathInStorage = await FirebaseStorageRepository.uploadFile(
          file: event.profilePic!,
          path: FirebaseCollectionConstants.registered_users,
          fileName:
              state.originalProfileInfo?.uid ??
              "" + path.extension(event.profilePic!.path),
        );
      } else {
        await FirebaseStorageRepository.deleteFile(
          "${FirebaseCollectionConstants.registered_users}/${state.originalProfileInfo?.uid ?? ""}",
        );
      }
    }

    await FirebaseFirestoreRepository.setData(
      options: FireStoreOptions<dynamic>(
        collectionName: FirebaseCollectionConstants.registered_users,
        docName: state.originalProfileInfo?.emailAddress ?? "",
        fromModel: {
          "uid": state.originalProfileInfo?.uid ?? "",
          "signInMethod": state.originalProfileInfo?.signInMethod ?? "",
          "fullName": event.fullName,
          "password": state.originalProfileInfo?.password ?? "",
          "gender": event.gender,
          "dateOfBirth": event.dateOfBirth,
          "country": event.country,
          "profilePic": event.isUserChangeProfileImage
              ? filePathInStorage
              : state.originalProfileInfo?.profilePic ?? "",
          "syncedAt": DateTime.now(),
        },
      ),
    );

    emit(state.copyWith(processState: const EditProfileProcessState.success()));
  }
}
