// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChangePasswordEvent {

 IslamMobLocalizations get localizations; String get oldPassword; String get newPassword; String get confirmPassword;
/// Create a copy of ChangePasswordEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangePasswordEventCopyWith<ChangePasswordEvent> get copyWith => _$ChangePasswordEventCopyWithImpl<ChangePasswordEvent>(this as ChangePasswordEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangePasswordEvent&&(identical(other.localizations, localizations) || other.localizations == localizations)&&(identical(other.oldPassword, oldPassword) || other.oldPassword == oldPassword)&&(identical(other.newPassword, newPassword) || other.newPassword == newPassword)&&(identical(other.confirmPassword, confirmPassword) || other.confirmPassword == confirmPassword));
}


@override
int get hashCode => Object.hash(runtimeType,localizations,oldPassword,newPassword,confirmPassword);

@override
String toString() {
  return 'ChangePasswordEvent(localizations: $localizations, oldPassword: $oldPassword, newPassword: $newPassword, confirmPassword: $confirmPassword)';
}


}

/// @nodoc
abstract mixin class $ChangePasswordEventCopyWith<$Res>  {
  factory $ChangePasswordEventCopyWith(ChangePasswordEvent value, $Res Function(ChangePasswordEvent) _then) = _$ChangePasswordEventCopyWithImpl;
@useResult
$Res call({
 IslamMobLocalizations localizations, String oldPassword, String newPassword, String confirmPassword
});




}
/// @nodoc
class _$ChangePasswordEventCopyWithImpl<$Res>
    implements $ChangePasswordEventCopyWith<$Res> {
  _$ChangePasswordEventCopyWithImpl(this._self, this._then);

  final ChangePasswordEvent _self;
  final $Res Function(ChangePasswordEvent) _then;

/// Create a copy of ChangePasswordEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? localizations = null,Object? oldPassword = null,Object? newPassword = null,Object? confirmPassword = null,}) {
  return _then(_self.copyWith(
localizations: null == localizations ? _self.localizations : localizations // ignore: cast_nullable_to_non_nullable
as IslamMobLocalizations,oldPassword: null == oldPassword ? _self.oldPassword : oldPassword // ignore: cast_nullable_to_non_nullable
as String,newPassword: null == newPassword ? _self.newPassword : newPassword // ignore: cast_nullable_to_non_nullable
as String,confirmPassword: null == confirmPassword ? _self.confirmPassword : confirmPassword // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ChangePasswordEvent].
extension ChangePasswordEventPatterns on ChangePasswordEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _UpdateButtonEnablity value)?  updateButtonEnablity,TResult Function( _ChangePressed value)?  changePressed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateButtonEnablity() when updateButtonEnablity != null:
return updateButtonEnablity(_that);case _ChangePressed() when changePressed != null:
return changePressed(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _UpdateButtonEnablity value)  updateButtonEnablity,required TResult Function( _ChangePressed value)  changePressed,}){
final _that = this;
switch (_that) {
case _UpdateButtonEnablity():
return updateButtonEnablity(_that);case _ChangePressed():
return changePressed(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _UpdateButtonEnablity value)?  updateButtonEnablity,TResult? Function( _ChangePressed value)?  changePressed,}){
final _that = this;
switch (_that) {
case _UpdateButtonEnablity() when updateButtonEnablity != null:
return updateButtonEnablity(_that);case _ChangePressed() when changePressed != null:
return changePressed(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( IslamMobLocalizations localizations,  String oldPassword,  String newPassword,  String confirmPassword)?  updateButtonEnablity,TResult Function( IslamMobLocalizations localizations,  String oldPassword,  String newPassword,  String confirmPassword)?  changePressed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateButtonEnablity() when updateButtonEnablity != null:
return updateButtonEnablity(_that.localizations,_that.oldPassword,_that.newPassword,_that.confirmPassword);case _ChangePressed() when changePressed != null:
return changePressed(_that.localizations,_that.oldPassword,_that.newPassword,_that.confirmPassword);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( IslamMobLocalizations localizations,  String oldPassword,  String newPassword,  String confirmPassword)  updateButtonEnablity,required TResult Function( IslamMobLocalizations localizations,  String oldPassword,  String newPassword,  String confirmPassword)  changePressed,}) {final _that = this;
switch (_that) {
case _UpdateButtonEnablity():
return updateButtonEnablity(_that.localizations,_that.oldPassword,_that.newPassword,_that.confirmPassword);case _ChangePressed():
return changePressed(_that.localizations,_that.oldPassword,_that.newPassword,_that.confirmPassword);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( IslamMobLocalizations localizations,  String oldPassword,  String newPassword,  String confirmPassword)?  updateButtonEnablity,TResult? Function( IslamMobLocalizations localizations,  String oldPassword,  String newPassword,  String confirmPassword)?  changePressed,}) {final _that = this;
switch (_that) {
case _UpdateButtonEnablity() when updateButtonEnablity != null:
return updateButtonEnablity(_that.localizations,_that.oldPassword,_that.newPassword,_that.confirmPassword);case _ChangePressed() when changePressed != null:
return changePressed(_that.localizations,_that.oldPassword,_that.newPassword,_that.confirmPassword);case _:
  return null;

}
}

}

