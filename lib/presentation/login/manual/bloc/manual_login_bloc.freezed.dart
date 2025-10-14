// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manual_login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ManualLoginEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ManualLoginEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ManualLoginEvent()';
}


}

/// @nodoc
class $ManualLoginEventCopyWith<$Res>  {
$ManualLoginEventCopyWith(ManualLoginEvent _, $Res Function(ManualLoginEvent) __);
}


/// Adds pattern-matching-related methods to [ManualLoginEvent].
extension ManualLoginEventPatterns on ManualLoginEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ManualInitialValues value)?  initialValues,TResult Function( _ManualUpdateLoginButtonEnablity value)?  updateLoginButtonEnablity,TResult Function( _ManualLoginPressed value)?  loginPressed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ManualInitialValues() when initialValues != null:
return initialValues(_that);case _ManualUpdateLoginButtonEnablity() when updateLoginButtonEnablity != null:
return updateLoginButtonEnablity(_that);case _ManualLoginPressed() when loginPressed != null:
return loginPressed(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ManualInitialValues value)  initialValues,required TResult Function( _ManualUpdateLoginButtonEnablity value)  updateLoginButtonEnablity,required TResult Function( _ManualLoginPressed value)  loginPressed,}){
final _that = this;
switch (_that) {
case _ManualInitialValues():
return initialValues(_that);case _ManualUpdateLoginButtonEnablity():
return updateLoginButtonEnablity(_that);case _ManualLoginPressed():
return loginPressed(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ManualInitialValues value)?  initialValues,TResult? Function( _ManualUpdateLoginButtonEnablity value)?  updateLoginButtonEnablity,TResult? Function( _ManualLoginPressed value)?  loginPressed,}){
final _that = this;
switch (_that) {
case _ManualInitialValues() when initialValues != null:
return initialValues(_that);case _ManualUpdateLoginButtonEnablity() when updateLoginButtonEnablity != null:
return updateLoginButtonEnablity(_that);case _ManualLoginPressed() when loginPressed != null:
return loginPressed(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initialValues,TResult Function( IslamMobLocalizations localizations,  String email,  String password)?  updateLoginButtonEnablity,TResult Function( String email,  String password,  bool savedCradintial)?  loginPressed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ManualInitialValues() when initialValues != null:
return initialValues();case _ManualUpdateLoginButtonEnablity() when updateLoginButtonEnablity != null:
return updateLoginButtonEnablity(_that.localizations,_that.email,_that.password);case _ManualLoginPressed() when loginPressed != null:
return loginPressed(_that.email,_that.password,_that.savedCradintial);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initialValues,required TResult Function( IslamMobLocalizations localizations,  String email,  String password)  updateLoginButtonEnablity,required TResult Function( String email,  String password,  bool savedCradintial)  loginPressed,}) {final _that = this;
switch (_that) {
case _ManualInitialValues():
return initialValues();case _ManualUpdateLoginButtonEnablity():
return updateLoginButtonEnablity(_that.localizations,_that.email,_that.password);case _ManualLoginPressed():
return loginPressed(_that.email,_that.password,_that.savedCradintial);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initialValues,TResult? Function( IslamMobLocalizations localizations,  String email,  String password)?  updateLoginButtonEnablity,TResult? Function( String email,  String password,  bool savedCradintial)?  loginPressed,}) {final _that = this;
switch (_that) {
case _ManualInitialValues() when initialValues != null:
return initialValues();case _ManualUpdateLoginButtonEnablity() when updateLoginButtonEnablity != null:
return updateLoginButtonEnablity(_that.localizations,_that.email,_that.password);case _ManualLoginPressed() when loginPressed != null:
return loginPressed(_that.email,_that.password,_that.savedCradintial);case _:
  return null;

}
}

}

/// @nodoc


class _ManualInitialValues implements ManualLoginEvent {
  const _ManualInitialValues();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ManualInitialValues);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ManualLoginEvent.initialValues()';
}


}




/// @nodoc


class _ManualUpdateLoginButtonEnablity implements ManualLoginEvent {
  const _ManualUpdateLoginButtonEnablity({required this.localizations, required this.email, required this.password});
  

