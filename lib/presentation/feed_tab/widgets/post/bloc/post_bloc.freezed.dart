// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PostEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PostEvent()';
}


}

/// @nodoc
class $PostEventCopyWith<$Res>  {
$PostEventCopyWith(PostEvent _, $Res Function(PostEvent) __);
}


/// Adds pattern-matching-related methods to [PostEvent].
extension PostEventPatterns on PostEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Edit value)?  edit,TResult Function( _ReportPost value)?  report,TResult Function( _DeletePost value)?  delete,TResult Function( _ChangePostVote value)?  changeVote,TResult Function( _AddRemoveFromBookmark value)?  addRemoveFromBookMark,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Edit() when edit != null:
return edit(_that);case _ReportPost() when report != null:
return report(_that);case _DeletePost() when delete != null:
return delete(_that);case _ChangePostVote() when changeVote != null:
return changeVote(_that);case _AddRemoveFromBookmark() when addRemoveFromBookMark != null:
return addRemoveFromBookMark(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Edit value)  edit,required TResult Function( _ReportPost value)  report,required TResult Function( _DeletePost value)  delete,required TResult Function( _ChangePostVote value)  changeVote,required TResult Function( _AddRemoveFromBookmark value)  addRemoveFromBookMark,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Edit():
return edit(_that);case _ReportPost():
return report(_that);case _DeletePost():
return delete(_that);case _ChangePostVote():
return changeVote(_that);case _AddRemoveFromBookmark():
return addRemoveFromBookMark(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Edit value)?  edit,TResult? Function( _ReportPost value)?  report,TResult? Function( _DeletePost value)?  delete,TResult? Function( _ChangePostVote value)?  changeVote,TResult? Function( _AddRemoveFromBookmark value)?  addRemoveFromBookMark,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Edit() when edit != null:
return edit(_that);case _ReportPost() when report != null:
return report(_that);case _DeletePost() when delete != null:
return delete(_that);case _ChangePostVote() when changeVote != null:
return changeVote(_that);case _AddRemoveFromBookmark() when addRemoveFromBookMark != null:
return addRemoveFromBookMark(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( Post post)?  initial,TResult Function( String postId,  Post post)?  edit,TResult Function( String postId,  String message)?  report,TResult Function( String postId)?  delete,TResult Function( String postId,  PostVoteType voteType)?  changeVote,TResult Function( String postId,  bool inBookMark)?  addRemoveFromBookMark,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.post);case _Edit() when edit != null:
return edit(_that.postId,_that.post);case _ReportPost() when report != null:
return report(_that.postId,_that.message);case _DeletePost() when delete != null:
return delete(_that.postId);case _ChangePostVote() when changeVote != null:
return changeVote(_that.postId,_that.voteType);case _AddRemoveFromBookmark() when addRemoveFromBookMark != null:
return addRemoveFromBookMark(_that.postId,_that.inBookMark);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( Post post)  initial,required TResult Function( String postId,  Post post)  edit,required TResult Function( String postId,  String message)  report,required TResult Function( String postId)  delete,required TResult Function( String postId,  PostVoteType voteType)  changeVote,required TResult Function( String postId,  bool inBookMark)  addRemoveFromBookMark,}) {final _that = this;
switch (_that) {
case _Initial():
return initial(_that.post);case _Edit():
return edit(_that.postId,_that.post);case _ReportPost():
return report(_that.postId,_that.message);case _DeletePost():
return delete(_that.postId);case _ChangePostVote():
return changeVote(_that.postId,_that.voteType);case _AddRemoveFromBookmark():
return addRemoveFromBookMark(_that.postId,_that.inBookMark);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( Post post)?  initial,TResult? Function( String postId,  Post post)?  edit,TResult? Function( String postId,  String message)?  report,TResult? Function( String postId)?  delete,TResult? Function( String postId,  PostVoteType voteType)?  changeVote,TResult? Function( String postId,  bool inBookMark)?  addRemoveFromBookMark,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.post);case _Edit() when edit != null:
return edit(_that.postId,_that.post);case _ReportPost() when report != null:
return report(_that.postId,_that.message);case _DeletePost() when delete != null:
return delete(_that.postId);case _ChangePostVote() when changeVote != null:
return changeVote(_that.postId,_that.voteType);case _AddRemoveFromBookmark() when addRemoveFromBookMark != null:
return addRemoveFromBookMark(_that.postId,_that.inBookMark);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements PostEvent {
  const _Initial(this.post);
  

 final  Post post;

/// Create a copy of PostEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitialCopyWith<_Initial> get copyWith => __$InitialCopyWithImpl<_Initial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial&&(identical(other.post, post) || other.post == post));
}


@override
int get hashCode => Object.hash(runtimeType,post);

@override
String toString() {
  return 'PostEvent.initial(post: $post)';
}


}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res> implements $PostEventCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) = __$InitialCopyWithImpl;
@useResult
$Res call({
 Post post
});