/// @nodoc


class _UpdateButtonEnablity implements ChangePasswordEvent {
  const _UpdateButtonEnablity({required this.localizations, required this.oldPassword, required this.newPassword, required this.confirmPassword});
  

@override final  IslamMobLocalizations localizations;
@override final  String oldPassword;
@override final  String newPassword;
@override final  String confirmPassword;

/// Create a copy of ChangePasswordEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateButtonEnablityCopyWith<_UpdateButtonEnablity> get copyWith => __$UpdateButtonEnablityCopyWithImpl<_UpdateButtonEnablity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateButtonEnablity&&(identical(other.localizations, localizations) || other.localizations == localizations)&&(identical(other.oldPassword, oldPassword) || other.oldPassword == oldPassword)&&(identical(other.newPassword, newPassword) || other.newPassword == newPassword)&&(identical(other.confirmPassword, confirmPassword) || other.confirmPassword == confirmPassword));
}


@override
int get hashCode => Object.hash(runtimeType,localizations,oldPassword,newPassword,confirmPassword);

@override
String toString() {
  return 'ChangePasswordEvent.updateButtonEnablity(localizations: $localizations, oldPassword: $oldPassword, newPassword: $newPassword, confirmPassword: $confirmPassword)';
}


}

/// @nodoc
abstract mixin class _$UpdateButtonEnablityCopyWith<$Res> implements $ChangePasswordEventCopyWith<$Res> {
  factory _$UpdateButtonEnablityCopyWith(_UpdateButtonEnablity value, $Res Function(_UpdateButtonEnablity) _then) = __$UpdateButtonEnablityCopyWithImpl;
@override @useResult
$Res call({
 IslamMobLocalizations localizations, String oldPassword, String newPassword, String confirmPassword
});




}
/// @nodoc
class __$UpdateButtonEnablityCopyWithImpl<$Res>
    implements _$UpdateButtonEnablityCopyWith<$Res> {
  __$UpdateButtonEnablityCopyWithImpl(this._self, this._then);

  final _UpdateButtonEnablity _self;
  final $Res Function(_UpdateButtonEnablity) _then;

/// Create a copy of ChangePasswordEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? localizations = null,Object? oldPassword = null,Object? newPassword = null,Object? confirmPassword = null,}) {
  return _then(_UpdateButtonEnablity(
localizations: null == localizations ? _self.localizations : localizations // ignore: cast_nullable_to_non_nullable
as IslamMobLocalizations,oldPassword: null == oldPassword ? _self.oldPassword : oldPassword // ignore: cast_nullable_to_non_nullable
as String,newPassword: null == newPassword ? _self.newPassword : newPassword // ignore: cast_nullable_to_non_nullable
as String,confirmPassword: null == confirmPassword ? _self.confirmPassword : confirmPassword // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ChangePressed implements ChangePasswordEvent {
  const _ChangePressed({required this.localizations, required this.oldPassword, required this.newPassword, required this.confirmPassword});
  

@override final  IslamMobLocalizations localizations;
@override final  String oldPassword;
@override final  String newPassword;
@override final  String confirmPassword;

/// Create a copy of ChangePasswordEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangePressedCopyWith<_ChangePressed> get copyWith => __$ChangePressedCopyWithImpl<_ChangePressed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangePressed&&(identical(other.localizations, localizations) || other.localizations == localizations)&&(identical(other.oldPassword, oldPassword) || other.oldPassword == oldPassword)&&(identical(other.newPassword, newPassword) || other.newPassword == newPassword)&&(identical(other.confirmPassword, confirmPassword) || other.confirmPassword == confirmPassword));
}


@override
int get hashCode => Object.hash(runtimeType,localizations,oldPassword,newPassword,confirmPassword);

@override
String toString() {
  return 'ChangePasswordEvent.changePressed(localizations: $localizations, oldPassword: $oldPassword, newPassword: $newPassword, confirmPassword: $confirmPassword)';
}


}

/// @nodoc
abstract mixin class _$ChangePressedCopyWith<$Res> implements $ChangePasswordEventCopyWith<$Res> {
  factory _$ChangePressedCopyWith(_ChangePressed value, $Res Function(_ChangePressed) _then) = __$ChangePressedCopyWithImpl;
@override @useResult
$Res call({
 IslamMobLocalizations localizations, String oldPassword, String newPassword, String confirmPassword
});




}
/// @nodoc
class __$ChangePressedCopyWithImpl<$Res>
    implements _$ChangePressedCopyWith<$Res> {
  __$ChangePressedCopyWithImpl(this._self, this._then);

  final _ChangePressed _self;
  final $Res Function(_ChangePressed) _then;

/// Create a copy of ChangePasswordEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? localizations = null,Object? oldPassword = null,Object? newPassword = null,Object? confirmPassword = null,}) {
  return _then(_ChangePressed(
localizations: null == localizations ? _self.localizations : localizations // ignore: cast_nullable_to_non_nullable
as IslamMobLocalizations,oldPassword: null == oldPassword ? _self.oldPassword : oldPassword // ignore: cast_nullable_to_non_nullable
as String,newPassword: null == newPassword ? _self.newPassword : newPassword // ignore: cast_nullable_to_non_nullable
as String,confirmPassword: null == confirmPassword ? _self.confirmPassword : confirmPassword // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$ChangePasswordState {

 ChangePasswordProcessState get processState; bool get isButtonEnabled; String get errorMessage;
/// Create a copy of ChangePasswordState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangePasswordStateCopyWith<ChangePasswordState> get copyWith => _$ChangePasswordStateCopyWithImpl<ChangePasswordState>(this as ChangePasswordState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangePasswordState&&(identical(other.processState, processState) || other.processState == processState)&&(identical(other.isButtonEnabled, isButtonEnabled) || other.isButtonEnabled == isButtonEnabled)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,processState,isButtonEnabled,errorMessage);

@override
String toString() {
  return 'ChangePasswordState(processState: $processState, isButtonEnabled: $isButtonEnabled, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $ChangePasswordStateCopyWith<$Res>  {
  factory $ChangePasswordStateCopyWith(ChangePasswordState value, $Res Function(ChangePasswordState) _then) = _$ChangePasswordStateCopyWithImpl;
@useResult
$Res call({
 ChangePasswordProcessState processState, bool isButtonEnabled, String errorMessage
});


$ChangePasswordProcessStateCopyWith<$Res> get processState;

}
/// @nodoc
class _$ChangePasswordStateCopyWithImpl<$Res>
    implements $ChangePasswordStateCopyWith<$Res> {
  _$ChangePasswordStateCopyWithImpl(this._self, this._then);

  final ChangePasswordState _self;
  final $Res Function(ChangePasswordState) _then;

/// Create a copy of ChangePasswordState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? processState = null,Object? isButtonEnabled = null,Object? errorMessage = null,}) {
  return _then(_self.copyWith(
processState: null == processState ? _self.processState : processState // ignore: cast_nullable_to_non_nullable
as ChangePasswordProcessState,isButtonEnabled: null == isButtonEnabled ? _self.isButtonEnabled : isButtonEnabled // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of ChangePasswordState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChangePasswordProcessStateCopyWith<$Res> get processState {
  
  return $ChangePasswordProcessStateCopyWith<$Res>(_self.processState, (value) {
    return _then(_self.copyWith(processState: value));
  });
}
}


/// Adds pattern-matching-related methods to [ChangePasswordState].
extension ChangePasswordStatePatterns on ChangePasswordState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChangePasswordState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChangePasswordState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChangePasswordState value)  $default,){
final _that = this;
switch (_that) {
case _ChangePasswordState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChangePasswordState value)?  $default,){
final _that = this;
switch (_that) {
case _ChangePasswordState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ChangePasswordProcessState processState,  bool isButtonEnabled,  String errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChangePasswordState() when $default != null:
return $default(_that.processState,_that.isButtonEnabled,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ChangePasswordProcessState processState,  bool isButtonEnabled,  String errorMessage)  $default,) {final _that = this;
switch (_that) {
case _ChangePasswordState():
return $default(_that.processState,_that.isButtonEnabled,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ChangePasswordProcessState processState,  bool isButtonEnabled,  String errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _ChangePasswordState() when $default != null:
return $default(_that.processState,_that.isButtonEnabled,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _ChangePasswordState implements ChangePasswordState {
  const _ChangePasswordState({this.processState = const ChangePasswordProcessState.idl(), this.isButtonEnabled = false, this.errorMessage = ""});
  

@override@JsonKey() final  ChangePasswordProcessState processState;
@override@JsonKey() final  bool isButtonEnabled;
@override@JsonKey() final  String errorMessage;

/// Create a copy of ChangePasswordState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangePasswordStateCopyWith<_ChangePasswordState> get copyWith => __$ChangePasswordStateCopyWithImpl<_ChangePasswordState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangePasswordState&&(identical(other.processState, processState) || other.processState == processState)&&(identical(other.isButtonEnabled, isButtonEnabled) || other.isButtonEnabled == isButtonEnabled)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,processState,isButtonEnabled,errorMessage);

@override
String toString() {
  return 'ChangePasswordState(processState: $processState, isButtonEnabled: $isButtonEnabled, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$ChangePasswordStateCopyWith<$Res> implements $ChangePasswordStateCopyWith<$Res> {
  factory _$ChangePasswordStateCopyWith(_ChangePasswordState value, $Res Function(_ChangePasswordState) _then) = __$ChangePasswordStateCopyWithImpl;
@override @useResult
$Res call({
 ChangePasswordProcessState processState, bool isButtonEnabled, String errorMessage
});


@override $ChangePasswordProcessStateCopyWith<$Res> get processState;

}
/// @nodoc
class __$ChangePasswordStateCopyWithImpl<$Res>
    implements _$ChangePasswordStateCopyWith<$Res> {
  __$ChangePasswordStateCopyWithImpl(this._self, this._then);

  final _ChangePasswordState _self;
  final $Res Function(_ChangePasswordState) _then;

/// Create a copy of ChangePasswordState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? processState = null,Object? isButtonEnabled = null,Object? errorMessage = null,}) {
  return _then(_ChangePasswordState(
processState: null == processState ? _self.processState : processState // ignore: cast_nullable_to_non_nullable
as ChangePasswordProcessState,isButtonEnabled: null == isButtonEnabled ? _self.isButtonEnabled : isButtonEnabled // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of ChangePasswordState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChangePasswordProcessStateCopyWith<$Res> get processState {
  
  return $ChangePasswordProcessStateCopyWith<$Res>(_self.processState, (value) {
    return _then(_self.copyWith(processState: value));
  });
}
}

/// @nodoc
mixin _$ChangePasswordProcessState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangePasswordProcessState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChangePasswordProcessState()';
}


}

/// @nodoc
class $ChangePasswordProcessStateCopyWith<$Res>  {
$ChangePasswordProcessStateCopyWith(ChangePasswordProcessState _, $Res Function(ChangePasswordProcessState) __);
}


/// Adds pattern-matching-related methods to [ChangePasswordProcessState].
extension ChangePasswordProcessStatePatterns on ChangePasswordProcessState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ChangePasswordProcessIdl value)?  idl,TResult Function( ChangePasswordProcessLoading value)?  loading,TResult Function( ChangePasswordProcessSuccess value)?  success,TResult Function( ChangePasswordProcessError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ChangePasswordProcessIdl() when idl != null:
return idl(_that);case ChangePasswordProcessLoading() when loading != null:
return loading(_that);case ChangePasswordProcessSuccess() when success != null:
return success(_that);case ChangePasswordProcessError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ChangePasswordProcessIdl value)  idl,required TResult Function( ChangePasswordProcessLoading value)  loading,required TResult Function( ChangePasswordProcessSuccess value)  success,required TResult Function( ChangePasswordProcessError value)  error,}){
final _that = this;
switch (_that) {
case ChangePasswordProcessIdl():
return idl(_that);case ChangePasswordProcessLoading():
return loading(_that);case ChangePasswordProcessSuccess():
return success(_that);case ChangePasswordProcessError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ChangePasswordProcessIdl value)?  idl,TResult? Function( ChangePasswordProcessLoading value)?  loading,TResult? Function( ChangePasswordProcessSuccess value)?  success,TResult? Function( ChangePasswordProcessError value)?  error,}){
final _that = this;
switch (_that) {
case ChangePasswordProcessIdl() when idl != null:
return idl(_that);case ChangePasswordProcessLoading() when loading != null:
return loading(_that);case ChangePasswordProcessSuccess() when success != null:
return success(_that);case ChangePasswordProcessError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  idl,TResult Function()?  loading,TResult Function()?  success,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ChangePasswordProcessIdl() when idl != null:
return idl();case ChangePasswordProcessLoading() when loading != null:
return loading();case ChangePasswordProcessSuccess() when success != null:
return success();case ChangePasswordProcessError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  idl,required TResult Function()  loading,required TResult Function()  success,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case ChangePasswordProcessIdl():
return idl();case ChangePasswordProcessLoading():
return loading();case ChangePasswordProcessSuccess():
return success();case ChangePasswordProcessError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  idl,TResult? Function()?  loading,TResult? Function()?  success,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case ChangePasswordProcessIdl() when idl != null:
return idl();case ChangePasswordProcessLoading() when loading != null:
return loading();case ChangePasswordProcessSuccess() when success != null:
return success();case ChangePasswordProcessError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class ChangePasswordProcessIdl implements ChangePasswordProcessState {
  const ChangePasswordProcessIdl();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangePasswordProcessIdl);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChangePasswordProcessState.idl()';
}


}




/// @nodoc


class ChangePasswordProcessLoading implements ChangePasswordProcessState {
  const ChangePasswordProcessLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangePasswordProcessLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChangePasswordProcessState.loading()';
}


}




/// @nodoc


class ChangePasswordProcessSuccess implements ChangePasswordProcessState {
  const ChangePasswordProcessSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangePasswordProcessSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChangePasswordProcessState.success()';
}


}




/// @nodoc


class ChangePasswordProcessError implements ChangePasswordProcessState {
  const ChangePasswordProcessError(this.message);
  

 final  String message;

/// Create a copy of ChangePasswordProcessState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangePasswordProcessErrorCopyWith<ChangePasswordProcessError> get copyWith => _$ChangePasswordProcessErrorCopyWithImpl<ChangePasswordProcessError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangePasswordProcessError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ChangePasswordProcessState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $ChangePasswordProcessErrorCopyWith<$Res> implements $ChangePasswordProcessStateCopyWith<$Res> {
  factory $ChangePasswordProcessErrorCopyWith(ChangePasswordProcessError value, $Res Function(ChangePasswordProcessError) _then) = _$ChangePasswordProcessErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ChangePasswordProcessErrorCopyWithImpl<$Res>
    implements $ChangePasswordProcessErrorCopyWith<$Res> {
  _$ChangePasswordProcessErrorCopyWithImpl(this._self, this._then);

  final ChangePasswordProcessError _self;
  final $Res Function(ChangePasswordProcessError) _then;

/// Create a copy of ChangePasswordProcessState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ChangePasswordProcessError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
