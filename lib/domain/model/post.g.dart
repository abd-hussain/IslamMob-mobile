// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostImpl _$$PostImplFromJson(Map<String, dynamic> json) => _$PostImpl(
  id: json['id'] as String?,
  createdDate: json['createdDate'] as String,
  ownerEmail: json['ownerEmail'] as String,
  upComments: (json['upComments'] as num).toInt(),
  downComments: (json['downComments'] as num).toInt(),
  content: json['content'] as String,
  category: json['category'] == null
      ? null
      : PostCategoryType.fromJson(json['category'] as Map<String, dynamic>),
  direction: PostDirection.fromJson(json['direction'] as Map<String, dynamic>),
  profileImageUrl: json['profileImageUrl'] as String,
  profilefullName: json['profilefullName'] as String,
  countryFlag: json['countryFlag'] as String,
  isReported: json['isReported'] as bool,
  isAddedToBookMark: json['isAddedToBookMark'] as bool,
  voteStatus: PostVoteType.fromJson(json['voteStatus'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$PostImplToJson(_$PostImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdDate': instance.createdDate,
      'ownerEmail': instance.ownerEmail,
      'upComments': instance.upComments,
      'downComments': instance.downComments,
      'content': instance.content,
      'category': instance.category,
      'direction': instance.direction,
      'profileImageUrl': instance.profileImageUrl,
      'profilefullName': instance.profilefullName,
      'countryFlag': instance.countryFlag,
      'isReported': instance.isReported,
      'isAddedToBookMark': instance.isAddedToBookMark,
      'voteStatus': instance.voteStatus,
    };

_$VoteIdlImpl _$$VoteIdlImplFromJson(Map<String, dynamic> json) =>
    _$VoteIdlImpl($type: json['runtimeType'] as String?);

Map<String, dynamic> _$$VoteIdlImplToJson(_$VoteIdlImpl instance) =>
    <String, dynamic>{'runtimeType': instance.$type};

_$VoteUpImpl _$$VoteUpImplFromJson(Map<String, dynamic> json) =>
    _$VoteUpImpl($type: json['runtimeType'] as String?);

Map<String, dynamic> _$$VoteUpImplToJson(_$VoteUpImpl instance) =>
    <String, dynamic>{'runtimeType': instance.$type};

_$VoteDownImpl _$$VoteDownImplFromJson(Map<String, dynamic> json) =>
    _$VoteDownImpl($type: json['runtimeType'] as String?);

Map<String, dynamic> _$$VoteDownImplToJson(_$VoteDownImpl instance) =>
    <String, dynamic>{'runtimeType': instance.$type};

_$PostCategoryTypeWallImpl _$$PostCategoryTypeWallImplFromJson(
  Map<String, dynamic> json,
) => _$PostCategoryTypeWallImpl($type: json['runtimeType'] as String?);

Map<String, dynamic> _$$PostCategoryTypeWallImplToJson(
  _$PostCategoryTypeWallImpl instance,
) => <String, dynamic>{'runtimeType': instance.$type};

_$PostCategoryTypeWatchlistImpl _$$PostCategoryTypeWatchlistImplFromJson(
  Map<String, dynamic> json,
) => _$PostCategoryTypeWatchlistImpl($type: json['runtimeType'] as String?);

Map<String, dynamic> _$$PostCategoryTypeWatchlistImplToJson(
  _$PostCategoryTypeWatchlistImpl instance,
) => <String, dynamic>{'runtimeType': instance.$type};

_$PostDirectionRTLImpl _$$PostDirectionRTLImplFromJson(
  Map<String, dynamic> json,
) => _$PostDirectionRTLImpl($type: json['runtimeType'] as String?);

Map<String, dynamic> _$$PostDirectionRTLImplToJson(
  _$PostDirectionRTLImpl instance,
) => <String, dynamic>{'runtimeType': instance.$type};

_$PostDirectionLTRImpl _$$PostDirectionLTRImplFromJson(
  Map<String, dynamic> json,
) => _$PostDirectionLTRImpl($type: json['runtimeType'] as String?);

Map<String, dynamic> _$$PostDirectionLTRImplToJson(
  _$PostDirectionLTRImpl instance,
) => <String, dynamic>{'runtimeType': instance.$type};