$PostCopyWith<$Res> get post;

}
/// @nodoc
class __$InitialCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

/// Create a copy of PostEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? post = null,}) {
  return _then(_Initial(
null == post ? _self.post : post // ignore: cast_nullable_to_non_nullable
as Post,
  ));
}

/// Create a copy of PostEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostCopyWith<$Res> get post {
  
  return $PostCopyWith<$Res>(_self.post, (value) {
    return _then(_self.copyWith(post: value));
  });
}
}

/// @nodoc


class _Edit implements PostEvent {
  const _Edit(this.postId, this.post);
  

 final  String postId;
 final  Post post;

/// Create a copy of PostEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EditCopyWith<_Edit> get copyWith => __$EditCopyWithImpl<_Edit>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Edit&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.post, post) || other.post == post));
}


@override
int get hashCode => Object.hash(runtimeType,postId,post);

@override
String toString() {
  return 'PostEvent.edit(postId: $postId, post: $post)';
}


}

/// @nodoc
abstract mixin class _$EditCopyWith<$Res> implements $PostEventCopyWith<$Res> {
  factory _$EditCopyWith(_Edit value, $Res Function(_Edit) _then) = __$EditCopyWithImpl;
@useResult
$Res call({
 String postId, Post post
});


$PostCopyWith<$Res> get post;

}
/// @nodoc
class __$EditCopyWithImpl<$Res>
    implements _$EditCopyWith<$Res> {
  __$EditCopyWithImpl(this._self, this._then);

  final _Edit _self;
  final $Res Function(_Edit) _then;

/// Create a copy of PostEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? postId = null,Object? post = null,}) {
  return _then(_Edit(
null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,null == post ? _self.post : post // ignore: cast_nullable_to_non_nullable
as Post,
  ));
}

/// Create a copy of PostEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostCopyWith<$Res> get post {
  
  return $PostCopyWith<$Res>(_self.post, (value) {
    return _then(_self.copyWith(post: value));
  });
}
}

/// @nodoc


class _ReportPost implements PostEvent {
  const _ReportPost(this.postId, this.message);
  

 final  String postId;
 final  String message;

/// Create a copy of PostEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportPostCopyWith<_ReportPost> get copyWith => __$ReportPostCopyWithImpl<_ReportPost>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReportPost&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,postId,message);

@override
String toString() {
  return 'PostEvent.report(postId: $postId, message: $message)';
}


}

