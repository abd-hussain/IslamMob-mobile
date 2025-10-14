// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tasbeeh.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TasbeehModel _$TasbeehModelFromJson(Map<String, dynamic> json) =>
    _TasbeehModel(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      desc: json['desc'] as String,
      maxCount: (json['maxCount'] as num).toInt(),
      currentCount: (json['currentCount'] as num).toInt(),
    );

Map<String, dynamic> _$TasbeehModelToJson(_TasbeehModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'desc': instance.desc,
      'maxCount': instance.maxCount,
      'currentCount': instance.currentCount,
    };
