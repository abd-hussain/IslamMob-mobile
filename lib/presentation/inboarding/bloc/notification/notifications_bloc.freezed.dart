// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notifications_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NotificationsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NotificationsEvent()';
}


}

/// @nodoc
class $NotificationsEventCopyWith<$Res>  {
$NotificationsEventCopyWith(NotificationsEvent _, $Res Function(NotificationsEvent) __);
}


/// Adds pattern-matching-related methods to [NotificationsEvent].
extension NotificationsEventPatterns on NotificationsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ChangeNotificationStatus value)?  changeNotificationStatus,TResult Function( _SetupToken value)?  setupToken,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChangeNotificationStatus() when changeNotificationStatus != null:
return changeNotificationStatus(_that);case _SetupToken() when setupToken != null:
return setupToken(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ChangeNotificationStatus value)  changeNotificationStatus,required TResult Function( _SetupToken value)  setupToken,}){
final _that = this;
switch (_that) {
case _ChangeNotificationStatus():
return changeNotificationStatus(_that);case _SetupToken():
return setupToken(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ChangeNotificationStatus value)?  changeNotificationStatus,TResult? Function( _SetupToken value)?  setupToken,}){
final _that = this;
switch (_that) {
case _ChangeNotificationStatus() when changeNotificationStatus != null:
return changeNotificationStatus(_that);case _SetupToken() when setupToken != null:
return setupToken(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( NotificationsProcessState status)?  changeNotificationStatus,TResult Function( String token)?  setupToken,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChangeNotificationStatus() when changeNotificationStatus != null:
return changeNotificationStatus(_that.status);case _SetupToken() when setupToken != null:
return setupToken(_that.token);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( NotificationsProcessState status)  changeNotificationStatus,required TResult Function( String token)  setupToken,}) {final _that = this;
switch (_that) {
case _ChangeNotificationStatus():
return changeNotificationStatus(_that.status);case _SetupToken():
return setupToken(_that.token);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( NotificationsProcessState status)?  changeNotificationStatus,TResult? Function( String token)?  setupToken,}) {final _that = this;
switch (_that) {
case _ChangeNotificationStatus() when changeNotificationStatus != null:
return changeNotificationStatus(_that.status);case _SetupToken() when setupToken != null:
return setupToken(_that.token);case _:
  return null;

}
}

}

/// @nodoc


class _ChangeNotificationStatus implements NotificationsEvent {
  const _ChangeNotificationStatus({required this.status});
  

 final  NotificationsProcessState status;

/// Create a copy of NotificationsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangeNotificationStatusCopyWith<_ChangeNotificationStatus> get copyWith => __$ChangeNotificationStatusCopyWithImpl<_ChangeNotificationStatus>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangeNotificationStatus&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,status);

@override
String toString() {
  return 'NotificationsEvent.changeNotificationStatus(status: $status)';
}


}

/// @nodoc
abstract mixin class _$ChangeNotificationStatusCopyWith<$Res> implements $NotificationsEventCopyWith<$Res> {
  factory _$ChangeNotificationStatusCopyWith(_ChangeNotificationStatus value, $Res Function(_ChangeNotificationStatus) _then) = __$ChangeNotificationStatusCopyWithImpl;
@useResult
$Res call({
 NotificationsProcessState status
});


$NotificationsProcessStateCopyWith<$Res> get status;

}
/// @nodoc
class __$ChangeNotificationStatusCopyWithImpl<$Res>
    implements _$ChangeNotificationStatusCopyWith<$Res> {
  __$ChangeNotificationStatusCopyWithImpl(this._self, this._then);

  final _ChangeNotificationStatus _self;
  final $Res Function(_ChangeNotificationStatus) _then;

/// Create a copy of NotificationsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? status = null,}) {
  return _then(_ChangeNotificationStatus(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as NotificationsProcessState,
  ));
}

/// Create a copy of NotificationsEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationsProcessStateCopyWith<$Res> get status {
  
  return $NotificationsProcessStateCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}

/// @nodoc


class _SetupToken implements NotificationsEvent {
  const _SetupToken({required this.token});
  

 final  String token;

/// Create a copy of NotificationsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetupTokenCopyWith<_SetupToken> get copyWith => __$SetupTokenCopyWithImpl<_SetupToken>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetupToken&&(identical(other.token, token) || other.token == token));
}