/// @nodoc
abstract mixin class _$ReportPostCopyWith<$Res> implements $PostEventCopyWith<$Res> {
  factory _$ReportPostCopyWith(_ReportPost value, $Res Function(_ReportPost) _then) = __$ReportPostCopyWithImpl;
@useResult
$Res call({
 String postId, String message
});




}
/// @nodoc
class __$ReportPostCopyWithImpl<$Res>
    implements _$ReportPostCopyWith<$Res> {
  __$ReportPostCopyWithImpl(this._self, this._then);

  final _ReportPost _self;
  final $Res Function(_ReportPost) _then;

/// Create a copy of PostEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? postId = null,Object? message = null,}) {
  return _then(_ReportPost(
null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _DeletePost implements PostEvent {
  const _DeletePost(this.postId);
  

 final  String postId;

/// Create a copy of PostEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeletePostCopyWith<_DeletePost> get copyWith => __$DeletePostCopyWithImpl<_DeletePost>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeletePost&&(identical(other.postId, postId) || other.postId == postId));
}


@override
int get hashCode => Object.hash(runtimeType,postId);

@override
String toString() {
  return 'PostEvent.delete(postId: $postId)';
}


}

/// @nodoc
abstract mixin class _$DeletePostCopyWith<$Res> implements $PostEventCopyWith<$Res> {
  factory _$DeletePostCopyWith(_DeletePost value, $Res Function(_DeletePost) _then) = __$DeletePostCopyWithImpl;
@useResult
$Res call({
 String postId
});




}
/// @nodoc
class __$DeletePostCopyWithImpl<$Res>
    implements _$DeletePostCopyWith<$Res> {
  __$DeletePostCopyWithImpl(this._self, this._then);

  final _DeletePost _self;
  final $Res Function(_DeletePost) _then;

/// Create a copy of PostEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? postId = null,}) {
  return _then(_DeletePost(
null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ChangePostVote implements PostEvent {
  const _ChangePostVote(this.postId, this.voteType);
  

 final  String postId;
 final  PostVoteType voteType;

/// Create a copy of PostEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangePostVoteCopyWith<_ChangePostVote> get copyWith => __$ChangePostVoteCopyWithImpl<_ChangePostVote>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangePostVote&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.voteType, voteType) || other.voteType == voteType));
}


@override
int get hashCode => Object.hash(runtimeType,postId,voteType);

@override
String toString() {
  return 'PostEvent.changeVote(postId: $postId, voteType: $voteType)';
}


}

/// @nodoc
abstract mixin class _$ChangePostVoteCopyWith<$Res> implements $PostEventCopyWith<$Res> {
  factory _$ChangePostVoteCopyWith(_ChangePostVote value, $Res Function(_ChangePostVote) _then) = __$ChangePostVoteCopyWithImpl;
@useResult
$Res call({
 String postId, PostVoteType voteType
});


$PostVoteTypeCopyWith<$Res> get voteType;

}
/// @nodoc
class __$ChangePostVoteCopyWithImpl<$Res>
    implements _$ChangePostVoteCopyWith<$Res> {
  __$ChangePostVoteCopyWithImpl(this._self, this._then);

  final _ChangePostVote _self;
  final $Res Function(_ChangePostVote) _then;

/// Create a copy of PostEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? postId = null,Object? voteType = null,}) {
  return _then(_ChangePostVote(
null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,null == voteType ? _self.voteType : voteType // ignore: cast_nullable_to_non_nullable
as PostVoteType,
  ));
}

/// Create a copy of PostEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostVoteTypeCopyWith<$Res> get voteType {
  
  return $PostVoteTypeCopyWith<$Res>(_self.voteType, (value) {
    return _then(_self.copyWith(voteType: value));
  });
}
}

/// @nodoc


class _AddRemoveFromBookmark implements PostEvent {
  const _AddRemoveFromBookmark(this.postId, this.inBookMark);
  

 final  String postId;
 final  bool inBookMark;

/// Create a copy of PostEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddRemoveFromBookmarkCopyWith<_AddRemoveFromBookmark> get copyWith => __$AddRemoveFromBookmarkCopyWithImpl<_AddRemoveFromBookmark>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddRemoveFromBookmark&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.inBookMark, inBookMark) || other.inBookMark == inBookMark));
}


@override
int get hashCode => Object.hash(runtimeType,postId,inBookMark);

@override
String toString() {
  return 'PostEvent.addRemoveFromBookMark(postId: $postId, inBookMark: $inBookMark)';
}


}

/// @nodoc
abstract mixin class _$AddRemoveFromBookmarkCopyWith<$Res> implements $PostEventCopyWith<$Res> {
  factory _$AddRemoveFromBookmarkCopyWith(_AddRemoveFromBookmark value, $Res Function(_AddRemoveFromBookmark) _then) = __$AddRemoveFromBookmarkCopyWithImpl;
@useResult
$Res call({
 String postId, bool inBookMark
});




}
/// @nodoc
class __$AddRemoveFromBookmarkCopyWithImpl<$Res>
    implements _$AddRemoveFromBookmarkCopyWith<$Res> {
  __$AddRemoveFromBookmarkCopyWithImpl(this._self, this._then);

  final _AddRemoveFromBookmark _self;
  final $Res Function(_AddRemoveFromBookmark) _then;

/// Create a copy of PostEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? postId = null,Object? inBookMark = null,}) {
  return _then(_AddRemoveFromBookmark(
null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,null == inBookMark ? _self.inBookMark : inBookMark // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$PostState {

 String get postID; int get upComments; int get downComments; bool get inBookmark; bool get isPostReported; PostVoteType get postVoteType;
/// Create a copy of PostState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostStateCopyWith<PostState> get copyWith => _$PostStateCopyWithImpl<PostState>(this as PostState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostState&&(identical(other.postID, postID) || other.postID == postID)&&(identical(other.upComments, upComments) || other.upComments == upComments)&&(identical(other.downComments, downComments) || other.downComments == downComments)&&(identical(other.inBookmark, inBookmark) || other.inBookmark == inBookmark)&&(identical(other.isPostReported, isPostReported) || other.isPostReported == isPostReported)&&(identical(other.postVoteType, postVoteType) || other.postVoteType == postVoteType));
}


@override
int get hashCode => Object.hash(runtimeType,postID,upComments,downComments,inBookmark,isPostReported,postVoteType);

@override
String toString() {
  return 'PostState(postID: $postID, upComments: $upComments, downComments: $downComments, inBookmark: $inBookmark, isPostReported: $isPostReported, postVoteType: $postVoteType)';
}


}

/// @nodoc
abstract mixin class $PostStateCopyWith<$Res>  {
  factory $PostStateCopyWith(PostState value, $Res Function(PostState) _then) = _$PostStateCopyWithImpl;
@useResult
$Res call({
 String postID, int upComments, int downComments, bool inBookmark, bool isPostReported, PostVoteType postVoteType
});


$PostVoteTypeCopyWith<$Res> get postVoteType;

}
/// @nodoc
class _$PostStateCopyWithImpl<$Res>
    implements $PostStateCopyWith<$Res> {
  _$PostStateCopyWithImpl(this._self, this._then);

  final PostState _self;
  final $Res Function(PostState) _then;

/// Create a copy of PostState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? postID = null,Object? upComments = null,Object? downComments = null,Object? inBookmark = null,Object? isPostReported = null,Object? postVoteType = null,}) {
  return _then(_self.copyWith(
postID: null == postID ? _self.postID : postID // ignore: cast_nullable_to_non_nullable
as String,upComments: null == upComments ? _self.upComments : upComments // ignore: cast_nullable_to_non_nullable
as int,downComments: null == downComments ? _self.downComments : downComments // ignore: cast_nullable_to_non_nullable
as int,inBookmark: null == inBookmark ? _self.inBookmark : inBookmark // ignore: cast_nullable_to_non_nullable
as bool,isPostReported: null == isPostReported ? _self.isPostReported : isPostReported // ignore: cast_nullable_to_non_nullable
as bool,postVoteType: null == postVoteType ? _self.postVoteType : postVoteType // ignore: cast_nullable_to_non_nullable
as PostVoteType,
  ));
}
/// Create a copy of PostState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostVoteTypeCopyWith<$Res> get postVoteType {
  
  return $PostVoteTypeCopyWith<$Res>(_self.postVoteType, (value) {
    return _then(_self.copyWith(postVoteType: value));
  });
}
}


