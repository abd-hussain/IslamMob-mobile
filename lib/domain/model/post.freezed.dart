// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Post {

 String? get id; String get createdDate; String get ownerEmail; int get upComments; int get downComments; String get content; PostCategoryType? get category; PostDirection get direction;//Profile
 String get profileImageUrl; String get profilefullName; String get countryFlag;//Details
 bool get isReported; bool get isAddedToBookMark; PostVoteType get voteStatus;
/// Create a copy of Post
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostCopyWith<Post> get copyWith => _$PostCopyWithImpl<Post>(this as Post, _$identity);

  /// Serializes this Post to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Post&&(identical(other.id, id) || other.id == id)&&(identical(other.createdDate, createdDate) || other.createdDate == createdDate)&&(identical(other.ownerEmail, ownerEmail) || other.ownerEmail == ownerEmail)&&(identical(other.upComments, upComments) || other.upComments == upComments)&&(identical(other.downComments, downComments) || other.downComments == downComments)&&(identical(other.content, content) || other.content == content)&&(identical(other.category, category) || other.category == category)&&(identical(other.direction, direction) || other.direction == direction)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl)&&(identical(other.profilefullName, profilefullName) || other.profilefullName == profilefullName)&&(identical(other.countryFlag, countryFlag) || other.countryFlag == countryFlag)&&(identical(other.isReported, isReported) || other.isReported == isReported)&&(identical(other.isAddedToBookMark, isAddedToBookMark) || other.isAddedToBookMark == isAddedToBookMark)&&(identical(other.voteStatus, voteStatus) || other.voteStatus == voteStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdDate,ownerEmail,upComments,downComments,content,category,direction,profileImageUrl,profilefullName,countryFlag,isReported,isAddedToBookMark,voteStatus);

@override
String toString() {
  return 'Post(id: $id, createdDate: $createdDate, ownerEmail: $ownerEmail, upComments: $upComments, downComments: $downComments, content: $content, category: $category, direction: $direction, profileImageUrl: $profileImageUrl, profilefullName: $profilefullName, countryFlag: $countryFlag, isReported: $isReported, isAddedToBookMark: $isAddedToBookMark, voteStatus: $voteStatus)';
}


}

/// @nodoc
abstract mixin class $PostCopyWith<$Res>  {
  factory $PostCopyWith(Post value, $Res Function(Post) _then) = _$PostCopyWithImpl;
@useResult
$Res call({
 String? id, String createdDate, String ownerEmail, int upComments, int downComments, String content, PostCategoryType? category, PostDirection direction, String profileImageUrl, String profilefullName, String countryFlag, bool isReported, bool isAddedToBookMark, PostVoteType voteStatus
});


$PostCategoryTypeCopyWith<$Res>? get category;$PostDirectionCopyWith<$Res> get direction;$PostVoteTypeCopyWith<$Res> get voteStatus;

}
/// @nodoc
class _$PostCopyWithImpl<$Res>
    implements $PostCopyWith<$Res> {
  _$PostCopyWithImpl(this._self, this._then);

  final Post _self;
  final $Res Function(Post) _then;

/// Create a copy of Post
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? createdDate = null,Object? ownerEmail = null,Object? upComments = null,Object? downComments = null,Object? content = null,Object? category = freezed,Object? direction = null,Object? profileImageUrl = null,Object? profilefullName = null,Object? countryFlag = null,Object? isReported = null,Object? isAddedToBookMark = null,Object? voteStatus = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,createdDate: null == createdDate ? _self.createdDate : createdDate // ignore: cast_nullable_to_non_nullable
as String,ownerEmail: null == ownerEmail ? _self.ownerEmail : ownerEmail // ignore: cast_nullable_to_non_nullable
as String,upComments: null == upComments ? _self.upComments : upComments // ignore: cast_nullable_to_non_nullable
as int,downComments: null == downComments ? _self.downComments : downComments // ignore: cast_nullable_to_non_nullable
as int,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as PostCategoryType?,direction: null == direction ? _self.direction : direction // ignore: cast_nullable_to_non_nullable
as PostDirection,profileImageUrl: null == profileImageUrl ? _self.profileImageUrl : profileImageUrl // ignore: cast_nullable_to_non_nullable
as String,profilefullName: null == profilefullName ? _self.profilefullName : profilefullName // ignore: cast_nullable_to_non_nullable
as String,countryFlag: null == countryFlag ? _self.countryFlag : countryFlag // ignore: cast_nullable_to_non_nullable
as String,isReported: null == isReported ? _self.isReported : isReported // ignore: cast_nullable_to_non_nullable
as bool,isAddedToBookMark: null == isAddedToBookMark ? _self.isAddedToBookMark : isAddedToBookMark // ignore: cast_nullable_to_non_nullable
as bool,voteStatus: null == voteStatus ? _self.voteStatus : voteStatus // ignore: cast_nullable_to_non_nullable
as PostVoteType,
  ));
}
/// Create a copy of Post
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostCategoryTypeCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $PostCategoryTypeCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}/// Create a copy of Post
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostDirectionCopyWith<$Res> get direction {
  
  return $PostDirectionCopyWith<$Res>(_self.direction, (value) {
    return _then(_self.copyWith(direction: value));
  });
}/// Create a copy of Post
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostVoteTypeCopyWith<$Res> get voteStatus {
  
  return $PostVoteTypeCopyWith<$Res>(_self.voteStatus, (value) {
    return _then(_self.copyWith(voteStatus: value));
  });
}
}


