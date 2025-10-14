// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_and_suggestion_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ReportAndSuggestionEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportAndSuggestionEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReportAndSuggestionEvent()';
}


}

/// @nodoc
class $ReportAndSuggestionEventCopyWith<$Res>  {
$ReportAndSuggestionEventCopyWith(ReportAndSuggestionEvent _, $Res Function(ReportAndSuggestionEvent) __);
}


/// Adds pattern-matching-related methods to [ReportAndSuggestionEvent].
extension ReportAndSuggestionEventPatterns on ReportAndSuggestionEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _UpdateEnableSubmitBtn value)?  updateEnableSubmitBtn,TResult Function( _UpdateLoadingStatus value)?  updateLoadingStatus,TResult Function( _UpdateAttachment1 value)?  updateAttachment1,TResult Function( _UpdateAttachment2 value)?  updateAttachment2,TResult Function( _UpdateAttachment3 value)?  updateAttachment3,TResult Function( _UpdateInternetConnectionStatus value)?  updateInternetConnectionStatus,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateEnableSubmitBtn() when updateEnableSubmitBtn != null:
return updateEnableSubmitBtn(_that);case _UpdateLoadingStatus() when updateLoadingStatus != null:
return updateLoadingStatus(_that);case _UpdateAttachment1() when updateAttachment1 != null:
return updateAttachment1(_that);case _UpdateAttachment2() when updateAttachment2 != null:
return updateAttachment2(_that);case _UpdateAttachment3() when updateAttachment3 != null:
return updateAttachment3(_that);case _UpdateInternetConnectionStatus() when updateInternetConnectionStatus != null:
return updateInternetConnectionStatus(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _UpdateEnableSubmitBtn value)  updateEnableSubmitBtn,required TResult Function( _UpdateLoadingStatus value)  updateLoadingStatus,required TResult Function( _UpdateAttachment1 value)  updateAttachment1,required TResult Function( _UpdateAttachment2 value)  updateAttachment2,required TResult Function( _UpdateAttachment3 value)  updateAttachment3,required TResult Function( _UpdateInternetConnectionStatus value)  updateInternetConnectionStatus,}){
final _that = this;
switch (_that) {
case _UpdateEnableSubmitBtn():
return updateEnableSubmitBtn(_that);case _UpdateLoadingStatus():
return updateLoadingStatus(_that);case _UpdateAttachment1():
return updateAttachment1(_that);case _UpdateAttachment2():
return updateAttachment2(_that);case _UpdateAttachment3():
return updateAttachment3(_that);case _UpdateInternetConnectionStatus():
return updateInternetConnectionStatus(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _UpdateEnableSubmitBtn value)?  updateEnableSubmitBtn,TResult? Function( _UpdateLoadingStatus value)?  updateLoadingStatus,TResult? Function( _UpdateAttachment1 value)?  updateAttachment1,TResult? Function( _UpdateAttachment2 value)?  updateAttachment2,TResult? Function( _UpdateAttachment3 value)?  updateAttachment3,TResult? Function( _UpdateInternetConnectionStatus value)?  updateInternetConnectionStatus,}){
final _that = this;
switch (_that) {
case _UpdateEnableSubmitBtn() when updateEnableSubmitBtn != null:
return updateEnableSubmitBtn(_that);case _UpdateLoadingStatus() when updateLoadingStatus != null:
return updateLoadingStatus(_that);case _UpdateAttachment1() when updateAttachment1 != null:
return updateAttachment1(_that);case _UpdateAttachment2() when updateAttachment2 != null:
return updateAttachment2(_that);case _UpdateAttachment3() when updateAttachment3 != null:
return updateAttachment3(_that);case _UpdateInternetConnectionStatus() when updateInternetConnectionStatus != null:
return updateInternetConnectionStatus(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( bool status)?  updateEnableSubmitBtn,TResult Function( bool status)?  updateLoadingStatus,TResult Function( File? value)?  updateAttachment1,TResult Function( File? value)?  updateAttachment2,TResult Function( File? value)?  updateAttachment3,TResult Function( bool status)?  updateInternetConnectionStatus,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateEnableSubmitBtn() when updateEnableSubmitBtn != null:
return updateEnableSubmitBtn(_that.status);case _UpdateLoadingStatus() when updateLoadingStatus != null:
return updateLoadingStatus(_that.status);case _UpdateAttachment1() when updateAttachment1 != null:
return updateAttachment1(_that.value);case _UpdateAttachment2() when updateAttachment2 != null:
return updateAttachment2(_that.value);case _UpdateAttachment3() when updateAttachment3 != null:
return updateAttachment3(_that.value);case _UpdateInternetConnectionStatus() when updateInternetConnectionStatus != null:
return updateInternetConnectionStatus(_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( bool status)  updateEnableSubmitBtn,required TResult Function( bool status)  updateLoadingStatus,required TResult Function( File? value)  updateAttachment1,required TResult Function( File? value)  updateAttachment2,required TResult Function( File? value)  updateAttachment3,required TResult Function( bool status)  updateInternetConnectionStatus,}) {final _that = this;
switch (_that) {
case _UpdateEnableSubmitBtn():
return updateEnableSubmitBtn(_that.status);case _UpdateLoadingStatus():
return updateLoadingStatus(_that.status);case _UpdateAttachment1():
return updateAttachment1(_that.value);case _UpdateAttachment2():
return updateAttachment2(_that.value);case _UpdateAttachment3():
return updateAttachment3(_that.value);case _UpdateInternetConnectionStatus():
return updateInternetConnectionStatus(_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( bool status)?  updateEnableSubmitBtn,TResult? Function( bool status)?  updateLoadingStatus,TResult? Function( File? value)?  updateAttachment1,TResult? Function( File? value)?  updateAttachment2,TResult? Function( File? value)?  updateAttachment3,TResult? Function( bool status)?  updateInternetConnectionStatus,}) {final _that = this;
switch (_that) {
case _UpdateEnableSubmitBtn() when updateEnableSubmitBtn != null:
return updateEnableSubmitBtn(_that.status);case _UpdateLoadingStatus() when updateLoadingStatus != null:
return updateLoadingStatus(_that.status);case _UpdateAttachment1() when updateAttachment1 != null:
return updateAttachment1(_that.value);case _UpdateAttachment2() when updateAttachment2 != null:
return updateAttachment2(_that.value);case _UpdateAttachment3() when updateAttachment3 != null:
return updateAttachment3(_that.value);case _UpdateInternetConnectionStatus() when updateInternetConnectionStatus != null:
return updateInternetConnectionStatus(_that.status);case _:
  return null;

}
}

}

/// @nodoc


class _UpdateEnableSubmitBtn implements ReportAndSuggestionEvent {
  const _UpdateEnableSubmitBtn({required this.status});
  

 final  bool status;

/// Create a copy of ReportAndSuggestionEvent
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
  return 'ReportAndSuggestionEvent.updateEnableSubmitBtn(status: $status)';
}


}

/// @nodoc
abstract mixin class _$UpdateEnableSubmitBtnCopyWith<$Res> implements $ReportAndSuggestionEventCopyWith<$Res> {
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

/// Create a copy of ReportAndSuggestionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? status = null,}) {
  return _then(_UpdateEnableSubmitBtn(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _UpdateLoadingStatus implements ReportAndSuggestionEvent {
  const _UpdateLoadingStatus({required this.status});
  

 final  bool status;

/// Create a copy of ReportAndSuggestionEvent
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
  return 'ReportAndSuggestionEvent.updateLoadingStatus(status: $status)';
}


}

/// @nodoc
abstract mixin class _$UpdateLoadingStatusCopyWith<$Res> implements $ReportAndSuggestionEventCopyWith<$Res> {
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

/// Create a copy of ReportAndSuggestionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? status = null,}) {
  return _then(_UpdateLoadingStatus(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _UpdateAttachment1 implements ReportAndSuggestionEvent {
  const _UpdateAttachment1({required this.value});
  

 final  File? value;

/// Create a copy of ReportAndSuggestionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateAttachment1CopyWith<_UpdateAttachment1> get copyWith => __$UpdateAttachment1CopyWithImpl<_UpdateAttachment1>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateAttachment1&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'ReportAndSuggestionEvent.updateAttachment1(value: $value)';
}


}

/// @nodoc
abstract mixin class _$UpdateAttachment1CopyWith<$Res> implements $ReportAndSuggestionEventCopyWith<$Res> {
  factory _$UpdateAttachment1CopyWith(_UpdateAttachment1 value, $Res Function(_UpdateAttachment1) _then) = __$UpdateAttachment1CopyWithImpl;
@useResult
$Res call({
 File? value
});




}
/// @nodoc
class __$UpdateAttachment1CopyWithImpl<$Res>
    implements _$UpdateAttachment1CopyWith<$Res> {
  __$UpdateAttachment1CopyWithImpl(this._self, this._then);

  final _UpdateAttachment1 _self;
  final $Res Function(_UpdateAttachment1) _then;

/// Create a copy of ReportAndSuggestionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = freezed,}) {
  return _then(_UpdateAttachment1(
value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as File?,
  ));
}


}

/// @nodoc


class _UpdateAttachment2 implements ReportAndSuggestionEvent {
  const _UpdateAttachment2({required this.value});
  

 final  File? value;

/// Create a copy of ReportAndSuggestionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateAttachment2CopyWith<_UpdateAttachment2> get copyWith => __$UpdateAttachment2CopyWithImpl<_UpdateAttachment2>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateAttachment2&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'ReportAndSuggestionEvent.updateAttachment2(value: $value)';
}


}

/// @nodoc
abstract mixin class _$UpdateAttachment2CopyWith<$Res> implements $ReportAndSuggestionEventCopyWith<$Res> {
  factory _$UpdateAttachment2CopyWith(_UpdateAttachment2 value, $Res Function(_UpdateAttachment2) _then) = __$UpdateAttachment2CopyWithImpl;
@useResult
$Res call({
 File? value
});




}
/// @nodoc
class __$UpdateAttachment2CopyWithImpl<$Res>
    implements _$UpdateAttachment2CopyWith<$Res> {
  __$UpdateAttachment2CopyWithImpl(this._self, this._then);

  final _UpdateAttachment2 _self;
  final $Res Function(_UpdateAttachment2) _then;

/// Create a copy of ReportAndSuggestionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = freezed,}) {
  return _then(_UpdateAttachment2(
value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as File?,
  ));
}


}

/// @nodoc


class _UpdateAttachment3 implements ReportAndSuggestionEvent {
  const _UpdateAttachment3({required this.value});
  

 final  File? value;

/// Create a copy of ReportAndSuggestionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateAttachment3CopyWith<_UpdateAttachment3> get copyWith => __$UpdateAttachment3CopyWithImpl<_UpdateAttachment3>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateAttachment3&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'ReportAndSuggestionEvent.updateAttachment3(value: $value)';
}


}

/// @nodoc
abstract mixin class _$UpdateAttachment3CopyWith<$Res> implements $ReportAndSuggestionEventCopyWith<$Res> {
  factory _$UpdateAttachment3CopyWith(_UpdateAttachment3 value, $Res Function(_UpdateAttachment3) _then) = __$UpdateAttachment3CopyWithImpl;
@useResult
$Res call({
 File? value
});




}
/// @nodoc
class __$UpdateAttachment3CopyWithImpl<$Res>
    implements _$UpdateAttachment3CopyWith<$Res> {
  __$UpdateAttachment3CopyWithImpl(this._self, this._then);

  final _UpdateAttachment3 _self;
  final $Res Function(_UpdateAttachment3) _then;

/// Create a copy of ReportAndSuggestionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = freezed,}) {
  return _then(_UpdateAttachment3(
value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as File?,
  ));
}


}

