// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Post _$PostFromJson(Map<String, dynamic> json) {
  return _Post.fromJson(json);
}

/// @nodoc
mixin _$Post {
  String? get id => throw _privateConstructorUsedError;
  String get createdDate => throw _privateConstructorUsedError;
  String get ownerEmail => throw _privateConstructorUsedError;
  int get upComments => throw _privateConstructorUsedError;
  int get downComments => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  PostCategoryType? get category =>
      throw _privateConstructorUsedError; //Profile
  String get profileImageUrl => throw _privateConstructorUsedError;
  String get profilefullName => throw _privateConstructorUsedError;
  String get countryFlag => throw _privateConstructorUsedError; //Details
  bool get isReported => throw _privateConstructorUsedError;
  bool get isAddedToBookMark => throw _privateConstructorUsedError;
  PostVoteType get voteStatus => throw _privateConstructorUsedError;

  /// Serializes this Post to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostCopyWith<Post> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCopyWith<$Res> {
  factory $PostCopyWith(Post value, $Res Function(Post) then) =
      _$PostCopyWithImpl<$Res, Post>;
  @useResult
  $Res call({
    String? id,
    String createdDate,
    String ownerEmail,
    int upComments,
    int downComments,
    String content,
    PostCategoryType? category,
    String profileImageUrl,
    String profilefullName,
    String countryFlag,
    bool isReported,
    bool isAddedToBookMark,
    PostVoteType voteStatus,
  });

  $PostCategoryTypeCopyWith<$Res>? get category;
  $PostVoteTypeCopyWith<$Res> get voteStatus;
}

