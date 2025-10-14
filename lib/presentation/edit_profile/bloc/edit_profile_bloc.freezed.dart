// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EditProfileEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditProfileEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EditProfileEvent()';
}


}

/// @nodoc
class $EditProfileEventCopyWith<$Res>  {
$EditProfileEventCopyWith(EditProfileEvent _, $Res Function(EditProfileEvent) __);
}


/// Adds pattern-matching-related methods to [EditProfileEvent].
extension EditProfileEventPatterns on EditProfileEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _InitialValues value)?  initialValues,TResult Function( _UpdateButtonEnablity value)?  updateButtonEnablity,TResult Function( _EditPressed value)?  editPressed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InitialValues() when initialValues != null:
return initialValues(_that);case _UpdateButtonEnablity() when updateButtonEnablity != null:
return updateButtonEnablity(_that);case _EditPressed() when editPressed != null:
return editPressed(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _InitialValues value)  initialValues,required TResult Function( _UpdateButtonEnablity value)  updateButtonEnablity,required TResult Function( _EditPressed value)  editPressed,}){
final _that = this;
switch (_that) {
case _InitialValues():
return initialValues(_that);case _UpdateButtonEnablity():
return updateButtonEnablity(_that);case _EditPressed():
return editPressed(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _InitialValues value)?  initialValues,TResult? Function( _UpdateButtonEnablity value)?  updateButtonEnablity,TResult? Function( _EditPressed value)?  editPressed,}){
final _that = this;
switch (_that) {
case _InitialValues() when initialValues != null:
return initialValues(_that);case _UpdateButtonEnablity() when updateButtonEnablity != null:
return updateButtonEnablity(_that);case _EditPressed() when editPressed != null:
return editPressed(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initialValues,TResult Function( String fullName,  String dateOfBirth,  String gender,  String country,  String countryFlag,  File? profilePic)?  updateButtonEnablity,TResult Function( IslamMobLocalizations localizations,  bool isUserChangeProfileImage,  String fullName,  String dateOfBirth,  String gender,  String country,  String countryFlag,  File? profilePic)?  editPressed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InitialValues() when initialValues != null:
return initialValues();case _UpdateButtonEnablity() when updateButtonEnablity != null:
return updateButtonEnablity(_that.fullName,_that.dateOfBirth,_that.gender,_that.country,_that.countryFlag,_that.profilePic);case _EditPressed() when editPressed != null:
return editPressed(_that.localizations,_that.isUserChangeProfileImage,_that.fullName,_that.dateOfBirth,_that.gender,_that.country,_that.countryFlag,_that.profilePic);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initialValues,required TResult Function( String fullName,  String dateOfBirth,  String gender,  String country,  String countryFlag,  File? profilePic)  updateButtonEnablity,required TResult Function( IslamMobLocalizations localizations,  bool isUserChangeProfileImage,  String fullName,  String dateOfBirth,  String gender,  String country,  String countryFlag,  File? profilePic)  editPressed,}) {final _that = this;
switch (_that) {
case _InitialValues():
return initialValues();case _UpdateButtonEnablity():
return updateButtonEnablity(_that.fullName,_that.dateOfBirth,_that.gender,_that.country,_that.countryFlag,_that.profilePic);case _EditPressed():
return editPressed(_that.localizations,_that.isUserChangeProfileImage,_that.fullName,_that.dateOfBirth,_that.gender,_that.country,_that.countryFlag,_that.profilePic);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initialValues,TResult? Function( String fullName,  String dateOfBirth,  String gender,  String country,  String countryFlag,  File? profilePic)?  updateButtonEnablity,TResult? Function( IslamMobLocalizations localizations,  bool isUserChangeProfileImage,  String fullName,  String dateOfBirth,  String gender,  String country,  String countryFlag,  File? profilePic)?  editPressed,}) {final _that = this;
switch (_that) {
case _InitialValues() when initialValues != null:
return initialValues();case _UpdateButtonEnablity() when updateButtonEnablity != null:
return updateButtonEnablity(_that.fullName,_that.dateOfBirth,_that.gender,_that.country,_that.countryFlag,_that.profilePic);case _EditPressed() when editPressed != null:
return editPressed(_that.localizations,_that.isUserChangeProfileImage,_that.fullName,_that.dateOfBirth,_that.gender,_that.country,_that.countryFlag,_that.profilePic);case _:
  return null;

}
}

}

