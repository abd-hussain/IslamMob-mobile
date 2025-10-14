// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ForgotPasswordEvent {

 IslamMobLocalizations get localizations; String get email;
/// Create a copy of ForgotPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForgotPasswordEventCopyWith<ForgotPasswordEvent> get copyWith => _$ForgotPasswordEventCopyWithImpl<ForgotPasswordEvent>(this as ForgotPasswordEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgotPasswordEvent&&(identical(other.localizations, localizations) || other.localizations == localizations)&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,localizations,email);

@override
String toString() {
  return 'ForgotPasswordEvent(localizations: $localizations, email: $email)';
}


}

/// @nodoc
abstract mixin class $ForgotPasswordEventCopyWith<$Res>  {
  factory $ForgotPasswordEventCopyWith(ForgotPasswordEvent value, $Res Function(ForgotPasswordEvent) _then) = _$ForgotPasswordEventCopyWithImpl;
@useResult
$Res call({
 IslamMobLocalizations localizations, String email
});




}
/// @nodoc
class _$ForgotPasswordEventCopyWithImpl<$Res>
    implements $ForgotPasswordEventCopyWith<$Res> {
  _$ForgotPasswordEventCopyWithImpl(this._self, this._then);

  final ForgotPasswordEvent _self;
  final $Res Function(ForgotPasswordEvent) _then;

/// Create a copy of ForgotPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? localizations = null,Object? email = null,}) {
  return _then(_self.copyWith(
localizations: null == localizations ? _self.localizations : localizations // ignore: cast_nullable_to_non_nullable
as IslamMobLocalizations,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ForgotPasswordEvent].
extension ForgotPasswordEventPatterns on ForgotPasswordEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _UpdateButtonEnablity value)?  updateButtonEnablity,TResult Function( _ForgotPressed value)?  forgotPressed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateButtonEnablity() when updateButtonEnablity != null:
return updateButtonEnablity(_that);case _ForgotPressed() when forgotPressed != null:
return forgotPressed(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _UpdateButtonEnablity value)  updateButtonEnablity,required TResult Function( _ForgotPressed value)  forgotPressed,}){
final _that = this;
switch (_that) {
case _UpdateButtonEnablity():
return updateButtonEnablity(_that);case _ForgotPressed():
return forgotPressed(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _UpdateButtonEnablity value)?  updateButtonEnablity,TResult? Function( _ForgotPressed value)?  forgotPressed,}){
final _that = this;
switch (_that) {
case _UpdateButtonEnablity() when updateButtonEnablity != null:
return updateButtonEnablity(_that);case _ForgotPressed() when forgotPressed != null:
return forgotPressed(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( IslamMobLocalizations localizations,  String email)?  updateButtonEnablity,TResult Function( IslamMobLocalizations localizations,  String email)?  forgotPressed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateButtonEnablity() when updateButtonEnablity != null:
return updateButtonEnablity(_that.localizations,_that.email);case _ForgotPressed() when forgotPressed != null:
return forgotPressed(_that.localizations,_that.email);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( IslamMobLocalizations localizations,  String email)  updateButtonEnablity,required TResult Function( IslamMobLocalizations localizations,  String email)  forgotPressed,}) {final _that = this;
switch (_that) {
case _UpdateButtonEnablity():
return updateButtonEnablity(_that.localizations,_that.email);case _ForgotPressed():
return forgotPressed(_that.localizations,_that.email);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( IslamMobLocalizations localizations,  String email)?  updateButtonEnablity,TResult? Function( IslamMobLocalizations localizations,  String email)?  forgotPressed,}) {final _that = this;
switch (_that) {
case _UpdateButtonEnablity() when updateButtonEnablity != null:
return updateButtonEnablity(_that.localizations,_that.email);case _ForgotPressed() when forgotPressed != null:
return forgotPressed(_that.localizations,_that.email);case _:
  return null;

}
}

}

/// @nodoc


class _UpdateButtonEnablity implements ForgotPasswordEvent {
  const _UpdateButtonEnablity({required this.localizations, required this.email});
  

@override final  IslamMobLocalizations localizations;
@override final  String email;

/// Create a copy of ForgotPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateButtonEnablityCopyWith<_UpdateButtonEnablity> get copyWith => __$UpdateButtonEnablityCopyWithImpl<_UpdateButtonEnablity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateButtonEnablity&&(identical(other.localizations, localizations) || other.localizations == localizations)&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,localizations,email);

@override
String toString() {
  return 'ForgotPasswordEvent.updateButtonEnablity(localizations: $localizations, email: $email)';
}


}

