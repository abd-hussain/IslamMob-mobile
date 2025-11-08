// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_edit_post_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddEditPostEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddEditPostEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddEditPostEvent()';
}


}

/// @nodoc
class $AddEditPostEventCopyWith<$Res>  {
$AddEditPostEventCopyWith(AddEditPostEvent _, $Res Function(AddEditPostEvent) __);
}


/// Adds pattern-matching-related methods to [AddEditPostEvent].
extension AddEditPostEventPatterns on AddEditPostEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _UpdateEnableSubmitBtn value)?  updateEnableSubmitBtn,TResult Function( _UpdateLoadingStatus value)?  updateLoadingStatus,TResult Function( _UpdateAttachment value)?  updateAttachment,TResult Function( _UpdateInternetConnectionStatus value)?  updateInternetConnectionStatus,TResult Function( _AddPost value)?  addPost,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateEnableSubmitBtn() when updateEnableSubmitBtn != null:
return updateEnableSubmitBtn(_that);case _UpdateLoadingStatus() when updateLoadingStatus != null:
return updateLoadingStatus(_that);case _UpdateAttachment() when updateAttachment != null:
return updateAttachment(_that);case _UpdateInternetConnectionStatus() when updateInternetConnectionStatus != null:
return updateInternetConnectionStatus(_that);case _AddPost() when addPost != null:
return addPost(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _UpdateEnableSubmitBtn value)  updateEnableSubmitBtn,required TResult Function( _UpdateLoadingStatus value)  updateLoadingStatus,required TResult Function( _UpdateAttachment value)  updateAttachment,required TResult Function( _UpdateInternetConnectionStatus value)  updateInternetConnectionStatus,required TResult Function( _AddPost value)  addPost,}){
final _that = this;
switch (_that) {
case _UpdateEnableSubmitBtn():
return updateEnableSubmitBtn(_that);case _UpdateLoadingStatus():
return updateLoadingStatus(_that);case _UpdateAttachment():
return updateAttachment(_that);case _UpdateInternetConnectionStatus():
return updateInternetConnectionStatus(_that);case _AddPost():
return addPost(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _UpdateEnableSubmitBtn value)?  updateEnableSubmitBtn,TResult? Function( _UpdateLoadingStatus value)?  updateLoadingStatus,TResult? Function( _UpdateAttachment value)?  updateAttachment,TResult? Function( _UpdateInternetConnectionStatus value)?  updateInternetConnectionStatus,TResult? Function( _AddPost value)?  addPost,}){
final _that = this;
switch (_that) {
case _UpdateEnableSubmitBtn() when updateEnableSubmitBtn != null:
return updateEnableSubmitBtn(_that);case _UpdateLoadingStatus() when updateLoadingStatus != null:
return updateLoadingStatus(_that);case _UpdateAttachment() when updateAttachment != null:
return updateAttachment(_that);case _UpdateInternetConnectionStatus() when updateInternetConnectionStatus != null:
return updateInternetConnectionStatus(_that);case _AddPost() when addPost != null:
return addPost(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( bool status)?  updateEnableSubmitBtn,TResult Function( bool status)?  updateLoadingStatus,TResult Function( File? value)?  updateAttachment,TResult Function( bool status)?  updateInternetConnectionStatus,TResult Function( BuildContext context)?  addPost,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateEnableSubmitBtn() when updateEnableSubmitBtn != null:
return updateEnableSubmitBtn(_that.status);case _UpdateLoadingStatus() when updateLoadingStatus != null:
return updateLoadingStatus(_that.status);case _UpdateAttachment() when updateAttachment != null:
return updateAttachment(_that.value);case _UpdateInternetConnectionStatus() when updateInternetConnectionStatus != null:
return updateInternetConnectionStatus(_that.status);case _AddPost() when addPost != null:
return addPost(_that.context);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( bool status)  updateEnableSubmitBtn,required TResult Function( bool status)  updateLoadingStatus,required TResult Function( File? value)  updateAttachment,required TResult Function( bool status)  updateInternetConnectionStatus,required TResult Function( BuildContext context)  addPost,}) {final _that = this;
switch (_that) {
case _UpdateEnableSubmitBtn():
return updateEnableSubmitBtn(_that.status);case _UpdateLoadingStatus():
return updateLoadingStatus(_that.status);case _UpdateAttachment():
return updateAttachment(_that.value);case _UpdateInternetConnectionStatus():
return updateInternetConnectionStatus(_that.status);case _AddPost():
return addPost(_that.context);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( bool status)?  updateEnableSubmitBtn,TResult? Function( bool status)?  updateLoadingStatus,TResult? Function( File? value)?  updateAttachment,TResult? Function( bool status)?  updateInternetConnectionStatus,TResult? Function( BuildContext context)?  addPost,}) {final _that = this;
switch (_that) {
case _UpdateEnableSubmitBtn() when updateEnableSubmitBtn != null:
return updateEnableSubmitBtn(_that.status);case _UpdateLoadingStatus() when updateLoadingStatus != null:
return updateLoadingStatus(_that.status);case _UpdateAttachment() when updateAttachment != null:
return updateAttachment(_that.value);case _UpdateInternetConnectionStatus() when updateInternetConnectionStatus != null:
return updateInternetConnectionStatus(_that.status);case _AddPost() when addPost != null:
return addPost(_that.context);case _:
  return null;

}
}

}

