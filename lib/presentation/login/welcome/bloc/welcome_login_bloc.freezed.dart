// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'welcome_login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WelcomeLoginEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WelcomeLoginEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WelcomeLoginEvent()';
}


}

/// @nodoc
class $WelcomeLoginEventCopyWith<$Res>  {
$WelcomeLoginEventCopyWith(WelcomeLoginEvent _, $Res Function(WelcomeLoginEvent) __);
}


/// Adds pattern-matching-related methods to [WelcomeLoginEvent].
extension WelcomeLoginEventPatterns on WelcomeLoginEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GoogleSignin value)?  googleSignin,TResult Function( _AppleSignin value)?  appleSignin,TResult Function( _CheckUserExistance value)?  checkUserExistance,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GoogleSignin() when googleSignin != null:
return googleSignin(_that);case _AppleSignin() when appleSignin != null:
return appleSignin(_that);case _CheckUserExistance() when checkUserExistance != null:
return checkUserExistance(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GoogleSignin value)  googleSignin,required TResult Function( _AppleSignin value)  appleSignin,required TResult Function( _CheckUserExistance value)  checkUserExistance,}){
final _that = this;
switch (_that) {
case _GoogleSignin():
return googleSignin(_that);case _AppleSignin():
return appleSignin(_that);case _CheckUserExistance():
return checkUserExistance(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GoogleSignin value)?  googleSignin,TResult? Function( _AppleSignin value)?  appleSignin,TResult? Function( _CheckUserExistance value)?  checkUserExistance,}){
final _that = this;
switch (_that) {
case _GoogleSignin() when googleSignin != null:
return googleSignin(_that);case _AppleSignin() when appleSignin != null:
return appleSignin(_that);case _CheckUserExistance() when checkUserExistance != null:
return checkUserExistance(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  googleSignin,TResult Function()?  appleSignin,TResult Function( String signInMethod)?  checkUserExistance,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GoogleSignin() when googleSignin != null:
return googleSignin();case _AppleSignin() when appleSignin != null:
return appleSignin();case _CheckUserExistance() when checkUserExistance != null:
return checkUserExistance(_that.signInMethod);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  googleSignin,required TResult Function()  appleSignin,required TResult Function( String signInMethod)  checkUserExistance,}) {final _that = this;
switch (_that) {
case _GoogleSignin():
return googleSignin();case _AppleSignin():
return appleSignin();case _CheckUserExistance():
return checkUserExistance(_that.signInMethod);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  googleSignin,TResult? Function()?  appleSignin,TResult? Function( String signInMethod)?  checkUserExistance,}) {final _that = this;
switch (_that) {
case _GoogleSignin() when googleSignin != null:
return googleSignin();case _AppleSignin() when appleSignin != null:
return appleSignin();case _CheckUserExistance() when checkUserExistance != null:
return checkUserExistance(_that.signInMethod);case _:
  return null;

}
}

}

/// @nodoc


class _GoogleSignin implements WelcomeLoginEvent {
  const _GoogleSignin();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GoogleSignin);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WelcomeLoginEvent.googleSignin()';
}


}




/// @nodoc


class _AppleSignin implements WelcomeLoginEvent {
  const _AppleSignin();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppleSignin);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WelcomeLoginEvent.appleSignin()';
}


}




/// @nodoc


class _CheckUserExistance implements WelcomeLoginEvent {
  const _CheckUserExistance({required this.signInMethod});
  

 final  String signInMethod;

/// Create a copy of WelcomeLoginEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckUserExistanceCopyWith<_CheckUserExistance> get copyWith => __$CheckUserExistanceCopyWithImpl<_CheckUserExistance>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckUserExistance&&(identical(other.signInMethod, signInMethod) || other.signInMethod == signInMethod));
}


@override
int get hashCode => Object.hash(runtimeType,signInMethod);

@override
String toString() {
  return 'WelcomeLoginEvent.checkUserExistance(signInMethod: $signInMethod)';
}


}

