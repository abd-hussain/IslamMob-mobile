// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RegisterEvent {

 String get email; String get password; String get fullName; String get dateOfBirth; String get gender; String get country; String get countryFlag; File? get profilePic;
/// Create a copy of RegisterEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterEventCopyWith<RegisterEvent> get copyWith => _$RegisterEventCopyWithImpl<RegisterEvent>(this as RegisterEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterEvent&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.country, country) || other.country == country)&&(identical(other.countryFlag, countryFlag) || other.countryFlag == countryFlag)&&(identical(other.profilePic, profilePic) || other.profilePic == profilePic));
}


@override
int get hashCode => Object.hash(runtimeType,email,password,fullName,dateOfBirth,gender,country,countryFlag,profilePic);

@override
String toString() {
  return 'RegisterEvent(email: $email, password: $password, fullName: $fullName, dateOfBirth: $dateOfBirth, gender: $gender, country: $country, countryFlag: $countryFlag, profilePic: $profilePic)';
}


}

/// @nodoc
abstract mixin class $RegisterEventCopyWith<$Res>  {
  factory $RegisterEventCopyWith(RegisterEvent value, $Res Function(RegisterEvent) _then) = _$RegisterEventCopyWithImpl;
@useResult
$Res call({
 String email, String password, String fullName, String dateOfBirth, String gender, String country, String countryFlag, File? profilePic
});




}
/// @nodoc
class _$RegisterEventCopyWithImpl<$Res>
    implements $RegisterEventCopyWith<$Res> {
  _$RegisterEventCopyWithImpl(this._self, this._then);

  final RegisterEvent _self;
  final $Res Function(RegisterEvent) _then;

/// Create a copy of RegisterEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? password = null,Object? fullName = null,Object? dateOfBirth = null,Object? gender = null,Object? country = null,Object? countryFlag = null,Object? profilePic = freezed,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,dateOfBirth: null == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,countryFlag: null == countryFlag ? _self.countryFlag : countryFlag // ignore: cast_nullable_to_non_nullable
as String,profilePic: freezed == profilePic ? _self.profilePic : profilePic // ignore: cast_nullable_to_non_nullable
as File?,
  ));
}

}


/// Adds pattern-matching-related methods to [RegisterEvent].
extension RegisterEventPatterns on RegisterEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _UpdateLoginButtonEnablity value)?  updateLoginButtonEnablity,TResult Function( _RegisterPressed value)?  registerPressed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateLoginButtonEnablity() when updateLoginButtonEnablity != null:
return updateLoginButtonEnablity(_that);case _RegisterPressed() when registerPressed != null:
return registerPressed(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _UpdateLoginButtonEnablity value)  updateLoginButtonEnablity,required TResult Function( _RegisterPressed value)  registerPressed,}){
final _that = this;
switch (_that) {
case _UpdateLoginButtonEnablity():
return updateLoginButtonEnablity(_that);case _RegisterPressed():
return registerPressed(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _UpdateLoginButtonEnablity value)?  updateLoginButtonEnablity,TResult? Function( _RegisterPressed value)?  registerPressed,}){
final _that = this;
switch (_that) {
case _UpdateLoginButtonEnablity() when updateLoginButtonEnablity != null:
return updateLoginButtonEnablity(_that);case _RegisterPressed() when registerPressed != null:
return registerPressed(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( IslamMobLocalizations localizations,  String email,  String password,  String confirmPassword,  String fullName,  String dateOfBirth,  String gender,  String country,  String countryFlag,  File? profilePic)?  updateLoginButtonEnablity,TResult Function( String email,  String password,  String fullName,  String dateOfBirth,  String gender,  String country,  String countryFlag,  File? profilePic,  bool savedCradintial)?  registerPressed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateLoginButtonEnablity() when updateLoginButtonEnablity != null:
return updateLoginButtonEnablity(_that.localizations,_that.email,_that.password,_that.confirmPassword,_that.fullName,_that.dateOfBirth,_that.gender,_that.country,_that.countryFlag,_that.profilePic);case _RegisterPressed() when registerPressed != null:
return registerPressed(_that.email,_that.password,_that.fullName,_that.dateOfBirth,_that.gender,_that.country,_that.countryFlag,_that.profilePic,_that.savedCradintial);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( IslamMobLocalizations localizations,  String email,  String password,  String confirmPassword,  String fullName,  String dateOfBirth,  String gender,  String country,  String countryFlag,  File? profilePic)  updateLoginButtonEnablity,required TResult Function( String email,  String password,  String fullName,  String dateOfBirth,  String gender,  String country,  String countryFlag,  File? profilePic,  bool savedCradintial)  registerPressed,}) {final _that = this;
switch (_that) {
case _UpdateLoginButtonEnablity():
return updateLoginButtonEnablity(_that.localizations,_that.email,_that.password,_that.confirmPassword,_that.fullName,_that.dateOfBirth,_that.gender,_that.country,_that.countryFlag,_that.profilePic);case _RegisterPressed():
return registerPressed(_that.email,_that.password,_that.fullName,_that.dateOfBirth,_that.gender,_that.country,_that.countryFlag,_that.profilePic,_that.savedCradintial);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( IslamMobLocalizations localizations,  String email,  String password,  String confirmPassword,  String fullName,  String dateOfBirth,  String gender,  String country,  String countryFlag,  File? profilePic)?  updateLoginButtonEnablity,TResult? Function( String email,  String password,  String fullName,  String dateOfBirth,  String gender,  String country,  String countryFlag,  File? profilePic,  bool savedCradintial)?  registerPressed,}) {final _that = this;
switch (_that) {
case _UpdateLoginButtonEnablity() when updateLoginButtonEnablity != null:
return updateLoginButtonEnablity(_that.localizations,_that.email,_that.password,_that.confirmPassword,_that.fullName,_that.dateOfBirth,_that.gender,_that.country,_that.countryFlag,_that.profilePic);case _RegisterPressed() when registerPressed != null:
return registerPressed(_that.email,_that.password,_that.fullName,_that.dateOfBirth,_that.gender,_that.country,_that.countryFlag,_that.profilePic,_that.savedCradintial);case _:
  return null;

}
}

}