/// @nodoc
class _$PostCopyWithImpl<$Res, $Val extends Post>
    implements $PostCopyWith<$Res> {
  _$PostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdDate = null,
    Object? ownerEmail = null,
    Object? upComments = null,
    Object? downComments = null,
    Object? content = null,
    Object? category = freezed,
    Object? profileImageUrl = null,
    Object? profilefullName = null,
    Object? countryFlag = null,
    Object? isReported = null,
    Object? isAddedToBookMark = null,
    Object? voteStatus = null,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdDate: null == createdDate
                ? _value.createdDate
                : createdDate // ignore: cast_nullable_to_non_nullable
                      as String,
            ownerEmail: null == ownerEmail
                ? _value.ownerEmail
                : ownerEmail // ignore: cast_nullable_to_non_nullable
                      as String,
            upComments: null == upComments
                ? _value.upComments
                : upComments // ignore: cast_nullable_to_non_nullable
                      as int,
            downComments: null == downComments
                ? _value.downComments
                : downComments // ignore: cast_nullable_to_non_nullable
                      as int,
            content: null == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                      as String,
            category: freezed == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                      as PostCategoryType?,
            profileImageUrl: null == profileImageUrl
                ? _value.profileImageUrl
                : profileImageUrl // ignore: cast_nullable_to_non_nullable
                      as String,
            profilefullName: null == profilefullName
                ? _value.profilefullName
                : profilefullName // ignore: cast_nullable_to_non_nullable
                      as String,
            countryFlag: null == countryFlag
                ? _value.countryFlag
                : countryFlag // ignore: cast_nullable_to_non_nullable
                      as String,
            isReported: null == isReported
                ? _value.isReported
                : isReported // ignore: cast_nullable_to_non_nullable
                      as bool,
            isAddedToBookMark: null == isAddedToBookMark
                ? _value.isAddedToBookMark
                : isAddedToBookMark // ignore: cast_nullable_to_non_nullable
                      as bool,
            voteStatus: null == voteStatus
                ? _value.voteStatus
                : voteStatus // ignore: cast_nullable_to_non_nullable
                      as PostVoteType,
          )
          as $Val,
    );
  }

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostCategoryTypeCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $PostCategoryTypeCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostVoteTypeCopyWith<$Res> get voteStatus {
    return $PostVoteTypeCopyWith<$Res>(_value.voteStatus, (value) {
      return _then(_value.copyWith(voteStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostImplCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$$PostImplCopyWith(
    _$PostImpl value,
    $Res Function(_$PostImpl) then,
  ) = __$$PostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    String createdDate,
    String ownerEmail,
    int upComments,
    int downComments,
    String content,
    PostCategoryType? category,
    String profileImageUrl,
    String profilefullName,
    String countryFlag,
    bool isReported,
    bool isAddedToBookMark,
    PostVoteType voteStatus,
  });

  @override
  $PostCategoryTypeCopyWith<$Res>? get category;
  @override
  $PostVoteTypeCopyWith<$Res> get voteStatus;
}

/// @nodoc
class __$$PostImplCopyWithImpl<$Res>
    extends _$PostCopyWithImpl<$Res, _$PostImpl>
    implements _$$PostImplCopyWith<$Res> {
  __$$PostImplCopyWithImpl(_$PostImpl _value, $Res Function(_$PostImpl) _then)
    : super(_value, _then);

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdDate = null,
    Object? ownerEmail = null,
    Object? upComments = null,
    Object? downComments = null,
    Object? content = null,
    Object? category = freezed,
    Object? profileImageUrl = null,
    Object? profilefullName = null,
    Object? countryFlag = null,
    Object? isReported = null,
    Object? isAddedToBookMark = null,
    Object? voteStatus = null,
  }) {
    return _then(
      _$PostImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdDate: null == createdDate
            ? _value.createdDate
            : createdDate // ignore: cast_nullable_to_non_nullable
                  as String,
        ownerEmail: null == ownerEmail
            ? _value.ownerEmail
            : ownerEmail // ignore: cast_nullable_to_non_nullable
                  as String,
        upComments: null == upComments
            ? _value.upComments
            : upComments // ignore: cast_nullable_to_non_nullable
                  as int,
        downComments: null == downComments
            ? _value.downComments
            : downComments // ignore: cast_nullable_to_non_nullable
                  as int,
        content: null == content
            ? _value.content
            : content // ignore: cast_nullable_to_non_nullable
                  as String,
        category: freezed == category
            ? _value.category
            : category // ignore: cast_nullable_to_non_nullable
                  as PostCategoryType?,
        profileImageUrl: null == profileImageUrl
            ? _value.profileImageUrl
            : profileImageUrl // ignore: cast_nullable_to_non_nullable
                  as String,
        profilefullName: null == profilefullName
            ? _value.profilefullName
            : profilefullName // ignore: cast_nullable_to_non_nullable
                  as String,
        countryFlag: null == countryFlag
            ? _value.countryFlag
            : countryFlag // ignore: cast_nullable_to_non_nullable
                  as String,
        isReported: null == isReported
            ? _value.isReported
            : isReported // ignore: cast_nullable_to_non_nullable
                  as bool,
        isAddedToBookMark: null == isAddedToBookMark
            ? _value.isAddedToBookMark
            : isAddedToBookMark // ignore: cast_nullable_to_non_nullable
                  as bool,
        voteStatus: null == voteStatus
            ? _value.voteStatus
            : voteStatus // ignore: cast_nullable_to_non_nullable
                  as PostVoteType,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PostImpl implements _Post {
  _$PostImpl({
    this.id,
    required this.createdDate,
    required this.ownerEmail,
    required this.upComments,
    required this.downComments,
    required this.content,
    required this.category,
    required this.profileImageUrl,
    required this.profilefullName,
    required this.countryFlag,
    required this.isReported,
    required this.isAddedToBookMark,
    required this.voteStatus,
  });

  factory _$PostImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostImplFromJson(json);

  @override
  final String? id;
  @override
  final String createdDate;
  @override
  final String ownerEmail;
  @override
  final int upComments;
  @override
  final int downComments;
  @override
  final String content;
  @override
  final PostCategoryType? category;
  //Profile
  @override
  final String profileImageUrl;
  @override
  final String profilefullName;
  @override
  final String countryFlag;
  //Details
  @override
  final bool isReported;
  @override
  final bool isAddedToBookMark;
  @override
  final PostVoteType voteStatus;

  @override
  String toString() {
    return 'Post(id: $id, createdDate: $createdDate, ownerEmail: $ownerEmail, upComments: $upComments, downComments: $downComments, content: $content, category: $category, profileImageUrl: $profileImageUrl, profilefullName: $profilefullName, countryFlag: $countryFlag, isReported: $isReported, isAddedToBookMark: $isAddedToBookMark, voteStatus: $voteStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.ownerEmail, ownerEmail) ||
                other.ownerEmail == ownerEmail) &&
            (identical(other.upComments, upComments) ||
                other.upComments == upComments) &&
            (identical(other.downComments, downComments) ||
                other.downComments == downComments) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.profileImageUrl, profileImageUrl) ||
                other.profileImageUrl == profileImageUrl) &&
            (identical(other.profilefullName, profilefullName) ||
                other.profilefullName == profilefullName) &&
            (identical(other.countryFlag, countryFlag) ||
                other.countryFlag == countryFlag) &&
            (identical(other.isReported, isReported) ||
                other.isReported == isReported) &&
            (identical(other.isAddedToBookMark, isAddedToBookMark) ||
                other.isAddedToBookMark == isAddedToBookMark) &&
            (identical(other.voteStatus, voteStatus) ||
                other.voteStatus == voteStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    createdDate,
    ownerEmail,
    upComments,
    downComments,
    content,
    category,
    profileImageUrl,
    profilefullName,
    countryFlag,
    isReported,
    isAddedToBookMark,
    voteStatus,
  );

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostImplCopyWith<_$PostImpl> get copyWith =>
      __$$PostImplCopyWithImpl<_$PostImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostImplToJson(this);
  }
}

