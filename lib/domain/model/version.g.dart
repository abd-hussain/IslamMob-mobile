// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'version.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppVersionModelImpl _$$AppVersionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AppVersionModelImpl(
      latestVersion: json['latestVersion'] as String?,
      minSupportedVersion: json['minSupportedVersion'] as String?,
    );

Map<String, dynamic> _$$AppVersionModelImplToJson(
        _$AppVersionModelImpl instance) =>
    <String, dynamic>{
      'latestVersion': instance.latestVersion,
      'minSupportedVersion': instance.minSupportedVersion,
    };
