// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'version.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppVersionModel _$AppVersionModelFromJson(Map<String, dynamic> json) =>
    _AppVersionModel(
      latestVersion: json['latestVersion'] as String?,
      minSupportedVersion: json['minSupportedVersion'] as String?,
    );

Map<String, dynamic> _$AppVersionModelToJson(_AppVersionModel instance) =>
    <String, dynamic>{
      'latestVersion': instance.latestVersion,
      'minSupportedVersion': instance.minSupportedVersion,
    };