abstract class _Post implements Post {
  factory _Post({
    final String? id,
    required final String createdDate,
    required final String ownerEmail,
    required final int upComments,
    required final int downComments,
    required final String content,
    required final PostCategoryType? category,
    required final String profileImageUrl,
    required final String profilefullName,
    required final String countryFlag,
    required final bool isReported,
    required final bool isAddedToBookMark,
    required final PostVoteType voteStatus,
  }) = _$PostImpl;

  factory _Post.fromJson(Map<String, dynamic> json) = _$PostImpl.fromJson;

  @override
  String? get id;
  @override
  String get createdDate;
  @override
  String get ownerEmail;
  @override
  int get upComments;
  @override
  int get downComments;
  @override
  String get content;
  @override
  PostCategoryType? get category; //Profile
  @override
  String get profileImageUrl;
  @override
  String get profilefullName;
  @override
  String get countryFlag; //Details
  @override
  bool get isReported;
  @override
  bool get isAddedToBookMark;
  @override
  PostVoteType get voteStatus;

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostImplCopyWith<_$PostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PostVoteType _$PostVoteTypeFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'idl':
      return VoteIdl.fromJson(json);
    case 'up':
      return VoteUp.fromJson(json);
    case 'down':
      return VoteDown.fromJson(json);

    default:
      throw CheckedFromJsonException(
        json,
        'runtimeType',
        'PostVoteType',
        'Invalid union type "${json['runtimeType']}"!',
      );
  }
}

/// @nodoc
mixin _$PostVoteType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idl,
    required TResult Function() up,
    required TResult Function() down,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idl,
    TResult? Function()? up,
    TResult? Function()? down,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idl,
    TResult Function()? up,
    TResult Function()? down,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VoteIdl value) idl,
    required TResult Function(VoteUp value) up,
    required TResult Function(VoteDown value) down,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VoteIdl value)? idl,
    TResult? Function(VoteUp value)? up,
    TResult? Function(VoteDown value)? down,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VoteIdl value)? idl,
    TResult Function(VoteUp value)? up,
    TResult Function(VoteDown value)? down,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Serializes this PostVoteType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostVoteTypeCopyWith<$Res> {
  factory $PostVoteTypeCopyWith(
    PostVoteType value,
    $Res Function(PostVoteType) then,
  ) = _$PostVoteTypeCopyWithImpl<$Res, PostVoteType>;
}