@override
int get hashCode => Object.hash(runtimeType,token);

@override
String toString() {
  return 'NotificationsEvent.setupToken(token: $token)';
}


}

/// @nodoc
abstract mixin class _$SetupTokenCopyWith<$Res> implements $NotificationsEventCopyWith<$Res> {
  factory _$SetupTokenCopyWith(_SetupToken value, $Res Function(_SetupToken) _then) = __$SetupTokenCopyWithImpl;
@useResult
$Res call({
 String token
});




}
/// @nodoc
class __$SetupTokenCopyWithImpl<$Res>
    implements _$SetupTokenCopyWith<$Res> {
  __$SetupTokenCopyWithImpl(this._self, this._then);

  final _SetupToken _self;
  final $Res Function(_SetupToken) _then;

/// Create a copy of NotificationsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? token = null,}) {
  return _then(_SetupToken(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$NotificationsState {

 NotificationsProcessState get status;
/// Create a copy of NotificationsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationsStateCopyWith<NotificationsState> get copyWith => _$NotificationsStateCopyWithImpl<NotificationsState>(this as NotificationsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationsState&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,status);

@override
String toString() {
  return 'NotificationsState(status: $status)';
}


}

/// @nodoc
abstract mixin class $NotificationsStateCopyWith<$Res>  {
  factory $NotificationsStateCopyWith(NotificationsState value, $Res Function(NotificationsState) _then) = _$NotificationsStateCopyWithImpl;
@useResult
$Res call({
 NotificationsProcessState status
});


$NotificationsProcessStateCopyWith<$Res> get status;

}
/// @nodoc
class _$NotificationsStateCopyWithImpl<$Res>
    implements $NotificationsStateCopyWith<$Res> {
  _$NotificationsStateCopyWithImpl(this._self, this._then);

  final NotificationsState _self;
  final $Res Function(NotificationsState) _then;

/// Create a copy of NotificationsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as NotificationsProcessState,
  ));
}
/// Create a copy of NotificationsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationsProcessStateCopyWith<$Res> get status {
  
  return $NotificationsProcessStateCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}


/// Adds pattern-matching-related methods to [NotificationsState].
extension NotificationsStatePatterns on NotificationsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationsState value)  $default,){
final _that = this;
switch (_that) {
case _NotificationsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationsState value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( NotificationsProcessState status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationsState() when $default != null:
return $default(_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( NotificationsProcessState status)  $default,) {final _that = this;
switch (_that) {
case _NotificationsState():
return $default(_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( NotificationsProcessState status)?  $default,) {final _that = this;
switch (_that) {
case _NotificationsState() when $default != null:
return $default(_that.status);case _:
  return null;

}
}

}

/// @nodoc


class _NotificationsState implements NotificationsState {
  const _NotificationsState({this.status = const NotificationsProcessState.idl()});
  

@override@JsonKey() final  NotificationsProcessState status;

/// Create a copy of NotificationsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationsStateCopyWith<_NotificationsState> get copyWith => __$NotificationsStateCopyWithImpl<_NotificationsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationsState&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,status);

@override
String toString() {
  return 'NotificationsState(status: $status)';
}


}

/// @nodoc
abstract mixin class _$NotificationsStateCopyWith<$Res> implements $NotificationsStateCopyWith<$Res> {
  factory _$NotificationsStateCopyWith(_NotificationsState value, $Res Function(_NotificationsState) _then) = __$NotificationsStateCopyWithImpl;
@override @useResult
$Res call({
 NotificationsProcessState status
});


@override $NotificationsProcessStateCopyWith<$Res> get status;

}
/// @nodoc
class __$NotificationsStateCopyWithImpl<$Res>
    implements _$NotificationsStateCopyWith<$Res> {
  __$NotificationsStateCopyWithImpl(this._self, this._then);

  final _NotificationsState _self;
  final $Res Function(_NotificationsState) _then;

/// Create a copy of NotificationsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,}) {
  return _then(_NotificationsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as NotificationsProcessState,
  ));
}

/// Create a copy of NotificationsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationsProcessStateCopyWith<$Res> get status {
  
  return $NotificationsProcessStateCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}

/// @nodoc
mixin _$NotificationsProcessState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationsProcessState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NotificationsProcessState()';
}


}

