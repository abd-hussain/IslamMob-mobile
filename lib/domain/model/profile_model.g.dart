// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) =>
    _ProfileModel(
      country: json['country'] as String?,
      dateOfBirth: json['dateOfBirth'] as String?,
      fullName: json['fullName'] as String?,
      gender: json['gender'] as String?,
      profilePic: json['profilePic'] as String?,
      uid: json['uid'] as String?,
      signInMethod: json['signInMethod'] as String?,
      emailAddress: json['emailAddress'] as String?,
      password: json['password'] as String?,
      countryFlag: json['countryFlag'] as String?,
    );

Map<String, dynamic> _$ProfileModelToJson(_ProfileModel instance) =>
    <String, dynamic>{
      'country': instance.country,
      'dateOfBirth': instance.dateOfBirth,
      'fullName': instance.fullName,
      'gender': instance.gender,
      'profilePic': instance.profilePic,
      'uid': instance.uid,
      'signInMethod': instance.signInMethod,
      'emailAddress': instance.emailAddress,
      'password': instance.password,
      'countryFlag': instance.countryFlag,
    };