/// Adds pattern-matching-related methods to [Post].
extension PostPatterns on Post {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Post value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Post() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Post value)  $default,){
final _that = this;
switch (_that) {
case _Post():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Post value)?  $default,){
final _that = this;
switch (_that) {
case _Post() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String createdDate,  String ownerEmail,  int upComments,  int downComments,  String content,  PostCategoryType? category,  PostDirection direction,  String profileImageUrl,  String profilefullName,  String countryFlag,  bool isReported,  bool isAddedToBookMark,  PostVoteType voteStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Post() when $default != null:
return $default(_that.id,_that.createdDate,_that.ownerEmail,_that.upComments,_that.downComments,_that.content,_that.category,_that.direction,_that.profileImageUrl,_that.profilefullName,_that.countryFlag,_that.isReported,_that.isAddedToBookMark,_that.voteStatus);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String createdDate,  String ownerEmail,  int upComments,  int downComments,  String content,  PostCategoryType? category,  PostDirection direction,  String profileImageUrl,  String profilefullName,  String countryFlag,  bool isReported,  bool isAddedToBookMark,  PostVoteType voteStatus)  $default,) {final _that = this;
switch (_that) {
case _Post():
return $default(_that.id,_that.createdDate,_that.ownerEmail,_that.upComments,_that.downComments,_that.content,_that.category,_that.direction,_that.profileImageUrl,_that.profilefullName,_that.countryFlag,_that.isReported,_that.isAddedToBookMark,_that.voteStatus);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String createdDate,  String ownerEmail,  int upComments,  int downComments,  String content,  PostCategoryType? category,  PostDirection direction,  String profileImageUrl,  String profilefullName,  String countryFlag,  bool isReported,  bool isAddedToBookMark,  PostVoteType voteStatus)?  $default,) {final _that = this;
switch (_that) {
case _Post() when $default != null:
return $default(_that.id,_that.createdDate,_that.ownerEmail,_that.upComments,_that.downComments,_that.content,_that.category,_that.direction,_that.profileImageUrl,_that.profilefullName,_that.countryFlag,_that.isReported,_that.isAddedToBookMark,_that.voteStatus);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Post implements Post {
   _Post({this.id, required this.createdDate, required this.ownerEmail, required this.upComments, required this.downComments, required this.content, required this.category, required this.direction, required this.profileImageUrl, required this.profilefullName, required this.countryFlag, required this.isReported, required this.isAddedToBookMark, required this.voteStatus});
  factory _Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

@override final  String? id;
@override final  String createdDate;
@override final  String ownerEmail;
@override final  int upComments;
@override final  int downComments;
@override final  String content;
@override final  PostCategoryType? category;
@override final  PostDirection direction;
//Profile
@override final  String profileImageUrl;
@override final  String profilefullName;
@override final  String countryFlag;
//Details
@override final  bool isReported;
@override final  bool isAddedToBookMark;
@override final  PostVoteType voteStatus;

/// Create a copy of Post
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostCopyWith<_Post> get copyWith => __$PostCopyWithImpl<_Post>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PostToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Post&&(identical(other.id, id) || other.id == id)&&(identical(other.createdDate, createdDate) || other.createdDate == createdDate)&&(identical(other.ownerEmail, ownerEmail) || other.ownerEmail == ownerEmail)&&(identical(other.upComments, upComments) || other.upComments == upComments)&&(identical(other.downComments, downComments) || other.downComments == downComments)&&(identical(other.content, content) || other.content == content)&&(identical(other.category, category) || other.category == category)&&(identical(other.direction, direction) || other.direction == direction)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl)&&(identical(other.profilefullName, profilefullName) || other.profilefullName == profilefullName)&&(identical(other.countryFlag, countryFlag) || other.countryFlag == countryFlag)&&(identical(other.isReported, isReported) || other.isReported == isReported)&&(identical(other.isAddedToBookMark, isAddedToBookMark) || other.isAddedToBookMark == isAddedToBookMark)&&(identical(other.voteStatus, voteStatus) || other.voteStatus == voteStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdDate,ownerEmail,upComments,downComments,content,category,direction,profileImageUrl,profilefullName,countryFlag,isReported,isAddedToBookMark,voteStatus);

@override
String toString() {
  return 'Post(id: $id, createdDate: $createdDate, ownerEmail: $ownerEmail, upComments: $upComments, downComments: $downComments, content: $content, category: $category, direction: $direction, profileImageUrl: $profileImageUrl, profilefullName: $profilefullName, countryFlag: $countryFlag, isReported: $isReported, isAddedToBookMark: $isAddedToBookMark, voteStatus: $voteStatus)';
}


}

/// @nodoc
abstract mixin class _$PostCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$PostCopyWith(_Post value, $Res Function(_Post) _then) = __$PostCopyWithImpl;
@override @useResult
$Res call({
 String? id, String createdDate, String ownerEmail, int upComments, int downComments, String content, PostCategoryType? category, PostDirection direction, String profileImageUrl, String profilefullName, String countryFlag, bool isReported, bool isAddedToBookMark, PostVoteType voteStatus
});


@override $PostCategoryTypeCopyWith<$Res>? get category;@override $PostDirectionCopyWith<$Res> get direction;@override $PostVoteTypeCopyWith<$Res> get voteStatus;

}
/// @nodoc
class __$PostCopyWithImpl<$Res>
    implements _$PostCopyWith<$Res> {
  __$PostCopyWithImpl(this._self, this._then);

  final _Post _self;
  final $Res Function(_Post) _then;

/// Create a copy of Post
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? createdDate = null,Object? ownerEmail = null,Object? upComments = null,Object? downComments = null,Object? content = null,Object? category = freezed,Object? direction = null,Object? profileImageUrl = null,Object? profilefullName = null,Object? countryFlag = null,Object? isReported = null,Object? isAddedToBookMark = null,Object? voteStatus = null,}) {
  return _then(_Post(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,createdDate: null == createdDate ? _self.createdDate : createdDate // ignore: cast_nullable_to_non_nullable
as String,ownerEmail: null == ownerEmail ? _self.ownerEmail : ownerEmail // ignore: cast_nullable_to_non_nullable
as String,upComments: null == upComments ? _self.upComments : upComments // ignore: cast_nullable_to_non_nullable
as int,downComments: null == downComments ? _self.downComments : downComments // ignore: cast_nullable_to_non_nullable
as int,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as PostCategoryType?,direction: null == direction ? _self.direction : direction // ignore: cast_nullable_to_non_nullable
as PostDirection,profileImageUrl: null == profileImageUrl ? _self.profileImageUrl : profileImageUrl // ignore: cast_nullable_to_non_nullable
as String,profilefullName: null == profilefullName ? _self.profilefullName : profilefullName // ignore: cast_nullable_to_non_nullable
as String,countryFlag: null == countryFlag ? _self.countryFlag : countryFlag // ignore: cast_nullable_to_non_nullable
as String,isReported: null == isReported ? _self.isReported : isReported // ignore: cast_nullable_to_non_nullable
as bool,isAddedToBookMark: null == isAddedToBookMark ? _self.isAddedToBookMark : isAddedToBookMark // ignore: cast_nullable_to_non_nullable
as bool,voteStatus: null == voteStatus ? _self.voteStatus : voteStatus // ignore: cast_nullable_to_non_nullable
as PostVoteType,
  ));
}