/// @nodoc
class $NotificationsProcessStateCopyWith<$Res>  {
$NotificationsProcessStateCopyWith(NotificationsProcessState _, $Res Function(NotificationsProcessState) __);
}


/// Adds pattern-matching-related methods to [NotificationsProcessState].
extension NotificationsProcessStatePatterns on NotificationsProcessState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( NotificationsProcessStateIdl value)?  idl,TResult Function( NotificationsProcessStateLoading value)?  loading,TResult Function( NotificationsProcessStateNoPermission value)?  noPermission,TResult Function( NotificationsProcessStateHavePermission value)?  havePermission,required TResult orElse(),}){
final _that = this;
switch (_that) {
case NotificationsProcessStateIdl() when idl != null:
return idl(_that);case NotificationsProcessStateLoading() when loading != null:
return loading(_that);case NotificationsProcessStateNoPermission() when noPermission != null:
return noPermission(_that);case NotificationsProcessStateHavePermission() when havePermission != null:
return havePermission(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( NotificationsProcessStateIdl value)  idl,required TResult Function( NotificationsProcessStateLoading value)  loading,required TResult Function( NotificationsProcessStateNoPermission value)  noPermission,required TResult Function( NotificationsProcessStateHavePermission value)  havePermission,}){
final _that = this;
switch (_that) {
case NotificationsProcessStateIdl():
return idl(_that);case NotificationsProcessStateLoading():
return loading(_that);case NotificationsProcessStateNoPermission():
return noPermission(_that);case NotificationsProcessStateHavePermission():
return havePermission(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( NotificationsProcessStateIdl value)?  idl,TResult? Function( NotificationsProcessStateLoading value)?  loading,TResult? Function( NotificationsProcessStateNoPermission value)?  noPermission,TResult? Function( NotificationsProcessStateHavePermission value)?  havePermission,}){
final _that = this;
switch (_that) {
case NotificationsProcessStateIdl() when idl != null:
return idl(_that);case NotificationsProcessStateLoading() when loading != null:
return loading(_that);case NotificationsProcessStateNoPermission() when noPermission != null:
return noPermission(_that);case NotificationsProcessStateHavePermission() when havePermission != null:
return havePermission(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  idl,TResult Function()?  loading,TResult Function()?  noPermission,TResult Function()?  havePermission,required TResult orElse(),}) {final _that = this;
switch (_that) {
case NotificationsProcessStateIdl() when idl != null:
return idl();case NotificationsProcessStateLoading() when loading != null:
return loading();case NotificationsProcessStateNoPermission() when noPermission != null:
return noPermission();case NotificationsProcessStateHavePermission() when havePermission != null:
return havePermission();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  idl,required TResult Function()  loading,required TResult Function()  noPermission,required TResult Function()  havePermission,}) {final _that = this;
switch (_that) {
case NotificationsProcessStateIdl():
return idl();case NotificationsProcessStateLoading():
return loading();case NotificationsProcessStateNoPermission():
return noPermission();case NotificationsProcessStateHavePermission():
return havePermission();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  idl,TResult? Function()?  loading,TResult? Function()?  noPermission,TResult? Function()?  havePermission,}) {final _that = this;
switch (_that) {
case NotificationsProcessStateIdl() when idl != null:
return idl();case NotificationsProcessStateLoading() when loading != null:
return loading();case NotificationsProcessStateNoPermission() when noPermission != null:
return noPermission();case NotificationsProcessStateHavePermission() when havePermission != null:
return havePermission();case _:
  return null;

}
}

}

/// @nodoc


class NotificationsProcessStateIdl implements NotificationsProcessState {
  const NotificationsProcessStateIdl();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationsProcessStateIdl);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NotificationsProcessState.idl()';
}


}




/// @nodoc


class NotificationsProcessStateLoading implements NotificationsProcessState {
  const NotificationsProcessStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationsProcessStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NotificationsProcessState.loading()';
}


}




/// @nodoc


class NotificationsProcessStateNoPermission implements NotificationsProcessState {
  const NotificationsProcessStateNoPermission();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationsProcessStateNoPermission);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NotificationsProcessState.noPermission()';
}


}




/// @nodoc


class NotificationsProcessStateHavePermission implements NotificationsProcessState {
  const NotificationsProcessStateHavePermission();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationsProcessStateHavePermission);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NotificationsProcessState.havePermission()';
}


}




// dart format on