/// Adds pattern-matching-related methods to [PostState].
extension PostStatePatterns on PostState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PostState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PostState value)  $default,){
final _that = this;
switch (_that) {
case _PostState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PostState value)?  $default,){
final _that = this;
switch (_that) {
case _PostState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String postID,  int upComments,  int downComments,  bool inBookmark,  bool isPostReported,  PostVoteType postVoteType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostState() when $default != null:
return $default(_that.postID,_that.upComments,_that.downComments,_that.inBookmark,_that.isPostReported,_that.postVoteType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String postID,  int upComments,  int downComments,  bool inBookmark,  bool isPostReported,  PostVoteType postVoteType)  $default,) {final _that = this;
switch (_that) {
case _PostState():
return $default(_that.postID,_that.upComments,_that.downComments,_that.inBookmark,_that.isPostReported,_that.postVoteType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String postID,  int upComments,  int downComments,  bool inBookmark,  bool isPostReported,  PostVoteType postVoteType)?  $default,) {final _that = this;
switch (_that) {
case _PostState() when $default != null:
return $default(_that.postID,_that.upComments,_that.downComments,_that.inBookmark,_that.isPostReported,_that.postVoteType);case _:
  return null;

}
}

}

/// @nodoc


class _PostState implements PostState {
  const _PostState({this.postID = "", this.upComments = 0, this.downComments = 0, this.inBookmark = false, this.isPostReported = false, this.postVoteType = const PostVoteType.idl()});
  

@override@JsonKey() final  String postID;
@override@JsonKey() final  int upComments;
@override@JsonKey() final  int downComments;
@override@JsonKey() final  bool inBookmark;
@override@JsonKey() final  bool isPostReported;
@override@JsonKey() final  PostVoteType postVoteType;

/// Create a copy of PostState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostStateCopyWith<_PostState> get copyWith => __$PostStateCopyWithImpl<_PostState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostState&&(identical(other.postID, postID) || other.postID == postID)&&(identical(other.upComments, upComments) || other.upComments == upComments)&&(identical(other.downComments, downComments) || other.downComments == downComments)&&(identical(other.inBookmark, inBookmark) || other.inBookmark == inBookmark)&&(identical(other.isPostReported, isPostReported) || other.isPostReported == isPostReported)&&(identical(other.postVoteType, postVoteType) || other.postVoteType == postVoteType));
}


@override
int get hashCode => Object.hash(runtimeType,postID,upComments,downComments,inBookmark,isPostReported,postVoteType);

@override
String toString() {
  return 'PostState(postID: $postID, upComments: $upComments, downComments: $downComments, inBookmark: $inBookmark, isPostReported: $isPostReported, postVoteType: $postVoteType)';
}


}