/// Create a copy of Post
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostCategoryTypeCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $PostCategoryTypeCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}/// Create a copy of Post
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostDirectionCopyWith<$Res> get direction {
  
  return $PostDirectionCopyWith<$Res>(_self.direction, (value) {
    return _then(_self.copyWith(direction: value));
  });
}/// Create a copy of Post
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostVoteTypeCopyWith<$Res> get voteStatus {
  
  return $PostVoteTypeCopyWith<$Res>(_self.voteStatus, (value) {
    return _then(_self.copyWith(voteStatus: value));
  });
}
}

PostVoteType _$PostVoteTypeFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'idl':
          return VoteIdl.fromJson(
            json
          );
                case 'up':
          return VoteUp.fromJson(
            json
          );
                case 'down':
          return VoteDown.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'PostVoteType',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$PostVoteType {



  /// Serializes this PostVoteType to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostVoteType);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PostVoteType()';
}


}

/// @nodoc
class $PostVoteTypeCopyWith<$Res>  {
$PostVoteTypeCopyWith(PostVoteType _, $Res Function(PostVoteType) __);
}


/// Adds pattern-matching-related methods to [PostVoteType].
extension PostVoteTypePatterns on PostVoteType {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( VoteIdl value)?  idl,TResult Function( VoteUp value)?  up,TResult Function( VoteDown value)?  down,required TResult orElse(),}){
final _that = this;
switch (_that) {
case VoteIdl() when idl != null:
return idl(_that);case VoteUp() when up != null:
return up(_that);case VoteDown() when down != null:
return down(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( VoteIdl value)  idl,required TResult Function( VoteUp value)  up,required TResult Function( VoteDown value)  down,}){
final _that = this;
switch (_that) {
case VoteIdl():
return idl(_that);case VoteUp():
return up(_that);case VoteDown():
return down(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( VoteIdl value)?  idl,TResult? Function( VoteUp value)?  up,TResult? Function( VoteDown value)?  down,}){
final _that = this;
switch (_that) {
case VoteIdl() when idl != null:
return idl(_that);case VoteUp() when up != null:
return up(_that);case VoteDown() when down != null:
return down(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  idl,TResult Function()?  up,TResult Function()?  down,required TResult orElse(),}) {final _that = this;
switch (_that) {
case VoteIdl() when idl != null:
return idl();case VoteUp() when up != null:
return up();case VoteDown() when down != null:
return down();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  idl,required TResult Function()  up,required TResult Function()  down,}) {final _that = this;
switch (_that) {
case VoteIdl():
return idl();case VoteUp():
return up();case VoteDown():
return down();}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  idl,TResult? Function()?  up,TResult? Function()?  down,}) {final _that = this;
switch (_that) {
case VoteIdl() when idl != null:
return idl();case VoteUp() when up != null:
return up();case VoteDown() when down != null:
return down();case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class VoteIdl implements PostVoteType {
  const VoteIdl({final  String? $type}): $type = $type ?? 'idl';
  factory VoteIdl.fromJson(Map<String, dynamic> json) => _$VoteIdlFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$VoteIdlToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VoteIdl);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PostVoteType.idl()';
}


}




/// @nodoc
@JsonSerializable()

class VoteUp implements PostVoteType {
  const VoteUp({final  String? $type}): $type = $type ?? 'up';
  factory VoteUp.fromJson(Map<String, dynamic> json) => _$VoteUpFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$VoteUpToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VoteUp);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PostVoteType.up()';
}


}