/// @nodoc
class _$PostVoteTypeCopyWithImpl<$Res, $Val extends PostVoteType>
    implements $PostVoteTypeCopyWith<$Res> {
  _$PostVoteTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostVoteType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$VoteIdlImplCopyWith<$Res> {
  factory _$$VoteIdlImplCopyWith(
    _$VoteIdlImpl value,
    $Res Function(_$VoteIdlImpl) then,
  ) = __$$VoteIdlImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VoteIdlImplCopyWithImpl<$Res>
    extends _$PostVoteTypeCopyWithImpl<$Res, _$VoteIdlImpl>
    implements _$$VoteIdlImplCopyWith<$Res> {
  __$$VoteIdlImplCopyWithImpl(
    _$VoteIdlImpl _value,
    $Res Function(_$VoteIdlImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PostVoteType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$VoteIdlImpl implements VoteIdl {
  const _$VoteIdlImpl({final String? $type}) : $type = $type ?? 'idl';

  factory _$VoteIdlImpl.fromJson(Map<String, dynamic> json) =>
      _$$VoteIdlImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PostVoteType.idl()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$VoteIdlImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idl,
    required TResult Function() up,
    required TResult Function() down,
  }) {
    return idl();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idl,
    TResult? Function()? up,
    TResult? Function()? down,
  }) {
    return idl?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idl,
    TResult Function()? up,
    TResult Function()? down,
    required TResult orElse(),
  }) {
    if (idl != null) {
      return idl();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VoteIdl value) idl,
    required TResult Function(VoteUp value) up,
    required TResult Function(VoteDown value) down,
  }) {
    return idl(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VoteIdl value)? idl,
    TResult? Function(VoteUp value)? up,
    TResult? Function(VoteDown value)? down,
  }) {
    return idl?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VoteIdl value)? idl,
    TResult Function(VoteUp value)? up,
    TResult Function(VoteDown value)? down,
    required TResult orElse(),
  }) {
    if (idl != null) {
      return idl(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$VoteIdlImplToJson(this);
  }
}

abstract class VoteIdl implements PostVoteType {
  const factory VoteIdl() = _$VoteIdlImpl;

  factory VoteIdl.fromJson(Map<String, dynamic> json) = _$VoteIdlImpl.fromJson;
}

/// @nodoc
abstract class _$$VoteUpImplCopyWith<$Res> {
  factory _$$VoteUpImplCopyWith(
    _$VoteUpImpl value,
    $Res Function(_$VoteUpImpl) then,
  ) = __$$VoteUpImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VoteUpImplCopyWithImpl<$Res>
    extends _$PostVoteTypeCopyWithImpl<$Res, _$VoteUpImpl>
    implements _$$VoteUpImplCopyWith<$Res> {
  __$$VoteUpImplCopyWithImpl(
    _$VoteUpImpl _value,
    $Res Function(_$VoteUpImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PostVoteType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$VoteUpImpl implements VoteUp {
  const _$VoteUpImpl({final String? $type}) : $type = $type ?? 'up';

  factory _$VoteUpImpl.fromJson(Map<String, dynamic> json) =>
      _$$VoteUpImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PostVoteType.up()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$VoteUpImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idl,
    required TResult Function() up,
    required TResult Function() down,
  }) {
    return up();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idl,
    TResult? Function()? up,
    TResult? Function()? down,
  }) {
    return up?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idl,
    TResult Function()? up,
    TResult Function()? down,
    required TResult orElse(),
  }) {
    if (up != null) {
      return up();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VoteIdl value) idl,
    required TResult Function(VoteUp value) up,
    required TResult Function(VoteDown value) down,
  }) {
    return up(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VoteIdl value)? idl,
    TResult? Function(VoteUp value)? up,
    TResult? Function(VoteDown value)? down,
  }) {
    return up?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VoteIdl value)? idl,
    TResult Function(VoteUp value)? up,
    TResult Function(VoteDown value)? down,
    required TResult orElse(),
  }) {
    if (up != null) {
      return up(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$VoteUpImplToJson(this);
  }
}

abstract class VoteUp implements PostVoteType {
  const factory VoteUp() = _$VoteUpImpl;

  factory VoteUp.fromJson(Map<String, dynamic> json) = _$VoteUpImpl.fromJson;
}

/// @nodoc
abstract class _$$VoteDownImplCopyWith<$Res> {
  factory _$$VoteDownImplCopyWith(
    _$VoteDownImpl value,
    $Res Function(_$VoteDownImpl) then,
  ) = __$$VoteDownImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VoteDownImplCopyWithImpl<$Res>
    extends _$PostVoteTypeCopyWithImpl<$Res, _$VoteDownImpl>
    implements _$$VoteDownImplCopyWith<$Res> {
  __$$VoteDownImplCopyWithImpl(
    _$VoteDownImpl _value,
    $Res Function(_$VoteDownImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PostVoteType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$VoteDownImpl implements VoteDown {
  const _$VoteDownImpl({final String? $type}) : $type = $type ?? 'down';

  factory _$VoteDownImpl.fromJson(Map<String, dynamic> json) =>
      _$$VoteDownImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PostVoteType.down()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$VoteDownImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idl,
    required TResult Function() up,
    required TResult Function() down,
  }) {
    return down();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idl,
    TResult? Function()? up,
    TResult? Function()? down,
  }) {
    return down?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idl,
    TResult Function()? up,
    TResult Function()? down,
    required TResult orElse(),
  }) {
    if (down != null) {
      return down();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VoteIdl value) idl,
    required TResult Function(VoteUp value) up,
    required TResult Function(VoteDown value) down,
  }) {
    return down(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VoteIdl value)? idl,
    TResult? Function(VoteUp value)? up,
    TResult? Function(VoteDown value)? down,
  }) {
    return down?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VoteIdl value)? idl,
    TResult Function(VoteUp value)? up,
    TResult Function(VoteDown value)? down,
    required TResult orElse(),
  }) {
    if (down != null) {
      return down(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$VoteDownImplToJson(this);
  }
}

abstract class VoteDown implements PostVoteType {
  const factory VoteDown() = _$VoteDownImpl;

  factory VoteDown.fromJson(Map<String, dynamic> json) =
      _$VoteDownImpl.fromJson;
}

PostCategoryType _$PostCategoryTypeFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'wall':
      return _PostCategoryTypeWall.fromJson(json);
    case 'watchlist':
      return _PostCategoryTypeWatchlist.fromJson(json);

    default:
      throw CheckedFromJsonException(
        json,
        'runtimeType',
        'PostCategoryType',
        'Invalid union type "${json['runtimeType']}"!',
      );
  }
}