/// @nodoc


class _UpdateLoginButtonEnablity implements RegisterEvent {
  const _UpdateLoginButtonEnablity({required this.localizations, required this.email, required this.password, required this.confirmPassword, required this.fullName, required this.dateOfBirth, required this.gender, required this.country, required this.countryFlag, required this.profilePic});
  

 final  IslamMobLocalizations localizations;
@override final  String email;
@override final  String password;
 final  String confirmPassword;
@override final  String fullName;
@override final  String dateOfBirth;
@override final  String gender;
@override final  String country;
@override final  String countryFlag;
@override final  File? profilePic;

/// Create a copy of RegisterEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateLoginButtonEnablityCopyWith<_UpdateLoginButtonEnablity> get copyWith => __$UpdateLoginButtonEnablityCopyWithImpl<_UpdateLoginButtonEnablity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateLoginButtonEnablity&&(identical(other.localizations, localizations) || other.localizations == localizations)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.confirmPassword, confirmPassword) || other.confirmPassword == confirmPassword)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.country, country) || other.country == country)&&(identical(other.countryFlag, countryFlag) || other.countryFlag == countryFlag)&&(identical(other.profilePic, profilePic) || other.profilePic == profilePic));
}


@override
int get hashCode => Object.hash(runtimeType,localizations,email,password,confirmPassword,fullName,dateOfBirth,gender,country,countryFlag,profilePic);

@override
String toString() {
  return 'RegisterEvent.updateLoginButtonEnablity(localizations: $localizations, email: $email, password: $password, confirmPassword: $confirmPassword, fullName: $fullName, dateOfBirth: $dateOfBirth, gender: $gender, country: $country, countryFlag: $countryFlag, profilePic: $profilePic)';
}


}