/// @nodoc


class _UpdateInternetConnectionStatus implements ReportAndSuggestionEvent {
   _UpdateInternetConnectionStatus(this.status);
  

 final  bool status;

/// Create a copy of ReportAndSuggestionEvent
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
  return 'ReportAndSuggestionEvent.updateInternetConnectionStatus(status: $status)';
}


}

/// @nodoc
abstract mixin class _$UpdateInternetConnectionStatusCopyWith<$Res> implements $ReportAndSuggestionEventCopyWith<$Res> {
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

/// Create a copy of ReportAndSuggestionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? status = null,}) {
  return _then(_UpdateInternetConnectionStatus(
null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$ReportAndSuggestionState {

 bool get enableSubmitBtn; bool get loadingStatus; File? get attach1; File? get attach2; File? get attach3; bool get internetConnectionStauts;
/// Create a copy of ReportAndSuggestionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportAndSuggestionStateCopyWith<ReportAndSuggestionState> get copyWith => _$ReportAndSuggestionStateCopyWithImpl<ReportAndSuggestionState>(this as ReportAndSuggestionState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportAndSuggestionState&&(identical(other.enableSubmitBtn, enableSubmitBtn) || other.enableSubmitBtn == enableSubmitBtn)&&(identical(other.loadingStatus, loadingStatus) || other.loadingStatus == loadingStatus)&&(identical(other.attach1, attach1) || other.attach1 == attach1)&&(identical(other.attach2, attach2) || other.attach2 == attach2)&&(identical(other.attach3, attach3) || other.attach3 == attach3)&&(identical(other.internetConnectionStauts, internetConnectionStauts) || other.internetConnectionStauts == internetConnectionStauts));
}


@override
int get hashCode => Object.hash(runtimeType,enableSubmitBtn,loadingStatus,attach1,attach2,attach3,internetConnectionStauts);

@override
String toString() {
  return 'ReportAndSuggestionState(enableSubmitBtn: $enableSubmitBtn, loadingStatus: $loadingStatus, attach1: $attach1, attach2: $attach2, attach3: $attach3, internetConnectionStauts: $internetConnectionStauts)';
}


}

/// @nodoc
abstract mixin class $ReportAndSuggestionStateCopyWith<$Res>  {
  factory $ReportAndSuggestionStateCopyWith(ReportAndSuggestionState value, $Res Function(ReportAndSuggestionState) _then) = _$ReportAndSuggestionStateCopyWithImpl;
@useResult
$Res call({
 bool enableSubmitBtn, bool loadingStatus, File? attach1, File? attach2, File? attach3, bool internetConnectionStauts
});




}
/// @nodoc
class _$ReportAndSuggestionStateCopyWithImpl<$Res>
    implements $ReportAndSuggestionStateCopyWith<$Res> {
  _$ReportAndSuggestionStateCopyWithImpl(this._self, this._then);

  final ReportAndSuggestionState _self;
  final $Res Function(ReportAndSuggestionState) _then;

/// Create a copy of ReportAndSuggestionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? enableSubmitBtn = null,Object? loadingStatus = null,Object? attach1 = freezed,Object? attach2 = freezed,Object? attach3 = freezed,Object? internetConnectionStauts = null,}) {
  return _then(_self.copyWith(
enableSubmitBtn: null == enableSubmitBtn ? _self.enableSubmitBtn : enableSubmitBtn // ignore: cast_nullable_to_non_nullable
as bool,loadingStatus: null == loadingStatus ? _self.loadingStatus : loadingStatus // ignore: cast_nullable_to_non_nullable
as bool,attach1: freezed == attach1 ? _self.attach1 : attach1 // ignore: cast_nullable_to_non_nullable
as File?,attach2: freezed == attach2 ? _self.attach2 : attach2 // ignore: cast_nullable_to_non_nullable
as File?,attach3: freezed == attach3 ? _self.attach3 : attach3 // ignore: cast_nullable_to_non_nullable
as File?,internetConnectionStauts: null == internetConnectionStauts ? _self.internetConnectionStauts : internetConnectionStauts // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ReportAndSuggestionState].
extension ReportAndSuggestionStatePatterns on ReportAndSuggestionState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReportAndSuggestionState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReportAndSuggestionState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReportAndSuggestionState value)  $default,){
final _that = this;
switch (_that) {
case _ReportAndSuggestionState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReportAndSuggestionState value)?  $default,){
final _that = this;
switch (_that) {
case _ReportAndSuggestionState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool enableSubmitBtn,  bool loadingStatus,  File? attach1,  File? attach2,  File? attach3,  bool internetConnectionStauts)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReportAndSuggestionState() when $default != null:
return $default(_that.enableSubmitBtn,_that.loadingStatus,_that.attach1,_that.attach2,_that.attach3,_that.internetConnectionStauts);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool enableSubmitBtn,  bool loadingStatus,  File? attach1,  File? attach2,  File? attach3,  bool internetConnectionStauts)  $default,) {final _that = this;
switch (_that) {
case _ReportAndSuggestionState():
return $default(_that.enableSubmitBtn,_that.loadingStatus,_that.attach1,_that.attach2,_that.attach3,_that.internetConnectionStauts);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool enableSubmitBtn,  bool loadingStatus,  File? attach1,  File? attach2,  File? attach3,  bool internetConnectionStauts)?  $default,) {final _that = this;
switch (_that) {
case _ReportAndSuggestionState() when $default != null:
return $default(_that.enableSubmitBtn,_that.loadingStatus,_that.attach1,_that.attach2,_that.attach3,_that.internetConnectionStauts);case _:
  return null;

}
}

}

/// @nodoc


class _ReportAndSuggestionState implements ReportAndSuggestionState {
  const _ReportAndSuggestionState({this.enableSubmitBtn = false, this.loadingStatus = false, this.attach1, this.attach2, this.attach3, this.internetConnectionStauts = false});
  

@override@JsonKey() final  bool enableSubmitBtn;
@override@JsonKey() final  bool loadingStatus;
@override final  File? attach1;
@override final  File? attach2;
@override final  File? attach3;
@override@JsonKey() final  bool internetConnectionStauts;

/// Create a copy of ReportAndSuggestionState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportAndSuggestionStateCopyWith<_ReportAndSuggestionState> get copyWith => __$ReportAndSuggestionStateCopyWithImpl<_ReportAndSuggestionState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReportAndSuggestionState&&(identical(other.enableSubmitBtn, enableSubmitBtn) || other.enableSubmitBtn == enableSubmitBtn)&&(identical(other.loadingStatus, loadingStatus) || other.loadingStatus == loadingStatus)&&(identical(other.attach1, attach1) || other.attach1 == attach1)&&(identical(other.attach2, attach2) || other.attach2 == attach2)&&(identical(other.attach3, attach3) || other.attach3 == attach3)&&(identical(other.internetConnectionStauts, internetConnectionStauts) || other.internetConnectionStauts == internetConnectionStauts));
}


@override
int get hashCode => Object.hash(runtimeType,enableSubmitBtn,loadingStatus,attach1,attach2,attach3,internetConnectionStauts);

@override
String toString() {
  return 'ReportAndSuggestionState(enableSubmitBtn: $enableSubmitBtn, loadingStatus: $loadingStatus, attach1: $attach1, attach2: $attach2, attach3: $attach3, internetConnectionStauts: $internetConnectionStauts)';
}


}