/// @nodoc


class _InitialValues implements EditProfileEvent {
  const _InitialValues();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InitialValues);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EditProfileEvent.initialValues()';
}


}




/// @nodoc


class _UpdateButtonEnablity implements EditProfileEvent {
  const _UpdateButtonEnablity({required this.fullName, required this.dateOfBirth, required this.gender, required this.country, required this.countryFlag, required this.profilePic});
  

 final  String fullName;
 final  String dateOfBirth;
 final  String gender;
 final  String country;
 final  String countryFlag;
 final  File? profilePic;

/// Create a copy of EditProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateButtonEnablityCopyWith<_UpdateButtonEnablity> get copyWith => __$UpdateButtonEnablityCopyWithImpl<_UpdateButtonEnablity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateButtonEnablity&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.country, country) || other.country == country)&&(identical(other.countryFlag, countryFlag) || other.countryFlag == countryFlag)&&(identical(other.profilePic, profilePic) || other.profilePic == profilePic));
}


@override
int get hashCode => Object.hash(runtimeType,fullName,dateOfBirth,gender,country,countryFlag,profilePic);

@override
String toString() {
  return 'EditProfileEvent.updateButtonEnablity(fullName: $fullName, dateOfBirth: $dateOfBirth, gender: $gender, country: $country, countryFlag: $countryFlag, profilePic: $profilePic)';
}


}