/// @nodoc
@JsonSerializable()

class VoteDown implements PostVoteType {
  const VoteDown({final  String? $type}): $type = $type ?? 'down';
  factory VoteDown.fromJson(Map<String, dynamic> json) => _$VoteDownFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$VoteDownToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VoteDown);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PostVoteType.down()';
}


}




PostCategoryType _$PostCategoryTypeFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'wall':
          return _PostCategoryTypeWall.fromJson(
            json
          );
                case 'watchlist':
          return _PostCategoryTypeWatchlist.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'PostCategoryType',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$PostCategoryType {



  /// Serializes this PostCategoryType to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostCategoryType);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PostCategoryType()';
}


}

/// @nodoc
class $PostCategoryTypeCopyWith<$Res>  {
$PostCategoryTypeCopyWith(PostCategoryType _, $Res Function(PostCategoryType) __);
}


/// Adds pattern-matching-related methods to [PostCategoryType].
extension PostCategoryTypePatterns on PostCategoryType {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _PostCategoryTypeWall value)?  wall,TResult Function( _PostCategoryTypeWatchlist value)?  watchlist,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostCategoryTypeWall() when wall != null:
return wall(_that);case _PostCategoryTypeWatchlist() when watchlist != null:
return watchlist(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _PostCategoryTypeWall value)  wall,required TResult Function( _PostCategoryTypeWatchlist value)  watchlist,}){
final _that = this;
switch (_that) {
case _PostCategoryTypeWall():
return wall(_that);case _PostCategoryTypeWatchlist():
return watchlist(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _PostCategoryTypeWall value)?  wall,TResult? Function( _PostCategoryTypeWatchlist value)?  watchlist,}){
final _that = this;
switch (_that) {
case _PostCategoryTypeWall() when wall != null:
return wall(_that);case _PostCategoryTypeWatchlist() when watchlist != null:
return watchlist(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  wall,TResult Function()?  watchlist,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostCategoryTypeWall() when wall != null:
return wall();case _PostCategoryTypeWatchlist() when watchlist != null:
return watchlist();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  wall,required TResult Function()  watchlist,}) {final _that = this;
switch (_that) {
case _PostCategoryTypeWall():
return wall();case _PostCategoryTypeWatchlist():
return watchlist();}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  wall,TResult? Function()?  watchlist,}) {final _that = this;
switch (_that) {
case _PostCategoryTypeWall() when wall != null:
return wall();case _PostCategoryTypeWatchlist() when watchlist != null:
return watchlist();case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PostCategoryTypeWall implements PostCategoryType {
  const _PostCategoryTypeWall({final  String? $type}): $type = $type ?? 'wall';
  factory _PostCategoryTypeWall.fromJson(Map<String, dynamic> json) => _$PostCategoryTypeWallFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$PostCategoryTypeWallToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostCategoryTypeWall);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PostCategoryType.wall()';
}


}