/// @nodoc
abstract mixin class _$CheckUserExistanceCopyWith<$Res> implements $WelcomeLoginEventCopyWith<$Res> {
  factory _$CheckUserExistanceCopyWith(_CheckUserExistance value, $Res Function(_CheckUserExistance) _then) = __$CheckUserExistanceCopyWithImpl;
@useResult
$Res call({
 String signInMethod
});




}
/// @nodoc
class __$CheckUserExistanceCopyWithImpl<$Res>
    implements _$CheckUserExistanceCopyWith<$Res> {
  __$CheckUserExistanceCopyWithImpl(this._self, this._then);

  final _CheckUserExistance _self;
  final $Res Function(_CheckUserExistance) _then;

/// Create a copy of WelcomeLoginEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? signInMethod = null,}) {
  return _then(_CheckUserExistance(
signInMethod: null == signInMethod ? _self.signInMethod : signInMethod // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$WelcomeLoginState {

 WelcomeLoginProccessState get proccessState;
/// Create a copy of WelcomeLoginState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WelcomeLoginStateCopyWith<WelcomeLoginState> get copyWith => _$WelcomeLoginStateCopyWithImpl<WelcomeLoginState>(this as WelcomeLoginState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WelcomeLoginState&&(identical(other.proccessState, proccessState) || other.proccessState == proccessState));
}


@override
int get hashCode => Object.hash(runtimeType,proccessState);

@override
String toString() {
  return 'WelcomeLoginState(proccessState: $proccessState)';
}


}

/// @nodoc
abstract mixin class $WelcomeLoginStateCopyWith<$Res>  {
  factory $WelcomeLoginStateCopyWith(WelcomeLoginState value, $Res Function(WelcomeLoginState) _then) = _$WelcomeLoginStateCopyWithImpl;
@useResult
$Res call({
 WelcomeLoginProccessState proccessState
});


$WelcomeLoginProccessStateCopyWith<$Res> get proccessState;

}
/// @nodoc
class _$WelcomeLoginStateCopyWithImpl<$Res>
    implements $WelcomeLoginStateCopyWith<$Res> {
  _$WelcomeLoginStateCopyWithImpl(this._self, this._then);

  final WelcomeLoginState _self;
  final $Res Function(WelcomeLoginState) _then;

/// Create a copy of WelcomeLoginState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? proccessState = null,}) {
  return _then(_self.copyWith(
proccessState: null == proccessState ? _self.proccessState : proccessState // ignore: cast_nullable_to_non_nullable
as WelcomeLoginProccessState,
  ));
}
/// Create a copy of WelcomeLoginState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WelcomeLoginProccessStateCopyWith<$Res> get proccessState {
  
  return $WelcomeLoginProccessStateCopyWith<$Res>(_self.proccessState, (value) {
    return _then(_self.copyWith(proccessState: value));
  });
}
}


/// Adds pattern-matching-related methods to [WelcomeLoginState].
extension WelcomeLoginStatePatterns on WelcomeLoginState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WelcomeLoginState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WelcomeLoginState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WelcomeLoginState value)  $default,){
final _that = this;
switch (_that) {
case _WelcomeLoginState():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WelcomeLoginState value)?  $default,){
final _that = this;
switch (_that) {
case _WelcomeLoginState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( WelcomeLoginProccessState proccessState)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WelcomeLoginState() when $default != null:
return $default(_that.proccessState);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( WelcomeLoginProccessState proccessState)  $default,) {final _that = this;
switch (_that) {
case _WelcomeLoginState():
return $default(_that.proccessState);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( WelcomeLoginProccessState proccessState)?  $default,) {final _that = this;
switch (_that) {
case _WelcomeLoginState() when $default != null:
return $default(_that.proccessState);case _:
  return null;

}
}

}

/// @nodoc


class _WelcomeLoginState implements WelcomeLoginState {
  const _WelcomeLoginState({this.proccessState = const WelcomeLoginProccessState.idle()});
  

@override@JsonKey() final  WelcomeLoginProccessState proccessState;

/// Create a copy of WelcomeLoginState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WelcomeLoginStateCopyWith<_WelcomeLoginState> get copyWith => __$WelcomeLoginStateCopyWithImpl<_WelcomeLoginState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WelcomeLoginState&&(identical(other.proccessState, proccessState) || other.proccessState == proccessState));
}


@override
int get hashCode => Object.hash(runtimeType,proccessState);

@override
String toString() {
  return 'WelcomeLoginState(proccessState: $proccessState)';
}


}

