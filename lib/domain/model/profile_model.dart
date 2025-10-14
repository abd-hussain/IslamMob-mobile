import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

@freezed
abstract class ProfileModel with _$ProfileModel {
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
    String? countryFlag,
  }) = _ProfileModel;

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);
}