/// @nodoc
abstract mixin class _$UpdateButtonEnablityCopyWith<$Res> implements $EditProfileEventCopyWith<$Res> {
  factory _$UpdateButtonEnablityCopyWith(_UpdateButtonEnablity value, $Res Function(_UpdateButtonEnablity) _then) = __$UpdateButtonEnablityCopyWithImpl;
@useResult
$Res call({
 String fullName, String dateOfBirth, String gender, String country, String countryFlag, File? profilePic
});




}
/// @nodoc
class __$UpdateButtonEnablityCopyWithImpl<$Res>
    implements _$UpdateButtonEnablityCopyWith<$Res> {
  __$UpdateButtonEnablityCopyWithImpl(this._self, this._then);

  final _UpdateButtonEnablity _self;
  final $Res Function(_UpdateButtonEnablity) _then;

/// Create a copy of EditProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? fullName = null,Object? dateOfBirth = null,Object? gender = null,Object? country = null,Object? countryFlag = null,Object? profilePic = freezed,}) {
  return _then(_UpdateButtonEnablity(
fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
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


class _EditPressed implements EditProfileEvent {
  const _EditPressed({required this.localizations, required this.isUserChangeProfileImage, required this.fullName, required this.dateOfBirth, required this.gender, required this.country, required this.countryFlag, required this.profilePic});
  

 final  IslamMobLocalizations localizations;
 final  bool isUserChangeProfileImage;
 final  String fullName;
 final  String dateOfBirth;
 final  String gender;
 final  String country;
 final  String countryFlag;
 final  File? profilePic;

/// Create a copy of EditProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EditPressedCopyWith<_EditPressed> get copyWith => __$EditPressedCopyWithImpl<_EditPressed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EditPressed&&(identical(other.localizations, localizations) || other.localizations == localizations)&&(identical(other.isUserChangeProfileImage, isUserChangeProfileImage) || other.isUserChangeProfileImage == isUserChangeProfileImage)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.country, country) || other.country == country)&&(identical(other.countryFlag, countryFlag) || other.countryFlag == countryFlag)&&(identical(other.profilePic, profilePic) || other.profilePic == profilePic));
}


@override
int get hashCode => Object.hash(runtimeType,localizations,isUserChangeProfileImage,fullName,dateOfBirth,gender,country,countryFlag,profilePic);

@override
String toString() {
  return 'EditProfileEvent.editPressed(localizations: $localizations, isUserChangeProfileImage: $isUserChangeProfileImage, fullName: $fullName, dateOfBirth: $dateOfBirth, gender: $gender, country: $country, countryFlag: $countryFlag, profilePic: $profilePic)';
}


}

/// @nodoc
abstract mixin class _$EditPressedCopyWith<$Res> implements $EditProfileEventCopyWith<$Res> {
  factory _$EditPressedCopyWith(_EditPressed value, $Res Function(_EditPressed) _then) = __$EditPressedCopyWithImpl;
@useResult
$Res call({
 IslamMobLocalizations localizations, bool isUserChangeProfileImage, String fullName, String dateOfBirth, String gender, String country, String countryFlag, File? profilePic
});




}
/// @nodoc
class __$EditPressedCopyWithImpl<$Res>
    implements _$EditPressedCopyWith<$Res> {
  __$EditPressedCopyWithImpl(this._self, this._then);

  final _EditPressed _self;
  final $Res Function(_EditPressed) _then;

/// Create a copy of EditProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? localizations = null,Object? isUserChangeProfileImage = null,Object? fullName = null,Object? dateOfBirth = null,Object? gender = null,Object? country = null,Object? countryFlag = null,Object? profilePic = freezed,}) {
  return _then(_EditPressed(
localizations: null == localizations ? _self.localizations : localizations // ignore: cast_nullable_to_non_nullable
as IslamMobLocalizations,isUserChangeProfileImage: null == isUserChangeProfileImage ? _self.isUserChangeProfileImage : isUserChangeProfileImage // ignore: cast_nullable_to_non_nullable
as bool,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
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
mixin _$EditProfileState {

 EditProfileProcessState get processState; bool get isButtonEnabled; String get errorMessage; ProfileModel? get originalProfileInfo; File? get localImage; String? get localCountry; String? get localDateOfBirth; String? get localFullName; String? get localGender;
/// Create a copy of EditProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EditProfileStateCopyWith<EditProfileState> get copyWith => _$EditProfileStateCopyWithImpl<EditProfileState>(this as EditProfileState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditProfileState&&(identical(other.processState, processState) || other.processState == processState)&&(identical(other.isButtonEnabled, isButtonEnabled) || other.isButtonEnabled == isButtonEnabled)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.originalProfileInfo, originalProfileInfo) || other.originalProfileInfo == originalProfileInfo)&&(identical(other.localImage, localImage) || other.localImage == localImage)&&(identical(other.localCountry, localCountry) || other.localCountry == localCountry)&&(identical(other.localDateOfBirth, localDateOfBirth) || other.localDateOfBirth == localDateOfBirth)&&(identical(other.localFullName, localFullName) || other.localFullName == localFullName)&&(identical(other.localGender, localGender) || other.localGender == localGender));
}


@override
int get hashCode => Object.hash(runtimeType,processState,isButtonEnabled,errorMessage,originalProfileInfo,localImage,localCountry,localDateOfBirth,localFullName,localGender);

@override
String toString() {
  return 'EditProfileState(processState: $processState, isButtonEnabled: $isButtonEnabled, errorMessage: $errorMessage, originalProfileInfo: $originalProfileInfo, localImage: $localImage, localCountry: $localCountry, localDateOfBirth: $localDateOfBirth, localFullName: $localFullName, localGender: $localGender)';
}


}

/// @nodoc
abstract mixin class $EditProfileStateCopyWith<$Res>  {
  factory $EditProfileStateCopyWith(EditProfileState value, $Res Function(EditProfileState) _then) = _$EditProfileStateCopyWithImpl;
@useResult
$Res call({
 EditProfileProcessState processState, bool isButtonEnabled, String errorMessage, ProfileModel? originalProfileInfo, File? localImage, String? localCountry, String? localDateOfBirth, String? localFullName, String? localGender
});


$EditProfileProcessStateCopyWith<$Res> get processState;$ProfileModelCopyWith<$Res>? get originalProfileInfo;

}
/// @nodoc
class _$EditProfileStateCopyWithImpl<$Res>
    implements $EditProfileStateCopyWith<$Res> {
  _$EditProfileStateCopyWithImpl(this._self, this._then);

  final EditProfileState _self;
  final $Res Function(EditProfileState) _then;

/// Create a copy of EditProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? processState = null,Object? isButtonEnabled = null,Object? errorMessage = null,Object? originalProfileInfo = freezed,Object? localImage = freezed,Object? localCountry = freezed,Object? localDateOfBirth = freezed,Object? localFullName = freezed,Object? localGender = freezed,}) {
  return _then(_self.copyWith(
processState: null == processState ? _self.processState : processState // ignore: cast_nullable_to_non_nullable
as EditProfileProcessState,isButtonEnabled: null == isButtonEnabled ? _self.isButtonEnabled : isButtonEnabled // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,originalProfileInfo: freezed == originalProfileInfo ? _self.originalProfileInfo : originalProfileInfo // ignore: cast_nullable_to_non_nullable
as ProfileModel?,localImage: freezed == localImage ? _self.localImage : localImage // ignore: cast_nullable_to_non_nullable
as File?,localCountry: freezed == localCountry ? _self.localCountry : localCountry // ignore: cast_nullable_to_non_nullable
as String?,localDateOfBirth: freezed == localDateOfBirth ? _self.localDateOfBirth : localDateOfBirth // ignore: cast_nullable_to_non_nullable
as String?,localFullName: freezed == localFullName ? _self.localFullName : localFullName // ignore: cast_nullable_to_non_nullable
as String?,localGender: freezed == localGender ? _self.localGender : localGender // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of EditProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EditProfileProcessStateCopyWith<$Res> get processState {
  
  return $EditProfileProcessStateCopyWith<$Res>(_self.processState, (value) {
    return _then(_self.copyWith(processState: value));
  });
}/// Create a copy of EditProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileModelCopyWith<$Res>? get originalProfileInfo {
    if (_self.originalProfileInfo == null) {
    return null;
  }

  return $ProfileModelCopyWith<$Res>(_self.originalProfileInfo!, (value) {
    return _then(_self.copyWith(originalProfileInfo: value));
  });
}
}


/// Adds pattern-matching-related methods to [EditProfileState].
extension EditProfileStatePatterns on EditProfileState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EditProfileState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EditProfileState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EditProfileState value)  $default,){
final _that = this;
switch (_that) {
case _EditProfileState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EditProfileState value)?  $default,){
final _that = this;
switch (_that) {
case _EditProfileState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( EditProfileProcessState processState,  bool isButtonEnabled,  String errorMessage,  ProfileModel? originalProfileInfo,  File? localImage,  String? localCountry,  String? localDateOfBirth,  String? localFullName,  String? localGender)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EditProfileState() when $default != null:
return $default(_that.processState,_that.isButtonEnabled,_that.errorMessage,_that.originalProfileInfo,_that.localImage,_that.localCountry,_that.localDateOfBirth,_that.localFullName,_that.localGender);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( EditProfileProcessState processState,  bool isButtonEnabled,  String errorMessage,  ProfileModel? originalProfileInfo,  File? localImage,  String? localCountry,  String? localDateOfBirth,  String? localFullName,  String? localGender)  $default,) {final _that = this;
switch (_that) {
case _EditProfileState():
return $default(_that.processState,_that.isButtonEnabled,_that.errorMessage,_that.originalProfileInfo,_that.localImage,_that.localCountry,_that.localDateOfBirth,_that.localFullName,_that.localGender);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( EditProfileProcessState processState,  bool isButtonEnabled,  String errorMessage,  ProfileModel? originalProfileInfo,  File? localImage,  String? localCountry,  String? localDateOfBirth,  String? localFullName,  String? localGender)?  $default,) {final _that = this;
switch (_that) {
case _EditProfileState() when $default != null:
return $default(_that.processState,_that.isButtonEnabled,_that.errorMessage,_that.originalProfileInfo,_that.localImage,_that.localCountry,_that.localDateOfBirth,_that.localFullName,_that.localGender);case _:
  return null;

}
}

}

/// @nodoc


class _EditProfileState implements EditProfileState {
  const _EditProfileState({this.processState = const EditProfileProcessState.loading(), this.isButtonEnabled = false, this.errorMessage = "", this.originalProfileInfo, this.localImage, this.localCountry, this.localDateOfBirth, this.localFullName, this.localGender});
  

@override@JsonKey() final  EditProfileProcessState processState;
@override@JsonKey() final  bool isButtonEnabled;
@override@JsonKey() final  String errorMessage;
@override final  ProfileModel? originalProfileInfo;
@override final  File? localImage;
@override final  String? localCountry;
@override final  String? localDateOfBirth;
@override final  String? localFullName;
@override final  String? localGender;

/// Create a copy of EditProfileState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EditProfileStateCopyWith<_EditProfileState> get copyWith => __$EditProfileStateCopyWithImpl<_EditProfileState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EditProfileState&&(identical(other.processState, processState) || other.processState == processState)&&(identical(other.isButtonEnabled, isButtonEnabled) || other.isButtonEnabled == isButtonEnabled)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.originalProfileInfo, originalProfileInfo) || other.originalProfileInfo == originalProfileInfo)&&(identical(other.localImage, localImage) || other.localImage == localImage)&&(identical(other.localCountry, localCountry) || other.localCountry == localCountry)&&(identical(other.localDateOfBirth, localDateOfBirth) || other.localDateOfBirth == localDateOfBirth)&&(identical(other.localFullName, localFullName) || other.localFullName == localFullName)&&(identical(other.localGender, localGender) || other.localGender == localGender));
}


@override
int get hashCode => Object.hash(runtimeType,processState,isButtonEnabled,errorMessage,originalProfileInfo,localImage,localCountry,localDateOfBirth,localFullName,localGender);

@override
String toString() {
  return 'EditProfileState(processState: $processState, isButtonEnabled: $isButtonEnabled, errorMessage: $errorMessage, originalProfileInfo: $originalProfileInfo, localImage: $localImage, localCountry: $localCountry, localDateOfBirth: $localDateOfBirth, localFullName: $localFullName, localGender: $localGender)';
}


}

/// @nodoc
abstract mixin class _$EditProfileStateCopyWith<$Res> implements $EditProfileStateCopyWith<$Res> {
  factory _$EditProfileStateCopyWith(_EditProfileState value, $Res Function(_EditProfileState) _then) = __$EditProfileStateCopyWithImpl;
@override @useResult
$Res call({
 EditProfileProcessState processState, bool isButtonEnabled, String errorMessage, ProfileModel? originalProfileInfo, File? localImage, String? localCountry, String? localDateOfBirth, String? localFullName, String? localGender
});


@override $EditProfileProcessStateCopyWith<$Res> get processState;@override $ProfileModelCopyWith<$Res>? get originalProfileInfo;

}
/// @nodoc
class __$EditProfileStateCopyWithImpl<$Res>
    implements _$EditProfileStateCopyWith<$Res> {
  __$EditProfileStateCopyWithImpl(this._self, this._then);

  final _EditProfileState _self;
  final $Res Function(_EditProfileState) _then;

/// Create a copy of EditProfileState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? processState = null,Object? isButtonEnabled = null,Object? errorMessage = null,Object? originalProfileInfo = freezed,Object? localImage = freezed,Object? localCountry = freezed,Object? localDateOfBirth = freezed,Object? localFullName = freezed,Object? localGender = freezed,}) {
  return _then(_EditProfileState(
processState: null == processState ? _self.processState : processState // ignore: cast_nullable_to_non_nullable
as EditProfileProcessState,isButtonEnabled: null == isButtonEnabled ? _self.isButtonEnabled : isButtonEnabled // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,originalProfileInfo: freezed == originalProfileInfo ? _self.originalProfileInfo : originalProfileInfo // ignore: cast_nullable_to_non_nullable
as ProfileModel?,localImage: freezed == localImage ? _self.localImage : localImage // ignore: cast_nullable_to_non_nullable
as File?,localCountry: freezed == localCountry ? _self.localCountry : localCountry // ignore: cast_nullable_to_non_nullable
as String?,localDateOfBirth: freezed == localDateOfBirth ? _self.localDateOfBirth : localDateOfBirth // ignore: cast_nullable_to_non_nullable
as String?,localFullName: freezed == localFullName ? _self.localFullName : localFullName // ignore: cast_nullable_to_non_nullable
as String?,localGender: freezed == localGender ? _self.localGender : localGender // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of EditProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EditProfileProcessStateCopyWith<$Res> get processState {
  
  return $EditProfileProcessStateCopyWith<$Res>(_self.processState, (value) {
    return _then(_self.copyWith(processState: value));
  });
}/// Create a copy of EditProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileModelCopyWith<$Res>? get originalProfileInfo {
    if (_self.originalProfileInfo == null) {
    return null;
  }

  return $ProfileModelCopyWith<$Res>(_self.originalProfileInfo!, (value) {
    return _then(_self.copyWith(originalProfileInfo: value));
  });
}
}

/// @nodoc
mixin _$EditProfileProcessState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditProfileProcessState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EditProfileProcessState()';
}


}

