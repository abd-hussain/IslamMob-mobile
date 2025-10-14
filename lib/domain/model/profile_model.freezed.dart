// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProfileModel {

 String? get country; String? get dateOfBirth; String? get fullName; String? get gender; String? get profilePic; String? get uid; String? get signInMethod; String? get emailAddress; String? get password; String? get countryFlag;
/// Create a copy of ProfileModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileModelCopyWith<ProfileModel> get copyWith => _$ProfileModelCopyWithImpl<ProfileModel>(this as ProfileModel, _$identity);

  /// Serializes this ProfileModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileModel&&(identical(other.country, country) || other.country == country)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.profilePic, profilePic) || other.profilePic == profilePic)&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.signInMethod, signInMethod) || other.signInMethod == signInMethod)&&(identical(other.emailAddress, emailAddress) || other.emailAddress == emailAddress)&&(identical(other.password, password) || other.password == password)&&(identical(other.countryFlag, countryFlag) || other.countryFlag == countryFlag));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,country,dateOfBirth,fullName,gender,profilePic,uid,signInMethod,emailAddress,password,countryFlag);

@override
String toString() {
  return 'ProfileModel(country: $country, dateOfBirth: $dateOfBirth, fullName: $fullName, gender: $gender, profilePic: $profilePic, uid: $uid, signInMethod: $signInMethod, emailAddress: $emailAddress, password: $password, countryFlag: $countryFlag)';
}


}

