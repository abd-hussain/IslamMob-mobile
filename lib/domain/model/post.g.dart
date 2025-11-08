// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Post _$PostFromJson(Map<String, dynamic> json) => _Post(
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

Map<String, dynamic> _$PostToJson(_Post instance) => <String, dynamic>{
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

VoteIdl _$VoteIdlFromJson(Map<String, dynamic> json) =>
    VoteIdl($type: json['runtimeType'] as String?);

Map<String, dynamic> _$VoteIdlToJson(VoteIdl instance) => <String, dynamic>{
  'runtimeType': instance.$type,
};

VoteUp _$VoteUpFromJson(Map<String, dynamic> json) =>
    VoteUp($type: json['runtimeType'] as String?);

Map<String, dynamic> _$VoteUpToJson(VoteUp instance) => <String, dynamic>{
  'runtimeType': instance.$type,
};

VoteDown _$VoteDownFromJson(Map<String, dynamic> json) =>
    VoteDown($type: json['runtimeType'] as String?);

Map<String, dynamic> _$VoteDownToJson(VoteDown instance) => <String, dynamic>{
  'runtimeType': instance.$type,
};

_PostCategoryTypeWall _$PostCategoryTypeWallFromJson(
  Map<String, dynamic> json,
) => _PostCategoryTypeWall();

Map<String, dynamic> _$PostCategoryTypeWallToJson(
  _PostCategoryTypeWall instance,
) => <String, dynamic>{};

_PostDirectionRTL _$PostDirectionRTLFromJson(Map<String, dynamic> json) =>
    _PostDirectionRTL($type: json['runtimeType'] as String?);

Map<String, dynamic> _$PostDirectionRTLToJson(_PostDirectionRTL instance) =>
    <String, dynamic>{'runtimeType': instance.$type};

_PostDirectionLTR _$PostDirectionLTRFromJson(Map<String, dynamic> json) =>
    _PostDirectionLTR($type: json['runtimeType'] as String?);

Map<String, dynamic> _$PostDirectionLTRToJson(_PostDirectionLTR instance) =>
    <String, dynamic>{'runtimeType': instance.$type};