/// @nodoc
abstract mixin class _$WelcomeLoginStateCopyWith<$Res> implements $WelcomeLoginStateCopyWith<$Res> {
  factory _$WelcomeLoginStateCopyWith(_WelcomeLoginState value, $Res Function(_WelcomeLoginState) _then) = __$WelcomeLoginStateCopyWithImpl;
@override @useResult
$Res call({
 WelcomeLoginProccessState proccessState
});


@override $WelcomeLoginProccessStateCopyWith<$Res> get proccessState;

}
/// @nodoc
class __$WelcomeLoginStateCopyWithImpl<$Res>
    implements _$WelcomeLoginStateCopyWith<$Res> {
  __$WelcomeLoginStateCopyWithImpl(this._self, this._then);

  final _WelcomeLoginState _self;
  final $Res Function(_WelcomeLoginState) _then;

/// Create a copy of WelcomeLoginState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? proccessState = null,}) {
  return _then(_WelcomeLoginState(
proccessState: null == proccessState ? _self.proccessState : proccessState // ignore: cast_nullable_to_non_nullable
as WelcomeLoginProccessState,
  ));
}

/// Create a copy of WelcomeLoginState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WelcomeLoginProccessStateCopyWith<$Res> get proccessState {
  
  return $WelcomeLoginProccessStateCopyWith<$Res>(_self.proccessState, (value) {
    return _then(_self.copyWith(proccessState: value));
  });
}
}

/// @nodoc
mixin _$WelcomeLoginProccessState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WelcomeLoginProccessState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WelcomeLoginProccessState()';
}


}

/// @nodoc
class $WelcomeLoginProccessStateCopyWith<$Res>  {
$WelcomeLoginProccessStateCopyWith(WelcomeLoginProccessState _, $Res Function(WelcomeLoginProccessState) __);
}


/// Adds pattern-matching-related methods to [WelcomeLoginProccessState].
extension WelcomeLoginProccessStatePatterns on WelcomeLoginProccessState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( WelcomeLoginProccessStateIdle value)?  idle,TResult Function( WelcomeLoginProccessStateLoading value)?  loading,TResult Function( WelcomeLoginProccessStateSuccess value)?  success,TResult Function( WelcomeLoginProccessStateError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case WelcomeLoginProccessStateIdle() when idle != null:
return idle(_that);case WelcomeLoginProccessStateLoading() when loading != null:
return loading(_that);case WelcomeLoginProccessStateSuccess() when success != null:
return success(_that);case WelcomeLoginProccessStateError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( WelcomeLoginProccessStateIdle value)  idle,required TResult Function( WelcomeLoginProccessStateLoading value)  loading,required TResult Function( WelcomeLoginProccessStateSuccess value)  success,required TResult Function( WelcomeLoginProccessStateError value)  error,}){
final _that = this;
switch (_that) {
case WelcomeLoginProccessStateIdle():
return idle(_that);case WelcomeLoginProccessStateLoading():
return loading(_that);case WelcomeLoginProccessStateSuccess():
return success(_that);case WelcomeLoginProccessStateError():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( WelcomeLoginProccessStateIdle value)?  idle,TResult? Function( WelcomeLoginProccessStateLoading value)?  loading,TResult? Function( WelcomeLoginProccessStateSuccess value)?  success,TResult? Function( WelcomeLoginProccessStateError value)?  error,}){
final _that = this;
switch (_that) {
case WelcomeLoginProccessStateIdle() when idle != null:
return idle(_that);case WelcomeLoginProccessStateLoading() when loading != null:
return loading(_that);case WelcomeLoginProccessStateSuccess() when success != null:
return success(_that);case WelcomeLoginProccessStateError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  idle,TResult Function()?  loading,TResult Function( bool hasAccount)?  success,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case WelcomeLoginProccessStateIdle() when idle != null:
return idle();case WelcomeLoginProccessStateLoading() when loading != null:
return loading();case WelcomeLoginProccessStateSuccess() when success != null:
return success(_that.hasAccount);case WelcomeLoginProccessStateError() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  idle,required TResult Function()  loading,required TResult Function( bool hasAccount)  success,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case WelcomeLoginProccessStateIdle():
return idle();case WelcomeLoginProccessStateLoading():
return loading();case WelcomeLoginProccessStateSuccess():
return success(_that.hasAccount);case WelcomeLoginProccessStateError():
return error(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  idle,TResult? Function()?  loading,TResult? Function( bool hasAccount)?  success,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case WelcomeLoginProccessStateIdle() when idle != null:
return idle();case WelcomeLoginProccessStateLoading() when loading != null:
return loading();case WelcomeLoginProccessStateSuccess() when success != null:
return success(_that.hasAccount);case WelcomeLoginProccessStateError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class WelcomeLoginProccessStateIdle implements WelcomeLoginProccessState {
  const WelcomeLoginProccessStateIdle();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WelcomeLoginProccessStateIdle);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WelcomeLoginProccessState.idle()';
}


}




/// @nodoc


class WelcomeLoginProccessStateLoading implements WelcomeLoginProccessState {
  const WelcomeLoginProccessStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WelcomeLoginProccessStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WelcomeLoginProccessState.loading()';
}


}




