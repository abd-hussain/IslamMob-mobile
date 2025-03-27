// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tasbeeh.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TasbeehModelImpl _$$TasbeehModelImplFromJson(Map<String, dynamic> json) =>
    _$TasbeehModelImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      desc: json['desc'] as String,
      maxCount: (json['maxCount'] as num).toInt(),
      currentCount: (json['currentCount'] as num).toInt(),
    );

Map<String, dynamic> _$$TasbeehModelImplToJson(_$TasbeehModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'desc': instance.desc,
      'maxCount': instance.maxCount,
      'currentCount': instance.currentCount,
    };