/// @nodoc


class _UpdateEnableSubmitBtn implements AddEditPostEvent {
  const _UpdateEnableSubmitBtn({required this.status});
  

 final  bool status;

/// Create a copy of AddEditPostEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateEnableSubmitBtnCopyWith<_UpdateEnableSubmitBtn> get copyWith => __$UpdateEnableSubmitBtnCopyWithImpl<_UpdateEnableSubmitBtn>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateEnableSubmitBtn&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,status);

@override
String toString() {
  return 'AddEditPostEvent.updateEnableSubmitBtn(status: $status)';
}


}

/// @nodoc
abstract mixin class _$UpdateEnableSubmitBtnCopyWith<$Res> implements $AddEditPostEventCopyWith<$Res> {
  factory _$UpdateEnableSubmitBtnCopyWith(_UpdateEnableSubmitBtn value, $Res Function(_UpdateEnableSubmitBtn) _then) = __$UpdateEnableSubmitBtnCopyWithImpl;
@useResult
$Res call({
 bool status
});




}
/// @nodoc
class __$UpdateEnableSubmitBtnCopyWithImpl<$Res>
    implements _$UpdateEnableSubmitBtnCopyWith<$Res> {
  __$UpdateEnableSubmitBtnCopyWithImpl(this._self, this._then);

  final _UpdateEnableSubmitBtn _self;
  final $Res Function(_UpdateEnableSubmitBtn) _then;

/// Create a copy of AddEditPostEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? status = null,}) {
  return _then(_UpdateEnableSubmitBtn(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _UpdateLoadingStatus implements AddEditPostEvent {
  const _UpdateLoadingStatus({required this.status});
  

 final  bool status;

/// Create a copy of AddEditPostEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateLoadingStatusCopyWith<_UpdateLoadingStatus> get copyWith => __$UpdateLoadingStatusCopyWithImpl<_UpdateLoadingStatus>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateLoadingStatus&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,status);

@override
String toString() {
  return 'AddEditPostEvent.updateLoadingStatus(status: $status)';
}


}

/// @nodoc
abstract mixin class _$UpdateLoadingStatusCopyWith<$Res> implements $AddEditPostEventCopyWith<$Res> {
  factory _$UpdateLoadingStatusCopyWith(_UpdateLoadingStatus value, $Res Function(_UpdateLoadingStatus) _then) = __$UpdateLoadingStatusCopyWithImpl;
@useResult
$Res call({
 bool status
});




}
/// @nodoc
class __$UpdateLoadingStatusCopyWithImpl<$Res>
    implements _$UpdateLoadingStatusCopyWith<$Res> {
  __$UpdateLoadingStatusCopyWithImpl(this._self, this._then);

  final _UpdateLoadingStatus _self;
  final $Res Function(_UpdateLoadingStatus) _then;

/// Create a copy of AddEditPostEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? status = null,}) {
  return _then(_UpdateLoadingStatus(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _UpdateAttachment implements AddEditPostEvent {
  const _UpdateAttachment({required this.value});
  

 final  File? value;

/// Create a copy of AddEditPostEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateAttachmentCopyWith<_UpdateAttachment> get copyWith => __$UpdateAttachmentCopyWithImpl<_UpdateAttachment>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateAttachment&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'AddEditPostEvent.updateAttachment(value: $value)';
}


}

/// @nodoc
abstract mixin class _$UpdateAttachmentCopyWith<$Res> implements $AddEditPostEventCopyWith<$Res> {
  factory _$UpdateAttachmentCopyWith(_UpdateAttachment value, $Res Function(_UpdateAttachment) _then) = __$UpdateAttachmentCopyWithImpl;
@useResult
$Res call({
 File? value
});




}
/// @nodoc
class __$UpdateAttachmentCopyWithImpl<$Res>
    implements _$UpdateAttachmentCopyWith<$Res> {
  __$UpdateAttachmentCopyWithImpl(this._self, this._then);

  final _UpdateAttachment _self;
  final $Res Function(_UpdateAttachment) _then;

/// Create a copy of AddEditPostEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = freezed,}) {
  return _then(_UpdateAttachment(
value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as File?,
  ));
}


}

/// @nodoc


class _UpdateInternetConnectionStatus implements AddEditPostEvent {
   _UpdateInternetConnectionStatus(this.status);
  

 final  bool status;

/// Create a copy of AddEditPostEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateInternetConnectionStatusCopyWith<_UpdateInternetConnectionStatus> get copyWith => __$UpdateInternetConnectionStatusCopyWithImpl<_UpdateInternetConnectionStatus>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateInternetConnectionStatus&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,status);

@override
String toString() {
  return 'AddEditPostEvent.updateInternetConnectionStatus(status: $status)';
}


}

/// @nodoc
abstract mixin class _$UpdateInternetConnectionStatusCopyWith<$Res> implements $AddEditPostEventCopyWith<$Res> {
  factory _$UpdateInternetConnectionStatusCopyWith(_UpdateInternetConnectionStatus value, $Res Function(_UpdateInternetConnectionStatus) _then) = __$UpdateInternetConnectionStatusCopyWithImpl;
@useResult
$Res call({
 bool status
});




}
/// @nodoc
class __$UpdateInternetConnectionStatusCopyWithImpl<$Res>
    implements _$UpdateInternetConnectionStatusCopyWith<$Res> {
  __$UpdateInternetConnectionStatusCopyWithImpl(this._self, this._then);

  final _UpdateInternetConnectionStatus _self;
  final $Res Function(_UpdateInternetConnectionStatus) _then;

/// Create a copy of AddEditPostEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? status = null,}) {
  return _then(_UpdateInternetConnectionStatus(
null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _AddPost implements AddEditPostEvent {
  const _AddPost({required this.context});
  

 final  BuildContext context;

/// Create a copy of AddEditPostEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddPostCopyWith<_AddPost> get copyWith => __$AddPostCopyWithImpl<_AddPost>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddPost&&(identical(other.context, context) || other.context == context));
}


@override
int get hashCode => Object.hash(runtimeType,context);

@override
String toString() {
  return 'AddEditPostEvent.addPost(context: $context)';
}


}

/// @nodoc
abstract mixin class _$AddPostCopyWith<$Res> implements $AddEditPostEventCopyWith<$Res> {
  factory _$AddPostCopyWith(_AddPost value, $Res Function(_AddPost) _then) = __$AddPostCopyWithImpl;
@useResult
$Res call({
 BuildContext context
});




}
/// @nodoc
class __$AddPostCopyWithImpl<$Res>
    implements _$AddPostCopyWith<$Res> {
  __$AddPostCopyWithImpl(this._self, this._then);

  final _AddPost _self;
  final $Res Function(_AddPost) _then;

/// Create a copy of AddEditPostEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? context = null,}) {
  return _then(_AddPost(
context: null == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as BuildContext,
  ));
}


}

/// @nodoc
mixin _$AddEditPostState {

 bool get enableSubmitBtn; bool get loadingStatus; File? get attachment; String? get content; bool get internetConnectionStauts;
/// Create a copy of AddEditPostState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddEditPostStateCopyWith<AddEditPostState> get copyWith => _$AddEditPostStateCopyWithImpl<AddEditPostState>(this as AddEditPostState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddEditPostState&&(identical(other.enableSubmitBtn, enableSubmitBtn) || other.enableSubmitBtn == enableSubmitBtn)&&(identical(other.loadingStatus, loadingStatus) || other.loadingStatus == loadingStatus)&&(identical(other.attachment, attachment) || other.attachment == attachment)&&(identical(other.content, content) || other.content == content)&&(identical(other.internetConnectionStauts, internetConnectionStauts) || other.internetConnectionStauts == internetConnectionStauts));
}


@override
int get hashCode => Object.hash(runtimeType,enableSubmitBtn,loadingStatus,attachment,content,internetConnectionStauts);

@override
String toString() {
  return 'AddEditPostState(enableSubmitBtn: $enableSubmitBtn, loadingStatus: $loadingStatus, attachment: $attachment, content: $content, internetConnectionStauts: $internetConnectionStauts)';
}


}

/// @nodoc
abstract mixin class $AddEditPostStateCopyWith<$Res>  {
  factory $AddEditPostStateCopyWith(AddEditPostState value, $Res Function(AddEditPostState) _then) = _$AddEditPostStateCopyWithImpl;
@useResult
$Res call({
 bool enableSubmitBtn, bool loadingStatus, File? attachment, String? content, bool internetConnectionStauts
});




}
/// @nodoc
class _$AddEditPostStateCopyWithImpl<$Res>
    implements $AddEditPostStateCopyWith<$Res> {
  _$AddEditPostStateCopyWithImpl(this._self, this._then);

  final AddEditPostState _self;
  final $Res Function(AddEditPostState) _then;

/// Create a copy of AddEditPostState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? enableSubmitBtn = null,Object? loadingStatus = null,Object? attachment = freezed,Object? content = freezed,Object? internetConnectionStauts = null,}) {
  return _then(_self.copyWith(
enableSubmitBtn: null == enableSubmitBtn ? _self.enableSubmitBtn : enableSubmitBtn // ignore: cast_nullable_to_non_nullable
as bool,loadingStatus: null == loadingStatus ? _self.loadingStatus : loadingStatus // ignore: cast_nullable_to_non_nullable
as bool,attachment: freezed == attachment ? _self.attachment : attachment // ignore: cast_nullable_to_non_nullable
as File?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,internetConnectionStauts: null == internetConnectionStauts ? _self.internetConnectionStauts : internetConnectionStauts // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AddEditPostState].
extension AddEditPostStatePatterns on AddEditPostState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddEditPostState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddEditPostState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddEditPostState value)  $default,){
final _that = this;
switch (_that) {
case _AddEditPostState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddEditPostState value)?  $default,){
final _that = this;
switch (_that) {
case _AddEditPostState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool enableSubmitBtn,  bool loadingStatus,  File? attachment,  String? content,  bool internetConnectionStauts)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddEditPostState() when $default != null:
return $default(_that.enableSubmitBtn,_that.loadingStatus,_that.attachment,_that.content,_that.internetConnectionStauts);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool enableSubmitBtn,  bool loadingStatus,  File? attachment,  String? content,  bool internetConnectionStauts)  $default,) {final _that = this;
switch (_that) {
case _AddEditPostState():
return $default(_that.enableSubmitBtn,_that.loadingStatus,_that.attachment,_that.content,_that.internetConnectionStauts);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool enableSubmitBtn,  bool loadingStatus,  File? attachment,  String? content,  bool internetConnectionStauts)?  $default,) {final _that = this;
switch (_that) {
case _AddEditPostState() when $default != null:
return $default(_that.enableSubmitBtn,_that.loadingStatus,_that.attachment,_that.content,_that.internetConnectionStauts);case _:
  return null;

}
}

}

/// @nodoc


class _AddEditPostState implements AddEditPostState {
  const _AddEditPostState({this.enableSubmitBtn = false, this.loadingStatus = false, this.attachment, this.content = "", this.internetConnectionStauts = false});
  

@override@JsonKey() final  bool enableSubmitBtn;
@override@JsonKey() final  bool loadingStatus;
@override final  File? attachment;
@override@JsonKey() final  String? content;
@override@JsonKey() final  bool internetConnectionStauts;

/// Create a copy of AddEditPostState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddEditPostStateCopyWith<_AddEditPostState> get copyWith => __$AddEditPostStateCopyWithImpl<_AddEditPostState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddEditPostState&&(identical(other.enableSubmitBtn, enableSubmitBtn) || other.enableSubmitBtn == enableSubmitBtn)&&(identical(other.loadingStatus, loadingStatus) || other.loadingStatus == loadingStatus)&&(identical(other.attachment, attachment) || other.attachment == attachment)&&(identical(other.content, content) || other.content == content)&&(identical(other.internetConnectionStauts, internetConnectionStauts) || other.internetConnectionStauts == internetConnectionStauts));
}


@override
int get hashCode => Object.hash(runtimeType,enableSubmitBtn,loadingStatus,attachment,content,internetConnectionStauts);

@override
String toString() {
  return 'AddEditPostState(enableSubmitBtn: $enableSubmitBtn, loadingStatus: $loadingStatus, attachment: $attachment, content: $content, internetConnectionStauts: $internetConnectionStauts)';
}


}

/// @nodoc
abstract mixin class _$AddEditPostStateCopyWith<$Res> implements $AddEditPostStateCopyWith<$Res> {
  factory _$AddEditPostStateCopyWith(_AddEditPostState value, $Res Function(_AddEditPostState) _then) = __$AddEditPostStateCopyWithImpl;
@override @useResult
$Res call({
 bool enableSubmitBtn, bool loadingStatus, File? attachment, String? content, bool internetConnectionStauts
});




}
/// @nodoc
class __$AddEditPostStateCopyWithImpl<$Res>
    implements _$AddEditPostStateCopyWith<$Res> {
  __$AddEditPostStateCopyWithImpl(this._self, this._then);

  final _AddEditPostState _self;
  final $Res Function(_AddEditPostState) _then;

/// Create a copy of AddEditPostState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? enableSubmitBtn = null,Object? loadingStatus = null,Object? attachment = freezed,Object? content = freezed,Object? internetConnectionStauts = null,}) {
  return _then(_AddEditPostState(
enableSubmitBtn: null == enableSubmitBtn ? _self.enableSubmitBtn : enableSubmitBtn // ignore: cast_nullable_to_non_nullable
as bool,loadingStatus: null == loadingStatus ? _self.loadingStatus : loadingStatus // ignore: cast_nullable_to_non_nullable
as bool,attachment: freezed == attachment ? _self.attachment : attachment // ignore: cast_nullable_to_non_nullable
as File?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,internetConnectionStauts: null == internetConnectionStauts ? _self.internetConnectionStauts : internetConnectionStauts // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