/// @nodoc


class WelcomeLoginProccessStateSuccess implements WelcomeLoginProccessState {
  const WelcomeLoginProccessStateSuccess(this.hasAccount);
  

 final  bool hasAccount;

/// Create a copy of WelcomeLoginProccessState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WelcomeLoginProccessStateSuccessCopyWith<WelcomeLoginProccessStateSuccess> get copyWith => _$WelcomeLoginProccessStateSuccessCopyWithImpl<WelcomeLoginProccessStateSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WelcomeLoginProccessStateSuccess&&(identical(other.hasAccount, hasAccount) || other.hasAccount == hasAccount));
}


@override
int get hashCode => Object.hash(runtimeType,hasAccount);

@override
String toString() {
  return 'WelcomeLoginProccessState.success(hasAccount: $hasAccount)';
}


}

/// @nodoc
abstract mixin class $WelcomeLoginProccessStateSuccessCopyWith<$Res> implements $WelcomeLoginProccessStateCopyWith<$Res> {
  factory $WelcomeLoginProccessStateSuccessCopyWith(WelcomeLoginProccessStateSuccess value, $Res Function(WelcomeLoginProccessStateSuccess) _then) = _$WelcomeLoginProccessStateSuccessCopyWithImpl;
@useResult
$Res call({
 bool hasAccount
});




}
/// @nodoc
class _$WelcomeLoginProccessStateSuccessCopyWithImpl<$Res>
    implements $WelcomeLoginProccessStateSuccessCopyWith<$Res> {
  _$WelcomeLoginProccessStateSuccessCopyWithImpl(this._self, this._then);

  final WelcomeLoginProccessStateSuccess _self;
  final $Res Function(WelcomeLoginProccessStateSuccess) _then;

/// Create a copy of WelcomeLoginProccessState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? hasAccount = null,}) {
  return _then(WelcomeLoginProccessStateSuccess(
null == hasAccount ? _self.hasAccount : hasAccount // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class WelcomeLoginProccessStateError implements WelcomeLoginProccessState {
  const WelcomeLoginProccessStateError(this.message);
  

 final  String message;

/// Create a copy of WelcomeLoginProccessState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WelcomeLoginProccessStateErrorCopyWith<WelcomeLoginProccessStateError> get copyWith => _$WelcomeLoginProccessStateErrorCopyWithImpl<WelcomeLoginProccessStateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WelcomeLoginProccessStateError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'WelcomeLoginProccessState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $WelcomeLoginProccessStateErrorCopyWith<$Res> implements $WelcomeLoginProccessStateCopyWith<$Res> {
  factory $WelcomeLoginProccessStateErrorCopyWith(WelcomeLoginProccessStateError value, $Res Function(WelcomeLoginProccessStateError) _then) = _$WelcomeLoginProccessStateErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$WelcomeLoginProccessStateErrorCopyWithImpl<$Res>
    implements $WelcomeLoginProccessStateErrorCopyWith<$Res> {
  _$WelcomeLoginProccessStateErrorCopyWithImpl(this._self, this._then);

  final WelcomeLoginProccessStateError _self;
  final $Res Function(WelcomeLoginProccessStateError) _then;

/// Create a copy of WelcomeLoginProccessState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(WelcomeLoginProccessStateError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