/// @nodoc
class $EditProfileProcessStateCopyWith<$Res>  {
$EditProfileProcessStateCopyWith(EditProfileProcessState _, $Res Function(EditProfileProcessState) __);
}


/// Adds pattern-matching-related methods to [EditProfileProcessState].
extension EditProfileProcessStatePatterns on EditProfileProcessState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( EditProfileProcessStateIdl value)?  idl,TResult Function( EditProfileProcessStateLoading value)?  loading,TResult Function( EditProfileProcessStateSuccess value)?  success,TResult Function( EditProfileProcessStateError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case EditProfileProcessStateIdl() when idl != null:
return idl(_that);case EditProfileProcessStateLoading() when loading != null:
return loading(_that);case EditProfileProcessStateSuccess() when success != null:
return success(_that);case EditProfileProcessStateError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( EditProfileProcessStateIdl value)  idl,required TResult Function( EditProfileProcessStateLoading value)  loading,required TResult Function( EditProfileProcessStateSuccess value)  success,required TResult Function( EditProfileProcessStateError value)  error,}){
final _that = this;
switch (_that) {
case EditProfileProcessStateIdl():
return idl(_that);case EditProfileProcessStateLoading():
return loading(_that);case EditProfileProcessStateSuccess():
return success(_that);case EditProfileProcessStateError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( EditProfileProcessStateIdl value)?  idl,TResult? Function( EditProfileProcessStateLoading value)?  loading,TResult? Function( EditProfileProcessStateSuccess value)?  success,TResult? Function( EditProfileProcessStateError value)?  error,}){
final _that = this;
switch (_that) {
case EditProfileProcessStateIdl() when idl != null:
return idl(_that);case EditProfileProcessStateLoading() when loading != null:
return loading(_that);case EditProfileProcessStateSuccess() when success != null:
return success(_that);case EditProfileProcessStateError() when error != null:
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
case EditProfileProcessStateIdl() when idl != null:
return idl();case EditProfileProcessStateLoading() when loading != null:
return loading();case EditProfileProcessStateSuccess() when success != null:
return success();case EditProfileProcessStateError() when error != null:
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
case EditProfileProcessStateIdl():
return idl();case EditProfileProcessStateLoading():
return loading();case EditProfileProcessStateSuccess():
return success();case EditProfileProcessStateError():
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
case EditProfileProcessStateIdl() when idl != null:
return idl();case EditProfileProcessStateLoading() when loading != null:
return loading();case EditProfileProcessStateSuccess() when success != null:
return success();case EditProfileProcessStateError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class EditProfileProcessStateIdl implements EditProfileProcessState {
  const EditProfileProcessStateIdl();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditProfileProcessStateIdl);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EditProfileProcessState.idl()';
}


}