/// @nodoc
mixin _$PostCategoryType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() wall,
    required TResult Function() watchlist,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? wall,
    TResult? Function()? watchlist,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? wall,
    TResult Function()? watchlist,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostCategoryTypeWall value) wall,
    required TResult Function(_PostCategoryTypeWatchlist value) watchlist,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PostCategoryTypeWall value)? wall,
    TResult? Function(_PostCategoryTypeWatchlist value)? watchlist,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostCategoryTypeWall value)? wall,
    TResult Function(_PostCategoryTypeWatchlist value)? watchlist,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Serializes this PostCategoryType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCategoryTypeCopyWith<$Res> {
  factory $PostCategoryTypeCopyWith(
    PostCategoryType value,
    $Res Function(PostCategoryType) then,
  ) = _$PostCategoryTypeCopyWithImpl<$Res, PostCategoryType>;
}

/// @nodoc
class _$PostCategoryTypeCopyWithImpl<$Res, $Val extends PostCategoryType>
    implements $PostCategoryTypeCopyWith<$Res> {
  _$PostCategoryTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostCategoryType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PostCategoryTypeWallImplCopyWith<$Res> {
  factory _$$PostCategoryTypeWallImplCopyWith(
    _$PostCategoryTypeWallImpl value,
    $Res Function(_$PostCategoryTypeWallImpl) then,
  ) = __$$PostCategoryTypeWallImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PostCategoryTypeWallImplCopyWithImpl<$Res>
    extends _$PostCategoryTypeCopyWithImpl<$Res, _$PostCategoryTypeWallImpl>
    implements _$$PostCategoryTypeWallImplCopyWith<$Res> {
  __$$PostCategoryTypeWallImplCopyWithImpl(
    _$PostCategoryTypeWallImpl _value,
    $Res Function(_$PostCategoryTypeWallImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PostCategoryType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$PostCategoryTypeWallImpl implements _PostCategoryTypeWall {
  const _$PostCategoryTypeWallImpl({final String? $type})
    : $type = $type ?? 'wall';

  factory _$PostCategoryTypeWallImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostCategoryTypeWallImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PostCategoryType.wall()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostCategoryTypeWallImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() wall,
    required TResult Function() watchlist,
  }) {
    return wall();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? wall,
    TResult? Function()? watchlist,
  }) {
    return wall?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? wall,
    TResult Function()? watchlist,
    required TResult orElse(),
  }) {
    if (wall != null) {
      return wall();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostCategoryTypeWall value) wall,
    required TResult Function(_PostCategoryTypeWatchlist value) watchlist,
  }) {
    return wall(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PostCategoryTypeWall value)? wall,
    TResult? Function(_PostCategoryTypeWatchlist value)? watchlist,
  }) {
    return wall?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostCategoryTypeWall value)? wall,
    TResult Function(_PostCategoryTypeWatchlist value)? watchlist,
    required TResult orElse(),
  }) {
    if (wall != null) {
      return wall(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PostCategoryTypeWallImplToJson(this);
  }
}

abstract class _PostCategoryTypeWall implements PostCategoryType {
  const factory _PostCategoryTypeWall() = _$PostCategoryTypeWallImpl;

  factory _PostCategoryTypeWall.fromJson(Map<String, dynamic> json) =
      _$PostCategoryTypeWallImpl.fromJson;
}

/// @nodoc
abstract class _$$PostCategoryTypeWatchlistImplCopyWith<$Res> {
  factory _$$PostCategoryTypeWatchlistImplCopyWith(
    _$PostCategoryTypeWatchlistImpl value,
    $Res Function(_$PostCategoryTypeWatchlistImpl) then,
  ) = __$$PostCategoryTypeWatchlistImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PostCategoryTypeWatchlistImplCopyWithImpl<$Res>
    extends
        _$PostCategoryTypeCopyWithImpl<$Res, _$PostCategoryTypeWatchlistImpl>
    implements _$$PostCategoryTypeWatchlistImplCopyWith<$Res> {
  __$$PostCategoryTypeWatchlistImplCopyWithImpl(
    _$PostCategoryTypeWatchlistImpl _value,
    $Res Function(_$PostCategoryTypeWatchlistImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PostCategoryType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$PostCategoryTypeWatchlistImpl implements _PostCategoryTypeWatchlist {
  const _$PostCategoryTypeWatchlistImpl({final String? $type})
    : $type = $type ?? 'watchlist';

  factory _$PostCategoryTypeWatchlistImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostCategoryTypeWatchlistImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PostCategoryType.watchlist()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostCategoryTypeWatchlistImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() wall,
    required TResult Function() watchlist,
  }) {
    return watchlist();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? wall,
    TResult? Function()? watchlist,
  }) {
    return watchlist?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? wall,
    TResult Function()? watchlist,
    required TResult orElse(),
  }) {
    if (watchlist != null) {
      return watchlist();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostCategoryTypeWall value) wall,
    required TResult Function(_PostCategoryTypeWatchlist value) watchlist,
  }) {
    return watchlist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PostCategoryTypeWall value)? wall,
    TResult? Function(_PostCategoryTypeWatchlist value)? watchlist,
  }) {
    return watchlist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostCategoryTypeWall value)? wall,
    TResult Function(_PostCategoryTypeWatchlist value)? watchlist,
    required TResult orElse(),
  }) {
    if (watchlist != null) {
      return watchlist(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PostCategoryTypeWatchlistImplToJson(this);
  }
}

abstract class _PostCategoryTypeWatchlist implements PostCategoryType {
  const factory _PostCategoryTypeWatchlist() = _$PostCategoryTypeWatchlistImpl;

  factory _PostCategoryTypeWatchlist.fromJson(Map<String, dynamic> json) =
      _$PostCategoryTypeWatchlistImpl.fromJson;
}
