import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

@freezed
class ProfileModel with _$ProfileModel {
  factory ProfileModel({
    String? country,
    String? dateOfBirth,
    String? fullName,
    String? gender,
    String? profilePic,
    String? uid,
    String? signInMethod,
    String? emailAddress,
    String? password,
  }) = _ProfileModel;

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);
}