/// @nodoc
abstract mixin class _$UpdateLoginButtonEnablityCopyWith<$Res> implements $RegisterEventCopyWith<$Res> {
  factory _$UpdateLoginButtonEnablityCopyWith(_UpdateLoginButtonEnablity value, $Res Function(_UpdateLoginButtonEnablity) _then) = __$UpdateLoginButtonEnablityCopyWithImpl;
@override @useResult
$Res call({
 IslamMobLocalizations localizations, String email, String password, String confirmPassword, String fullName, String dateOfBirth, String gender, String country, String countryFlag, File? profilePic
});




}
/// @nodoc
class __$UpdateLoginButtonEnablityCopyWithImpl<$Res>
    implements _$UpdateLoginButtonEnablityCopyWith<$Res> {
  __$UpdateLoginButtonEnablityCopyWithImpl(this._self, this._then);

  final _UpdateLoginButtonEnablity _self;
  final $Res Function(_UpdateLoginButtonEnablity) _then;

/// Create a copy of RegisterEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? localizations = null,Object? email = null,Object? password = null,Object? confirmPassword = null,Object? fullName = null,Object? dateOfBirth = null,Object? gender = null,Object? country = null,Object? countryFlag = null,Object? profilePic = freezed,}) {
  return _then(_UpdateLoginButtonEnablity(
localizations: null == localizations ? _self.localizations : localizations // ignore: cast_nullable_to_non_nullable
as IslamMobLocalizations,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,confirmPassword: null == confirmPassword ? _self.confirmPassword : confirmPassword // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,dateOfBirth: null == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,countryFlag: null == countryFlag ? _self.countryFlag : countryFlag // ignore: cast_nullable_to_non_nullable
as String,profilePic: freezed == profilePic ? _self.profilePic : profilePic // ignore: cast_nullable_to_non_nullable
as File?,
  ));
}


}

/// @nodoc


class _RegisterPressed implements RegisterEvent {
  const _RegisterPressed({required this.email, required this.password, required this.fullName, required this.dateOfBirth, required this.gender, required this.country, required this.countryFlag, required this.profilePic, required this.savedCradintial});
  

@override final  String email;
@override final  String password;
@override final  String fullName;
@override final  String dateOfBirth;
@override final  String gender;
@override final  String country;
@override final  String countryFlag;
@override final  File? profilePic;
 final  bool savedCradintial;

/// Create a copy of RegisterEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterPressedCopyWith<_RegisterPressed> get copyWith => __$RegisterPressedCopyWithImpl<_RegisterPressed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterPressed&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.country, country) || other.country == country)&&(identical(other.countryFlag, countryFlag) || other.countryFlag == countryFlag)&&(identical(other.profilePic, profilePic) || other.profilePic == profilePic)&&(identical(other.savedCradintial, savedCradintial) || other.savedCradintial == savedCradintial));
}


@override
int get hashCode => Object.hash(runtimeType,email,password,fullName,dateOfBirth,gender,country,countryFlag,profilePic,savedCradintial);

@override
String toString() {
  return 'RegisterEvent.registerPressed(email: $email, password: $password, fullName: $fullName, dateOfBirth: $dateOfBirth, gender: $gender, country: $country, countryFlag: $countryFlag, profilePic: $profilePic, savedCradintial: $savedCradintial)';
}


}