/// @nodoc
abstract mixin class _$UpdateButtonEnablityCopyWith<$Res> implements $ForgotPasswordEventCopyWith<$Res> {
  factory _$UpdateButtonEnablityCopyWith(_UpdateButtonEnablity value, $Res Function(_UpdateButtonEnablity) _then) = __$UpdateButtonEnablityCopyWithImpl;
@override @useResult
$Res call({
 IslamMobLocalizations localizations, String email
});




}
/// @nodoc
class __$UpdateButtonEnablityCopyWithImpl<$Res>
    implements _$UpdateButtonEnablityCopyWith<$Res> {
  __$UpdateButtonEnablityCopyWithImpl(this._self, this._then);

  final _UpdateButtonEnablity _self;
  final $Res Function(_UpdateButtonEnablity) _then;

/// Create a copy of ForgotPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? localizations = null,Object? email = null,}) {
  return _then(_UpdateButtonEnablity(
localizations: null == localizations ? _self.localizations : localizations // ignore: cast_nullable_to_non_nullable
as IslamMobLocalizations,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ForgotPressed implements ForgotPasswordEvent {
  const _ForgotPressed({required this.localizations, required this.email});
  

@override final  IslamMobLocalizations localizations;
@override final  String email;

/// Create a copy of ForgotPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ForgotPressedCopyWith<_ForgotPressed> get copyWith => __$ForgotPressedCopyWithImpl<_ForgotPressed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ForgotPressed&&(identical(other.localizations, localizations) || other.localizations == localizations)&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,localizations,email);

@override
String toString() {
  return 'ForgotPasswordEvent.forgotPressed(localizations: $localizations, email: $email)';
}


}

/// @nodoc
abstract mixin class _$ForgotPressedCopyWith<$Res> implements $ForgotPasswordEventCopyWith<$Res> {
  factory _$ForgotPressedCopyWith(_ForgotPressed value, $Res Function(_ForgotPressed) _then) = __$ForgotPressedCopyWithImpl;
@override @useResult
$Res call({
 IslamMobLocalizations localizations, String email
});




}
/// @nodoc
class __$ForgotPressedCopyWithImpl<$Res>
    implements _$ForgotPressedCopyWith<$Res> {
  __$ForgotPressedCopyWithImpl(this._self, this._then);

  final _ForgotPressed _self;
  final $Res Function(_ForgotPressed) _then;

/// Create a copy of ForgotPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? localizations = null,Object? email = null,}) {
  return _then(_ForgotPressed(
localizations: null == localizations ? _self.localizations : localizations // ignore: cast_nullable_to_non_nullable
as IslamMobLocalizations,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$ForgotPasswordState {

 ForgotPasswordProcessState get processState; bool get isForgotButtonEnabled; String get errorMessage;
/// Create a copy of ForgotPasswordState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForgotPasswordStateCopyWith<ForgotPasswordState> get copyWith => _$ForgotPasswordStateCopyWithImpl<ForgotPasswordState>(this as ForgotPasswordState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgotPasswordState&&(identical(other.processState, processState) || other.processState == processState)&&(identical(other.isForgotButtonEnabled, isForgotButtonEnabled) || other.isForgotButtonEnabled == isForgotButtonEnabled)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,processState,isForgotButtonEnabled,errorMessage);

@override
String toString() {
  return 'ForgotPasswordState(processState: $processState, isForgotButtonEnabled: $isForgotButtonEnabled, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $ForgotPasswordStateCopyWith<$Res>  {
  factory $ForgotPasswordStateCopyWith(ForgotPasswordState value, $Res Function(ForgotPasswordState) _then) = _$ForgotPasswordStateCopyWithImpl;
@useResult
$Res call({
 ForgotPasswordProcessState processState, bool isForgotButtonEnabled, String errorMessage
});


$ForgotPasswordProcessStateCopyWith<$Res> get processState;

}
/// @nodoc
class _$ForgotPasswordStateCopyWithImpl<$Res>
    implements $ForgotPasswordStateCopyWith<$Res> {
  _$ForgotPasswordStateCopyWithImpl(this._self, this._then);

  final ForgotPasswordState _self;
  final $Res Function(ForgotPasswordState) _then;

/// Create a copy of ForgotPasswordState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? processState = null,Object? isForgotButtonEnabled = null,Object? errorMessage = null,}) {
  return _then(_self.copyWith(
processState: null == processState ? _self.processState : processState // ignore: cast_nullable_to_non_nullable
as ForgotPasswordProcessState,isForgotButtonEnabled: null == isForgotButtonEnabled ? _self.isForgotButtonEnabled : isForgotButtonEnabled // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of ForgotPasswordState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ForgotPasswordProcessStateCopyWith<$Res> get processState {
  
  return $ForgotPasswordProcessStateCopyWith<$Res>(_self.processState, (value) {
    return _then(_self.copyWith(processState: value));
  });
}
}


/// Adds pattern-matching-related methods to [ForgotPasswordState].
extension ForgotPasswordStatePatterns on ForgotPasswordState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ForgotPasswordState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ForgotPasswordState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ForgotPasswordState value)  $default,){
final _that = this;
switch (_that) {
case _ForgotPasswordState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ForgotPasswordState value)?  $default,){
final _that = this;
switch (_that) {
case _ForgotPasswordState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ForgotPasswordProcessState processState,  bool isForgotButtonEnabled,  String errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ForgotPasswordState() when $default != null:
return $default(_that.processState,_that.isForgotButtonEnabled,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ForgotPasswordProcessState processState,  bool isForgotButtonEnabled,  String errorMessage)  $default,) {final _that = this;
switch (_that) {
case _ForgotPasswordState():
return $default(_that.processState,_that.isForgotButtonEnabled,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ForgotPasswordProcessState processState,  bool isForgotButtonEnabled,  String errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _ForgotPasswordState() when $default != null:
return $default(_that.processState,_that.isForgotButtonEnabled,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _ForgotPasswordState implements ForgotPasswordState {
  const _ForgotPasswordState({this.processState = const ForgotPasswordProcessState.idl(), this.isForgotButtonEnabled = false, this.errorMessage = ""});
  

@override@JsonKey() final  ForgotPasswordProcessState processState;
@override@JsonKey() final  bool isForgotButtonEnabled;
@override@JsonKey() final  String errorMessage;

/// Create a copy of ForgotPasswordState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ForgotPasswordStateCopyWith<_ForgotPasswordState> get copyWith => __$ForgotPasswordStateCopyWithImpl<_ForgotPasswordState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ForgotPasswordState&&(identical(other.processState, processState) || other.processState == processState)&&(identical(other.isForgotButtonEnabled, isForgotButtonEnabled) || other.isForgotButtonEnabled == isForgotButtonEnabled)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,processState,isForgotButtonEnabled,errorMessage);

@override
String toString() {
  return 'ForgotPasswordState(processState: $processState, isForgotButtonEnabled: $isForgotButtonEnabled, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$ForgotPasswordStateCopyWith<$Res> implements $ForgotPasswordStateCopyWith<$Res> {
  factory _$ForgotPasswordStateCopyWith(_ForgotPasswordState value, $Res Function(_ForgotPasswordState) _then) = __$ForgotPasswordStateCopyWithImpl;
@override @useResult
$Res call({
 ForgotPasswordProcessState processState, bool isForgotButtonEnabled, String errorMessage
});


@override $ForgotPasswordProcessStateCopyWith<$Res> get processState;

}
/// @nodoc
class __$ForgotPasswordStateCopyWithImpl<$Res>
    implements _$ForgotPasswordStateCopyWith<$Res> {
  __$ForgotPasswordStateCopyWithImpl(this._self, this._then);

  final _ForgotPasswordState _self;
  final $Res Function(_ForgotPasswordState) _then;

/// Create a copy of ForgotPasswordState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? processState = null,Object? isForgotButtonEnabled = null,Object? errorMessage = null,}) {
  return _then(_ForgotPasswordState(
processState: null == processState ? _self.processState : processState // ignore: cast_nullable_to_non_nullable
as ForgotPasswordProcessState,isForgotButtonEnabled: null == isForgotButtonEnabled ? _self.isForgotButtonEnabled : isForgotButtonEnabled // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of ForgotPasswordState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ForgotPasswordProcessStateCopyWith<$Res> get processState {
  
  return $ForgotPasswordProcessStateCopyWith<$Res>(_self.processState, (value) {
    return _then(_self.copyWith(processState: value));
  });
}
}

/// @nodoc
mixin _$ForgotPasswordProcessState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgotPasswordProcessState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ForgotPasswordProcessState()';
}


}

/// @nodoc
class $ForgotPasswordProcessStateCopyWith<$Res>  {
$ForgotPasswordProcessStateCopyWith(ForgotPasswordProcessState _, $Res Function(ForgotPasswordProcessState) __);
}


/// Adds pattern-matching-related methods to [ForgotPasswordProcessState].
extension ForgotPasswordProcessStatePatterns on ForgotPasswordProcessState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ForgotPasswordProcessStateLoading value)?  loading,TResult Function( ForgotPasswordProcessStateIdl value)?  idl,TResult Function( ForgotPasswordProcessStateSuccess value)?  success,TResult Function( ForgotPasswordProcessStateError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ForgotPasswordProcessStateLoading() when loading != null:
return loading(_that);case ForgotPasswordProcessStateIdl() when idl != null:
return idl(_that);case ForgotPasswordProcessStateSuccess() when success != null:
return success(_that);case ForgotPasswordProcessStateError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ForgotPasswordProcessStateLoading value)  loading,required TResult Function( ForgotPasswordProcessStateIdl value)  idl,required TResult Function( ForgotPasswordProcessStateSuccess value)  success,required TResult Function( ForgotPasswordProcessStateError value)  error,}){
final _that = this;
switch (_that) {
case ForgotPasswordProcessStateLoading():
return loading(_that);case ForgotPasswordProcessStateIdl():
return idl(_that);case ForgotPasswordProcessStateSuccess():
return success(_that);case ForgotPasswordProcessStateError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ForgotPasswordProcessStateLoading value)?  loading,TResult? Function( ForgotPasswordProcessStateIdl value)?  idl,TResult? Function( ForgotPasswordProcessStateSuccess value)?  success,TResult? Function( ForgotPasswordProcessStateError value)?  error,}){
final _that = this;
switch (_that) {
case ForgotPasswordProcessStateLoading() when loading != null:
return loading(_that);case ForgotPasswordProcessStateIdl() when idl != null:
return idl(_that);case ForgotPasswordProcessStateSuccess() when success != null:
return success(_that);case ForgotPasswordProcessStateError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function()?  idl,TResult Function()?  success,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ForgotPasswordProcessStateLoading() when loading != null:
return loading();case ForgotPasswordProcessStateIdl() when idl != null:
return idl();case ForgotPasswordProcessStateSuccess() when success != null:
return success();case ForgotPasswordProcessStateError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function()  idl,required TResult Function()  success,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case ForgotPasswordProcessStateLoading():
return loading();case ForgotPasswordProcessStateIdl():
return idl();case ForgotPasswordProcessStateSuccess():
return success();case ForgotPasswordProcessStateError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function()?  idl,TResult? Function()?  success,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case ForgotPasswordProcessStateLoading() when loading != null:
return loading();case ForgotPasswordProcessStateIdl() when idl != null:
return idl();case ForgotPasswordProcessStateSuccess() when success != null:
return success();case ForgotPasswordProcessStateError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class ForgotPasswordProcessStateLoading implements ForgotPasswordProcessState {
  const ForgotPasswordProcessStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgotPasswordProcessStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ForgotPasswordProcessState.loading()';
}


}




/// @nodoc


class ForgotPasswordProcessStateIdl implements ForgotPasswordProcessState {
  const ForgotPasswordProcessStateIdl();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgotPasswordProcessStateIdl);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ForgotPasswordProcessState.idl()';
}


}




/// @nodoc


class ForgotPasswordProcessStateSuccess implements ForgotPasswordProcessState {
  const ForgotPasswordProcessStateSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgotPasswordProcessStateSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ForgotPasswordProcessState.success()';
}


}




/// @nodoc


class ForgotPasswordProcessStateError implements ForgotPasswordProcessState {
  const ForgotPasswordProcessStateError(this.message);
  

 final  String message;

/// Create a copy of ForgotPasswordProcessState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForgotPasswordProcessStateErrorCopyWith<ForgotPasswordProcessStateError> get copyWith => _$ForgotPasswordProcessStateErrorCopyWithImpl<ForgotPasswordProcessStateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgotPasswordProcessStateError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ForgotPasswordProcessState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $ForgotPasswordProcessStateErrorCopyWith<$Res> implements $ForgotPasswordProcessStateCopyWith<$Res> {
  factory $ForgotPasswordProcessStateErrorCopyWith(ForgotPasswordProcessStateError value, $Res Function(ForgotPasswordProcessStateError) _then) = _$ForgotPasswordProcessStateErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ForgotPasswordProcessStateErrorCopyWithImpl<$Res>
    implements $ForgotPasswordProcessStateErrorCopyWith<$Res> {
  _$ForgotPasswordProcessStateErrorCopyWithImpl(this._self, this._then);

  final ForgotPasswordProcessStateError _self;
  final $Res Function(ForgotPasswordProcessStateError) _then;

/// Create a copy of ForgotPasswordProcessState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ForgotPasswordProcessStateError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
