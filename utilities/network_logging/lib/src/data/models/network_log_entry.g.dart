// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_log_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NetworkLogEntry _$NetworkLogEntryFromJson(Map<String, dynamic> json) =>
    _NetworkLogEntry(
      id: json['id'] as String,
      url: json['url'] as String,
      method: json['method'] as String,
      requestTimestamp: DateTime.parse(json['requestTimestamp'] as String),
      responseTimestamp: json['responseTimestamp'] == null
          ? null
          : DateTime.parse(json['responseTimestamp'] as String),
      requestHeaders: json['requestHeaders'] as Map<String, dynamic>,
      requestBody: json['requestBody'] as String?,
      statusCode: (json['statusCode'] as num?)?.toInt(),
      responseHeaders: json['responseHeaders'] as Map<String, dynamic>?,
      responseBody: json['responseBody'] as String?,
      errorMessage: json['errorMessage'] as String?,
      duration: (json['duration'] as num?)?.toInt(),
      isSensitive: json['isSensitive'] as bool? ?? false,
      isBodyTruncated: json['isBodyTruncated'] as bool? ?? false,
      requestBodySize: (json['requestBodySize'] as num?)?.toInt(),
      responseBodySize: (json['responseBodySize'] as num?)?.toInt(),
    );

Map<String, dynamic> _$NetworkLogEntryToJson(
  _NetworkLogEntry instance,
) => <String, dynamic>{
  'id': instance.id,
  'url': instance.url,
  'method': instance.method,
  'requestTimestamp': instance.requestTimestamp.toIso8601String(),
  if (instance.responseTimestamp?.toIso8601String() case final value?)
    'responseTimestamp': value,
  'requestHeaders': instance.requestHeaders,
  if (instance.requestBody case final value?) 'requestBody': value,
  if (instance.statusCode case final value?) 'statusCode': value,
  if (instance.responseHeaders case final value?) 'responseHeaders': value,
  if (instance.responseBody case final value?) 'responseBody': value,
  if (instance.errorMessage case final value?) 'errorMessage': value,
  if (instance.duration case final value?) 'duration': value,
  'isSensitive': instance.isSensitive,
  'isBodyTruncated': instance.isBodyTruncated,
  if (instance.requestBodySize case final value?) 'requestBodySize': value,
  if (instance.responseBodySize case final value?) 'responseBodySize': value,
};