/// @nodoc
abstract mixin class _$RegisterPressedCopyWith<$Res> implements $RegisterEventCopyWith<$Res> {
  factory _$RegisterPressedCopyWith(_RegisterPressed value, $Res Function(_RegisterPressed) _then) = __$RegisterPressedCopyWithImpl;
@override @useResult
$Res call({
 String email, String password, String fullName, String dateOfBirth, String gender, String country, String countryFlag, File? profilePic, bool savedCradintial
});




}
/// @nodoc
class __$RegisterPressedCopyWithImpl<$Res>
    implements _$RegisterPressedCopyWith<$Res> {
  __$RegisterPressedCopyWithImpl(this._self, this._then);

  final _RegisterPressed _self;
  final $Res Function(_RegisterPressed) _then;

/// Create a copy of RegisterEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,Object? fullName = null,Object? dateOfBirth = null,Object? gender = null,Object? country = null,Object? countryFlag = null,Object? profilePic = freezed,Object? savedCradintial = null,}) {
  return _then(_RegisterPressed(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,dateOfBirth: null == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,countryFlag: null == countryFlag ? _self.countryFlag : countryFlag // ignore: cast_nullable_to_non_nullable
as String,profilePic: freezed == profilePic ? _self.profilePic : profilePic // ignore: cast_nullable_to_non_nullable
as File?,savedCradintial: null == savedCradintial ? _self.savedCradintial : savedCradintial // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$RegisterState {

 RegisterProcessState get processState; bool get isRegisterButtonEnabled; String get errorMessage;
/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterStateCopyWith<RegisterState> get copyWith => _$RegisterStateCopyWithImpl<RegisterState>(this as RegisterState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterState&&(identical(other.processState, processState) || other.processState == processState)&&(identical(other.isRegisterButtonEnabled, isRegisterButtonEnabled) || other.isRegisterButtonEnabled == isRegisterButtonEnabled)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,processState,isRegisterButtonEnabled,errorMessage);

@override
String toString() {
  return 'RegisterState(processState: $processState, isRegisterButtonEnabled: $isRegisterButtonEnabled, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $RegisterStateCopyWith<$Res>  {
  factory $RegisterStateCopyWith(RegisterState value, $Res Function(RegisterState) _then) = _$RegisterStateCopyWithImpl;
@useResult
$Res call({
 RegisterProcessState processState, bool isRegisterButtonEnabled, String errorMessage
});


$RegisterProcessStateCopyWith<$Res> get processState;

}
/// @nodoc
class _$RegisterStateCopyWithImpl<$Res>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._self, this._then);

  final RegisterState _self;
  final $Res Function(RegisterState) _then;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? processState = null,Object? isRegisterButtonEnabled = null,Object? errorMessage = null,}) {
  return _then(_self.copyWith(
processState: null == processState ? _self.processState : processState // ignore: cast_nullable_to_non_nullable
as RegisterProcessState,isRegisterButtonEnabled: null == isRegisterButtonEnabled ? _self.isRegisterButtonEnabled : isRegisterButtonEnabled // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RegisterProcessStateCopyWith<$Res> get processState {
  
  return $RegisterProcessStateCopyWith<$Res>(_self.processState, (value) {
    return _then(_self.copyWith(processState: value));
  });
}
}


/// Adds pattern-matching-related methods to [RegisterState].
extension RegisterStatePatterns on RegisterState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RegisterState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RegisterState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RegisterState value)  $default,){
final _that = this;
switch (_that) {
case _RegisterState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RegisterState value)?  $default,){
final _that = this;
switch (_that) {
case _RegisterState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( RegisterProcessState processState,  bool isRegisterButtonEnabled,  String errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RegisterState() when $default != null:
return $default(_that.processState,_that.isRegisterButtonEnabled,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( RegisterProcessState processState,  bool isRegisterButtonEnabled,  String errorMessage)  $default,) {final _that = this;
switch (_that) {
case _RegisterState():
return $default(_that.processState,_that.isRegisterButtonEnabled,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( RegisterProcessState processState,  bool isRegisterButtonEnabled,  String errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _RegisterState() when $default != null:
return $default(_that.processState,_that.isRegisterButtonEnabled,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _RegisterState implements RegisterState {
  const _RegisterState({this.processState = const RegisterProcessState.idl(), this.isRegisterButtonEnabled = false, this.errorMessage = ""});
  

@override@JsonKey() final  RegisterProcessState processState;
@override@JsonKey() final  bool isRegisterButtonEnabled;
@override@JsonKey() final  String errorMessage;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterStateCopyWith<_RegisterState> get copyWith => __$RegisterStateCopyWithImpl<_RegisterState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterState&&(identical(other.processState, processState) || other.processState == processState)&&(identical(other.isRegisterButtonEnabled, isRegisterButtonEnabled) || other.isRegisterButtonEnabled == isRegisterButtonEnabled)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,processState,isRegisterButtonEnabled,errorMessage);

@override
String toString() {
  return 'RegisterState(processState: $processState, isRegisterButtonEnabled: $isRegisterButtonEnabled, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$RegisterStateCopyWith<$Res> implements $RegisterStateCopyWith<$Res> {
  factory _$RegisterStateCopyWith(_RegisterState value, $Res Function(_RegisterState) _then) = __$RegisterStateCopyWithImpl;
@override @useResult
$Res call({
 RegisterProcessState processState, bool isRegisterButtonEnabled, String errorMessage
});


@override $RegisterProcessStateCopyWith<$Res> get processState;

}
/// @nodoc
class __$RegisterStateCopyWithImpl<$Res>
    implements _$RegisterStateCopyWith<$Res> {
  __$RegisterStateCopyWithImpl(this._self, this._then);

  final _RegisterState _self;
  final $Res Function(_RegisterState) _then;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? processState = null,Object? isRegisterButtonEnabled = null,Object? errorMessage = null,}) {
  return _then(_RegisterState(
processState: null == processState ? _self.processState : processState // ignore: cast_nullable_to_non_nullable
as RegisterProcessState,isRegisterButtonEnabled: null == isRegisterButtonEnabled ? _self.isRegisterButtonEnabled : isRegisterButtonEnabled // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RegisterProcessStateCopyWith<$Res> get processState {
  
  return $RegisterProcessStateCopyWith<$Res>(_self.processState, (value) {
    return _then(_self.copyWith(processState: value));
  });
}
}

/// @nodoc
mixin _$RegisterProcessState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterProcessState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegisterProcessState()';
}


}

/// @nodoc
class $RegisterProcessStateCopyWith<$Res>  {
$RegisterProcessStateCopyWith(RegisterProcessState _, $Res Function(RegisterProcessState) __);
}


/// Adds pattern-matching-related methods to [RegisterProcessState].
extension RegisterProcessStatePatterns on RegisterProcessState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _RegisterProcessStateIdl value)?  idl,TResult Function( _RegisterProcessStateLoading value)?  loading,TResult Function( _RegisterProcessStateSuccess value)?  success,TResult Function( _RegisterProcessStateError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RegisterProcessStateIdl() when idl != null:
return idl(_that);case _RegisterProcessStateLoading() when loading != null:
return loading(_that);case _RegisterProcessStateSuccess() when success != null:
return success(_that);case _RegisterProcessStateError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _RegisterProcessStateIdl value)  idl,required TResult Function( _RegisterProcessStateLoading value)  loading,required TResult Function( _RegisterProcessStateSuccess value)  success,required TResult Function( _RegisterProcessStateError value)  error,}){
final _that = this;
switch (_that) {
case _RegisterProcessStateIdl():
return idl(_that);case _RegisterProcessStateLoading():
return loading(_that);case _RegisterProcessStateSuccess():
return success(_that);case _RegisterProcessStateError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _RegisterProcessStateIdl value)?  idl,TResult? Function( _RegisterProcessStateLoading value)?  loading,TResult? Function( _RegisterProcessStateSuccess value)?  success,TResult? Function( _RegisterProcessStateError value)?  error,}){
final _that = this;
switch (_that) {
case _RegisterProcessStateIdl() when idl != null:
return idl(_that);case _RegisterProcessStateLoading() when loading != null:
return loading(_that);case _RegisterProcessStateSuccess() when success != null:
return success(_that);case _RegisterProcessStateError() when error != null:
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
case _RegisterProcessStateIdl() when idl != null:
return idl();case _RegisterProcessStateLoading() when loading != null:
return loading();case _RegisterProcessStateSuccess() when success != null:
return success();case _RegisterProcessStateError() when error != null:
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
case _RegisterProcessStateIdl():
return idl();case _RegisterProcessStateLoading():
return loading();case _RegisterProcessStateSuccess():
return success();case _RegisterProcessStateError():
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
case _RegisterProcessStateIdl() when idl != null:
return idl();case _RegisterProcessStateLoading() when loading != null:
return loading();case _RegisterProcessStateSuccess() when success != null:
return success();case _RegisterProcessStateError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _RegisterProcessStateIdl implements RegisterProcessState {
  const _RegisterProcessStateIdl();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterProcessStateIdl);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegisterProcessState.idl()';
}


}




/// @nodoc


class _RegisterProcessStateLoading implements RegisterProcessState {
  const _RegisterProcessStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterProcessStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegisterProcessState.loading()';
}


}




/// @nodoc


class _RegisterProcessStateSuccess implements RegisterProcessState {
  const _RegisterProcessStateSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterProcessStateSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegisterProcessState.success()';
}


}




/// @nodoc


class _RegisterProcessStateError implements RegisterProcessState {
  const _RegisterProcessStateError(this.message);
  

 final  String message;

/// Create a copy of RegisterProcessState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterProcessStateErrorCopyWith<_RegisterProcessStateError> get copyWith => __$RegisterProcessStateErrorCopyWithImpl<_RegisterProcessStateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterProcessStateError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'RegisterProcessState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$RegisterProcessStateErrorCopyWith<$Res> implements $RegisterProcessStateCopyWith<$Res> {
  factory _$RegisterProcessStateErrorCopyWith(_RegisterProcessStateError value, $Res Function(_RegisterProcessStateError) _then) = __$RegisterProcessStateErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$RegisterProcessStateErrorCopyWithImpl<$Res>
    implements _$RegisterProcessStateErrorCopyWith<$Res> {
  __$RegisterProcessStateErrorCopyWithImpl(this._self, this._then);

  final _RegisterProcessStateError _self;
  final $Res Function(_RegisterProcessStateError) _then;

/// Create a copy of RegisterProcessState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_RegisterProcessStateError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