/// @nodoc
abstract mixin class _$ReportAndSuggestionStateCopyWith<$Res> implements $ReportAndSuggestionStateCopyWith<$Res> {
  factory _$ReportAndSuggestionStateCopyWith(_ReportAndSuggestionState value, $Res Function(_ReportAndSuggestionState) _then) = __$ReportAndSuggestionStateCopyWithImpl;
@override @useResult
$Res call({
 bool enableSubmitBtn, bool loadingStatus, File? attach1, File? attach2, File? attach3, bool internetConnectionStauts
});




}
/// @nodoc
class __$ReportAndSuggestionStateCopyWithImpl<$Res>
    implements _$ReportAndSuggestionStateCopyWith<$Res> {
  __$ReportAndSuggestionStateCopyWithImpl(this._self, this._then);

  final _ReportAndSuggestionState _self;
  final $Res Function(_ReportAndSuggestionState) _then;

/// Create a copy of ReportAndSuggestionState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? enableSubmitBtn = null,Object? loadingStatus = null,Object? attach1 = freezed,Object? attach2 = freezed,Object? attach3 = freezed,Object? internetConnectionStauts = null,}) {
  return _then(_ReportAndSuggestionState(
enableSubmitBtn: null == enableSubmitBtn ? _self.enableSubmitBtn : enableSubmitBtn // ignore: cast_nullable_to_non_nullable
as bool,loadingStatus: null == loadingStatus ? _self.loadingStatus : loadingStatus // ignore: cast_nullable_to_non_nullable
as bool,attach1: freezed == attach1 ? _self.attach1 : attach1 // ignore: cast_nullable_to_non_nullable
as File?,attach2: freezed == attach2 ? _self.attach2 : attach2 // ignore: cast_nullable_to_non_nullable
as File?,attach3: freezed == attach3 ? _self.attach3 : attach3 // ignore: cast_nullable_to_non_nullable
as File?,internetConnectionStauts: null == internetConnectionStauts ? _self.internetConnectionStauts : internetConnectionStauts // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