/// @nodoc
abstract mixin class _$PostStateCopyWith<$Res> implements $PostStateCopyWith<$Res> {
  factory _$PostStateCopyWith(_PostState value, $Res Function(_PostState) _then) = __$PostStateCopyWithImpl;
@override @useResult
$Res call({
 String postID, int upComments, int downComments, bool inBookmark, bool isPostReported, PostVoteType postVoteType
});


@override $PostVoteTypeCopyWith<$Res> get postVoteType;

}
/// @nodoc
class __$PostStateCopyWithImpl<$Res>
    implements _$PostStateCopyWith<$Res> {
  __$PostStateCopyWithImpl(this._self, this._then);

  final _PostState _self;
  final $Res Function(_PostState) _then;

/// Create a copy of PostState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? postID = null,Object? upComments = null,Object? downComments = null,Object? inBookmark = null,Object? isPostReported = null,Object? postVoteType = null,}) {
  return _then(_PostState(
postID: null == postID ? _self.postID : postID // ignore: cast_nullable_to_non_nullable
as String,upComments: null == upComments ? _self.upComments : upComments // ignore: cast_nullable_to_non_nullable
as int,downComments: null == downComments ? _self.downComments : downComments // ignore: cast_nullable_to_non_nullable
as int,inBookmark: null == inBookmark ? _self.inBookmark : inBookmark // ignore: cast_nullable_to_non_nullable
as bool,isPostReported: null == isPostReported ? _self.isPostReported : isPostReported // ignore: cast_nullable_to_non_nullable
as bool,postVoteType: null == postVoteType ? _self.postVoteType : postVoteType // ignore: cast_nullable_to_non_nullable
as PostVoteType,
  ));
}

/// Create a copy of PostState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostVoteTypeCopyWith<$Res> get postVoteType {
  
  return $PostVoteTypeCopyWith<$Res>(_self.postVoteType, (value) {
    return _then(_self.copyWith(postVoteType: value));
  });
}
}

// dart format on