/// @nodoc
abstract mixin class $ProfileModelCopyWith<$Res>  {
  factory $ProfileModelCopyWith(ProfileModel value, $Res Function(ProfileModel) _then) = _$ProfileModelCopyWithImpl;
@useResult
$Res call({
 String? country, String? dateOfBirth, String? fullName, String? gender, String? profilePic, String? uid, String? signInMethod, String? emailAddress, String? password, String? countryFlag
});




}
/// @nodoc
class _$ProfileModelCopyWithImpl<$Res>
    implements $ProfileModelCopyWith<$Res> {
  _$ProfileModelCopyWithImpl(this._self, this._then);

  final ProfileModel _self;
  final $Res Function(ProfileModel) _then;

/// Create a copy of ProfileModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? country = freezed,Object? dateOfBirth = freezed,Object? fullName = freezed,Object? gender = freezed,Object? profilePic = freezed,Object? uid = freezed,Object? signInMethod = freezed,Object? emailAddress = freezed,Object? password = freezed,Object? countryFlag = freezed,}) {
  return _then(_self.copyWith(
country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,dateOfBirth: freezed == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as String?,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,profilePic: freezed == profilePic ? _self.profilePic : profilePic // ignore: cast_nullable_to_non_nullable
as String?,uid: freezed == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String?,signInMethod: freezed == signInMethod ? _self.signInMethod : signInMethod // ignore: cast_nullable_to_non_nullable
as String?,emailAddress: freezed == emailAddress ? _self.emailAddress : emailAddress // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,countryFlag: freezed == countryFlag ? _self.countryFlag : countryFlag // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProfileModel].
extension ProfileModelPatterns on ProfileModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileModel value)  $default,){
final _that = this;
switch (_that) {
case _ProfileModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? country,  String? dateOfBirth,  String? fullName,  String? gender,  String? profilePic,  String? uid,  String? signInMethod,  String? emailAddress,  String? password,  String? countryFlag)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileModel() when $default != null:
return $default(_that.country,_that.dateOfBirth,_that.fullName,_that.gender,_that.profilePic,_that.uid,_that.signInMethod,_that.emailAddress,_that.password,_that.countryFlag);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? country,  String? dateOfBirth,  String? fullName,  String? gender,  String? profilePic,  String? uid,  String? signInMethod,  String? emailAddress,  String? password,  String? countryFlag)  $default,) {final _that = this;
switch (_that) {
case _ProfileModel():
return $default(_that.country,_that.dateOfBirth,_that.fullName,_that.gender,_that.profilePic,_that.uid,_that.signInMethod,_that.emailAddress,_that.password,_that.countryFlag);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? country,  String? dateOfBirth,  String? fullName,  String? gender,  String? profilePic,  String? uid,  String? signInMethod,  String? emailAddress,  String? password,  String? countryFlag)?  $default,) {final _that = this;
switch (_that) {
case _ProfileModel() when $default != null:
return $default(_that.country,_that.dateOfBirth,_that.fullName,_that.gender,_that.profilePic,_that.uid,_that.signInMethod,_that.emailAddress,_that.password,_that.countryFlag);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProfileModel implements ProfileModel {
   _ProfileModel({this.country, this.dateOfBirth, this.fullName, this.gender, this.profilePic, this.uid, this.signInMethod, this.emailAddress, this.password, this.countryFlag});
  factory _ProfileModel.fromJson(Map<String, dynamic> json) => _$ProfileModelFromJson(json);

@override final  String? country;
@override final  String? dateOfBirth;
@override final  String? fullName;
@override final  String? gender;
@override final  String? profilePic;
@override final  String? uid;
@override final  String? signInMethod;
@override final  String? emailAddress;
@override final  String? password;
@override final  String? countryFlag;

/// Create a copy of ProfileModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileModelCopyWith<_ProfileModel> get copyWith => __$ProfileModelCopyWithImpl<_ProfileModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProfileModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileModel&&(identical(other.country, country) || other.country == country)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.profilePic, profilePic) || other.profilePic == profilePic)&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.signInMethod, signInMethod) || other.signInMethod == signInMethod)&&(identical(other.emailAddress, emailAddress) || other.emailAddress == emailAddress)&&(identical(other.password, password) || other.password == password)&&(identical(other.countryFlag, countryFlag) || other.countryFlag == countryFlag));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,country,dateOfBirth,fullName,gender,profilePic,uid,signInMethod,emailAddress,password,countryFlag);

@override
String toString() {
  return 'ProfileModel(country: $country, dateOfBirth: $dateOfBirth, fullName: $fullName, gender: $gender, profilePic: $profilePic, uid: $uid, signInMethod: $signInMethod, emailAddress: $emailAddress, password: $password, countryFlag: $countryFlag)';
}


}

/// @nodoc
abstract mixin class _$ProfileModelCopyWith<$Res> implements $ProfileModelCopyWith<$Res> {
  factory _$ProfileModelCopyWith(_ProfileModel value, $Res Function(_ProfileModel) _then) = __$ProfileModelCopyWithImpl;
@override @useResult
$Res call({
 String? country, String? dateOfBirth, String? fullName, String? gender, String? profilePic, String? uid, String? signInMethod, String? emailAddress, String? password, String? countryFlag
});




}
/// @nodoc
class __$ProfileModelCopyWithImpl<$Res>
    implements _$ProfileModelCopyWith<$Res> {
  __$ProfileModelCopyWithImpl(this._self, this._then);

  final _ProfileModel _self;
  final $Res Function(_ProfileModel) _then;

/// Create a copy of ProfileModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? country = freezed,Object? dateOfBirth = freezed,Object? fullName = freezed,Object? gender = freezed,Object? profilePic = freezed,Object? uid = freezed,Object? signInMethod = freezed,Object? emailAddress = freezed,Object? password = freezed,Object? countryFlag = freezed,}) {
  return _then(_ProfileModel(
country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,dateOfBirth: freezed == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as String?,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,profilePic: freezed == profilePic ? _self.profilePic : profilePic // ignore: cast_nullable_to_non_nullable
as String?,uid: freezed == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String?,signInMethod: freezed == signInMethod ? _self.signInMethod : signInMethod // ignore: cast_nullable_to_non_nullable
as String?,emailAddress: freezed == emailAddress ? _self.emailAddress : emailAddress // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,countryFlag: freezed == countryFlag ? _self.countryFlag : countryFlag // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