/// @nodoc
@JsonSerializable()

class _PostCategoryTypeWatchlist implements PostCategoryType {
  const _PostCategoryTypeWatchlist({final  String? $type}): $type = $type ?? 'watchlist';
  factory _PostCategoryTypeWatchlist.fromJson(Map<String, dynamic> json) => _$PostCategoryTypeWatchlistFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$PostCategoryTypeWatchlistToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostCategoryTypeWatchlist);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PostCategoryType.watchlist()';
}


}




PostDirection _$PostDirectionFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'rtl':
          return _PostDirectionRTL.fromJson(
            json
          );
                case 'ltr':
          return _PostDirectionLTR.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'PostDirection',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$PostDirection {



  /// Serializes this PostDirection to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostDirection);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PostDirection()';
}


}

/// @nodoc
class $PostDirectionCopyWith<$Res>  {
$PostDirectionCopyWith(PostDirection _, $Res Function(PostDirection) __);
}


/// Adds pattern-matching-related methods to [PostDirection].
extension PostDirectionPatterns on PostDirection {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _PostDirectionRTL value)?  rtl,TResult Function( _PostDirectionLTR value)?  ltr,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostDirectionRTL() when rtl != null:
return rtl(_that);case _PostDirectionLTR() when ltr != null:
return ltr(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _PostDirectionRTL value)  rtl,required TResult Function( _PostDirectionLTR value)  ltr,}){
final _that = this;
switch (_that) {
case _PostDirectionRTL():
return rtl(_that);case _PostDirectionLTR():
return ltr(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _PostDirectionRTL value)?  rtl,TResult? Function( _PostDirectionLTR value)?  ltr,}){
final _that = this;
switch (_that) {
case _PostDirectionRTL() when rtl != null:
return rtl(_that);case _PostDirectionLTR() when ltr != null:
return ltr(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  rtl,TResult Function()?  ltr,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostDirectionRTL() when rtl != null:
return rtl();case _PostDirectionLTR() when ltr != null:
return ltr();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  rtl,required TResult Function()  ltr,}) {final _that = this;
switch (_that) {
case _PostDirectionRTL():
return rtl();case _PostDirectionLTR():
return ltr();}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  rtl,TResult? Function()?  ltr,}) {final _that = this;
switch (_that) {
case _PostDirectionRTL() when rtl != null:
return rtl();case _PostDirectionLTR() when ltr != null:
return ltr();case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PostDirectionRTL implements PostDirection {
  const _PostDirectionRTL({final  String? $type}): $type = $type ?? 'rtl';
  factory _PostDirectionRTL.fromJson(Map<String, dynamic> json) => _$PostDirectionRTLFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$PostDirectionRTLToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostDirectionRTL);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PostDirection.rtl()';
}


}




/// @nodoc
@JsonSerializable()

class _PostDirectionLTR implements PostDirection {
  const _PostDirectionLTR({final  String? $type}): $type = $type ?? 'ltr';
  factory _PostDirectionLTR.fromJson(Map<String, dynamic> json) => _$PostDirectionLTRFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$PostDirectionLTRToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostDirectionLTR);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PostDirection.ltr()';
}


}




// dart format on
