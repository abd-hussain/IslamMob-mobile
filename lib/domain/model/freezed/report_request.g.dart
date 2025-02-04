// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../report_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReportRequestToFirebaseImpl _$$ReportRequestToFirebaseImplFromJson(
        Map<String, dynamic> json) =>
    _$ReportRequestToFirebaseImpl(
      content: json['content'] as String,
      attach1: json['attach1'] as String?,
      attach2: json['attach2'] as String?,
      attach3: json['attach3'] as String?,
    );

Map<String, dynamic> _$$ReportRequestToFirebaseImplToJson(
        _$ReportRequestToFirebaseImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'attach1': instance.attach1,
      'attach2': instance.attach2,
      'attach3': instance.attach3,
    };