/// @nodoc


class EditProfileProcessStateLoading implements EditProfileProcessState {
  const EditProfileProcessStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditProfileProcessStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EditProfileProcessState.loading()';
}


}




/// @nodoc


class EditProfileProcessStateSuccess implements EditProfileProcessState {
  const EditProfileProcessStateSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditProfileProcessStateSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EditProfileProcessState.success()';
}


}




/// @nodoc


class EditProfileProcessStateError implements EditProfileProcessState {
  const EditProfileProcessStateError(this.message);
  

 final  String message;

/// Create a copy of EditProfileProcessState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EditProfileProcessStateErrorCopyWith<EditProfileProcessStateError> get copyWith => _$EditProfileProcessStateErrorCopyWithImpl<EditProfileProcessStateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditProfileProcessStateError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'EditProfileProcessState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $EditProfileProcessStateErrorCopyWith<$Res> implements $EditProfileProcessStateCopyWith<$Res> {
  factory $EditProfileProcessStateErrorCopyWith(EditProfileProcessStateError value, $Res Function(EditProfileProcessStateError) _then) = _$EditProfileProcessStateErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$EditProfileProcessStateErrorCopyWithImpl<$Res>
    implements $EditProfileProcessStateErrorCopyWith<$Res> {
  _$EditProfileProcessStateErrorCopyWithImpl(this._self, this._then);

  final EditProfileProcessStateError _self;
  final $Res Function(EditProfileProcessStateError) _then;

/// Create a copy of EditProfileProcessState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(EditProfileProcessStateError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