 final  IslamMobLocalizations localizations;
 final  String email;
 final  String password;

/// Create a copy of ManualLoginEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ManualUpdateLoginButtonEnablityCopyWith<_ManualUpdateLoginButtonEnablity> get copyWith => __$ManualUpdateLoginButtonEnablityCopyWithImpl<_ManualUpdateLoginButtonEnablity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ManualUpdateLoginButtonEnablity&&(identical(other.localizations, localizations) || other.localizations == localizations)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,localizations,email,password);

@override
String toString() {
  return 'ManualLoginEvent.updateLoginButtonEnablity(localizations: $localizations, email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class _$ManualUpdateLoginButtonEnablityCopyWith<$Res> implements $ManualLoginEventCopyWith<$Res> {
  factory _$ManualUpdateLoginButtonEnablityCopyWith(_ManualUpdateLoginButtonEnablity value, $Res Function(_ManualUpdateLoginButtonEnablity) _then) = __$ManualUpdateLoginButtonEnablityCopyWithImpl;
@useResult
$Res call({
 IslamMobLocalizations localizations, String email, String password
});




}
/// @nodoc
class __$ManualUpdateLoginButtonEnablityCopyWithImpl<$Res>
    implements _$ManualUpdateLoginButtonEnablityCopyWith<$Res> {
  __$ManualUpdateLoginButtonEnablityCopyWithImpl(this._self, this._then);

  final _ManualUpdateLoginButtonEnablity _self;
  final $Res Function(_ManualUpdateLoginButtonEnablity) _then;

/// Create a copy of ManualLoginEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? localizations = null,Object? email = null,Object? password = null,}) {
  return _then(_ManualUpdateLoginButtonEnablity(
localizations: null == localizations ? _self.localizations : localizations // ignore: cast_nullable_to_non_nullable
as IslamMobLocalizations,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ManualLoginPressed implements ManualLoginEvent {
  const _ManualLoginPressed({required this.email, required this.password, required this.savedCradintial});
  

 final  String email;
 final  String password;
 final  bool savedCradintial;

/// Create a copy of ManualLoginEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ManualLoginPressedCopyWith<_ManualLoginPressed> get copyWith => __$ManualLoginPressedCopyWithImpl<_ManualLoginPressed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ManualLoginPressed&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.savedCradintial, savedCradintial) || other.savedCradintial == savedCradintial));
}


@override
int get hashCode => Object.hash(runtimeType,email,password,savedCradintial);

@override
String toString() {
  return 'ManualLoginEvent.loginPressed(email: $email, password: $password, savedCradintial: $savedCradintial)';
}


}

/// @nodoc
abstract mixin class _$ManualLoginPressedCopyWith<$Res> implements $ManualLoginEventCopyWith<$Res> {
  factory _$ManualLoginPressedCopyWith(_ManualLoginPressed value, $Res Function(_ManualLoginPressed) _then) = __$ManualLoginPressedCopyWithImpl;
@useResult
$Res call({
 String email, String password, bool savedCradintial
});




}
/// @nodoc
class __$ManualLoginPressedCopyWithImpl<$Res>
    implements _$ManualLoginPressedCopyWith<$Res> {
  __$ManualLoginPressedCopyWithImpl(this._self, this._then);

  final _ManualLoginPressed _self;
  final $Res Function(_ManualLoginPressed) _then;

/// Create a copy of ManualLoginEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,Object? savedCradintial = null,}) {
  return _then(_ManualLoginPressed(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,savedCradintial: null == savedCradintial ? _self.savedCradintial : savedCradintial // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$ManualLoginState {

 ManualLoginProcessState get processState; bool get isLoginButtonEnabled; String get errorMessage;
/// Create a copy of ManualLoginState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ManualLoginStateCopyWith<ManualLoginState> get copyWith => _$ManualLoginStateCopyWithImpl<ManualLoginState>(this as ManualLoginState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ManualLoginState&&(identical(other.processState, processState) || other.processState == processState)&&(identical(other.isLoginButtonEnabled, isLoginButtonEnabled) || other.isLoginButtonEnabled == isLoginButtonEnabled)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,processState,isLoginButtonEnabled,errorMessage);

@override
String toString() {
  return 'ManualLoginState(processState: $processState, isLoginButtonEnabled: $isLoginButtonEnabled, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $ManualLoginStateCopyWith<$Res>  {
  factory $ManualLoginStateCopyWith(ManualLoginState value, $Res Function(ManualLoginState) _then) = _$ManualLoginStateCopyWithImpl;
@useResult
$Res call({
 ManualLoginProcessState processState, bool isLoginButtonEnabled, String errorMessage
});


$ManualLoginProcessStateCopyWith<$Res> get processState;

}
/// @nodoc
class _$ManualLoginStateCopyWithImpl<$Res>
    implements $ManualLoginStateCopyWith<$Res> {
  _$ManualLoginStateCopyWithImpl(this._self, this._then);

  final ManualLoginState _self;
  final $Res Function(ManualLoginState) _then;

/// Create a copy of ManualLoginState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? processState = null,Object? isLoginButtonEnabled = null,Object? errorMessage = null,}) {
  return _then(_self.copyWith(
processState: null == processState ? _self.processState : processState // ignore: cast_nullable_to_non_nullable
as ManualLoginProcessState,isLoginButtonEnabled: null == isLoginButtonEnabled ? _self.isLoginButtonEnabled : isLoginButtonEnabled // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of ManualLoginState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ManualLoginProcessStateCopyWith<$Res> get processState {
  
  return $ManualLoginProcessStateCopyWith<$Res>(_self.processState, (value) {
    return _then(_self.copyWith(processState: value));
  });
}
}


/// Adds pattern-matching-related methods to [ManualLoginState].
extension ManualLoginStatePatterns on ManualLoginState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ManualLoginState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ManualLoginState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ManualLoginState value)  $default,){
final _that = this;
switch (_that) {
case _ManualLoginState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ManualLoginState value)?  $default,){
final _that = this;
switch (_that) {
case _ManualLoginState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ManualLoginProcessState processState,  bool isLoginButtonEnabled,  String errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ManualLoginState() when $default != null:
return $default(_that.processState,_that.isLoginButtonEnabled,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ManualLoginProcessState processState,  bool isLoginButtonEnabled,  String errorMessage)  $default,) {final _that = this;
switch (_that) {
case _ManualLoginState():
return $default(_that.processState,_that.isLoginButtonEnabled,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ManualLoginProcessState processState,  bool isLoginButtonEnabled,  String errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _ManualLoginState() when $default != null:
return $default(_that.processState,_that.isLoginButtonEnabled,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _ManualLoginState implements ManualLoginState {
  const _ManualLoginState({this.processState = const ManualLoginProcessState.loading(), this.isLoginButtonEnabled = false, this.errorMessage = ""});
  

@override@JsonKey() final  ManualLoginProcessState processState;
@override@JsonKey() final  bool isLoginButtonEnabled;
@override@JsonKey() final  String errorMessage;

/// Create a copy of ManualLoginState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ManualLoginStateCopyWith<_ManualLoginState> get copyWith => __$ManualLoginStateCopyWithImpl<_ManualLoginState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ManualLoginState&&(identical(other.processState, processState) || other.processState == processState)&&(identical(other.isLoginButtonEnabled, isLoginButtonEnabled) || other.isLoginButtonEnabled == isLoginButtonEnabled)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,processState,isLoginButtonEnabled,errorMessage);

@override
String toString() {
  return 'ManualLoginState(processState: $processState, isLoginButtonEnabled: $isLoginButtonEnabled, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$ManualLoginStateCopyWith<$Res> implements $ManualLoginStateCopyWith<$Res> {
  factory _$ManualLoginStateCopyWith(_ManualLoginState value, $Res Function(_ManualLoginState) _then) = __$ManualLoginStateCopyWithImpl;
@override @useResult
$Res call({
 ManualLoginProcessState processState, bool isLoginButtonEnabled, String errorMessage
});


@override $ManualLoginProcessStateCopyWith<$Res> get processState;

}
/// @nodoc
class __$ManualLoginStateCopyWithImpl<$Res>
    implements _$ManualLoginStateCopyWith<$Res> {
  __$ManualLoginStateCopyWithImpl(this._self, this._then);

  final _ManualLoginState _self;
  final $Res Function(_ManualLoginState) _then;

/// Create a copy of ManualLoginState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? processState = null,Object? isLoginButtonEnabled = null,Object? errorMessage = null,}) {
  return _then(_ManualLoginState(
processState: null == processState ? _self.processState : processState // ignore: cast_nullable_to_non_nullable
as ManualLoginProcessState,isLoginButtonEnabled: null == isLoginButtonEnabled ? _self.isLoginButtonEnabled : isLoginButtonEnabled // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of ManualLoginState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ManualLoginProcessStateCopyWith<$Res> get processState {
  
  return $ManualLoginProcessStateCopyWith<$Res>(_self.processState, (value) {
    return _then(_self.copyWith(processState: value));
  });
}
}

/// @nodoc
mixin _$ManualLoginProcessState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ManualLoginProcessState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ManualLoginProcessState()';
}


}

/// @nodoc
class $ManualLoginProcessStateCopyWith<$Res>  {
$ManualLoginProcessStateCopyWith(ManualLoginProcessState _, $Res Function(ManualLoginProcessState) __);
}


/// Adds pattern-matching-related methods to [ManualLoginProcessState].
extension ManualLoginProcessStatePatterns on ManualLoginProcessState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ManualLoginProcessLoading value)?  loading,TResult Function( ManualLoginProcessIdl value)?  idl,TResult Function( ManualLoginProcessSuccess value)?  success,TResult Function( ManualLoginProcessError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ManualLoginProcessLoading() when loading != null:
return loading(_that);case ManualLoginProcessIdl() when idl != null:
return idl(_that);case ManualLoginProcessSuccess() when success != null:
return success(_that);case ManualLoginProcessError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ManualLoginProcessLoading value)  loading,required TResult Function( ManualLoginProcessIdl value)  idl,required TResult Function( ManualLoginProcessSuccess value)  success,required TResult Function( ManualLoginProcessError value)  error,}){
final _that = this;
switch (_that) {
case ManualLoginProcessLoading():
return loading(_that);case ManualLoginProcessIdl():
return idl(_that);case ManualLoginProcessSuccess():
return success(_that);case ManualLoginProcessError():
return error(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ManualLoginProcessLoading value)?  loading,TResult? Function( ManualLoginProcessIdl value)?  idl,TResult? Function( ManualLoginProcessSuccess value)?  success,TResult? Function( ManualLoginProcessError value)?  error,}){
final _that = this;
switch (_that) {
case ManualLoginProcessLoading() when loading != null:
return loading(_that);case ManualLoginProcessIdl() when idl != null:
return idl(_that);case ManualLoginProcessSuccess() when success != null:
return success(_that);case ManualLoginProcessError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( String email,  String password)?  idl,TResult Function()?  success,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ManualLoginProcessLoading() when loading != null:
return loading();case ManualLoginProcessIdl() when idl != null:
return idl(_that.email,_that.password);case ManualLoginProcessSuccess() when success != null:
return success();case ManualLoginProcessError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( String email,  String password)  idl,required TResult Function()  success,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case ManualLoginProcessLoading():
return loading();case ManualLoginProcessIdl():
return idl(_that.email,_that.password);case ManualLoginProcessSuccess():
return success();case ManualLoginProcessError():
return error(_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( String email,  String password)?  idl,TResult? Function()?  success,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case ManualLoginProcessLoading() when loading != null:
return loading();case ManualLoginProcessIdl() when idl != null:
return idl(_that.email,_that.password);case ManualLoginProcessSuccess() when success != null:
return success();case ManualLoginProcessError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class ManualLoginProcessLoading implements ManualLoginProcessState {
  const ManualLoginProcessLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ManualLoginProcessLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ManualLoginProcessState.loading()';
}


}




/// @nodoc


class ManualLoginProcessIdl implements ManualLoginProcessState {
  const ManualLoginProcessIdl({required this.email, required this.password});
  

 final  String email;
 final  String password;

/// Create a copy of ManualLoginProcessState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ManualLoginProcessIdlCopyWith<ManualLoginProcessIdl> get copyWith => _$ManualLoginProcessIdlCopyWithImpl<ManualLoginProcessIdl>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ManualLoginProcessIdl&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString() {
  return 'ManualLoginProcessState.idl(email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class $ManualLoginProcessIdlCopyWith<$Res> implements $ManualLoginProcessStateCopyWith<$Res> {
  factory $ManualLoginProcessIdlCopyWith(ManualLoginProcessIdl value, $Res Function(ManualLoginProcessIdl) _then) = _$ManualLoginProcessIdlCopyWithImpl;
@useResult
$Res call({
 String email, String password
});




}
/// @nodoc
class _$ManualLoginProcessIdlCopyWithImpl<$Res>
    implements $ManualLoginProcessIdlCopyWith<$Res> {
  _$ManualLoginProcessIdlCopyWithImpl(this._self, this._then);

  final ManualLoginProcessIdl _self;
  final $Res Function(ManualLoginProcessIdl) _then;

/// Create a copy of ManualLoginProcessState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,}) {
  return _then(ManualLoginProcessIdl(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ManualLoginProcessSuccess implements ManualLoginProcessState {
  const ManualLoginProcessSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ManualLoginProcessSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ManualLoginProcessState.success()';
}


}




/// @nodoc


class ManualLoginProcessError implements ManualLoginProcessState {
  const ManualLoginProcessError(this.message);
  

 final  String message;

/// Create a copy of ManualLoginProcessState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ManualLoginProcessErrorCopyWith<ManualLoginProcessError> get copyWith => _$ManualLoginProcessErrorCopyWithImpl<ManualLoginProcessError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ManualLoginProcessError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ManualLoginProcessState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $ManualLoginProcessErrorCopyWith<$Res> implements $ManualLoginProcessStateCopyWith<$Res> {
  factory $ManualLoginProcessErrorCopyWith(ManualLoginProcessError value, $Res Function(ManualLoginProcessError) _then) = _$ManualLoginProcessErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ManualLoginProcessErrorCopyWithImpl<$Res>
    implements $ManualLoginProcessErrorCopyWith<$Res> {
  _$ManualLoginProcessErrorCopyWithImpl(this._self, this._then);

  final ManualLoginProcessError _self;
  final $Res Function(ManualLoginProcessError) _then;

/// Create a copy of ManualLoginProcessState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ManualLoginProcessError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
