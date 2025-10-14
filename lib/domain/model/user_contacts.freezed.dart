// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_contacts.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserContacts {

 String get fullName; String get mobileNumber; String get email; bool get selected;
/// Create a copy of UserContacts
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserContactsCopyWith<UserContacts> get copyWith => _$UserContactsCopyWithImpl<UserContacts>(this as UserContacts, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserContacts&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.email, email) || other.email == email)&&(identical(other.selected, selected) || other.selected == selected));
}


@override
int get hashCode => Object.hash(runtimeType,fullName,mobileNumber,email,selected);

@override
String toString() {
  return 'UserContacts(fullName: $fullName, mobileNumber: $mobileNumber, email: $email, selected: $selected)';
}


}

/// @nodoc
abstract mixin class $UserContactsCopyWith<$Res>  {
  factory $UserContactsCopyWith(UserContacts value, $Res Function(UserContacts) _then) = _$UserContactsCopyWithImpl;
@useResult
$Res call({
 String fullName, String mobileNumber, String email, bool selected
});




}
/// @nodoc
class _$UserContactsCopyWithImpl<$Res>
    implements $UserContactsCopyWith<$Res> {
  _$UserContactsCopyWithImpl(this._self, this._then);

  final UserContacts _self;
  final $Res Function(UserContacts) _then;

/// Create a copy of UserContacts
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fullName = null,Object? mobileNumber = null,Object? email = null,Object? selected = null,}) {
  return _then(_self.copyWith(
fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,mobileNumber: null == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,selected: null == selected ? _self.selected : selected // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [UserContacts].
extension UserContactsPatterns on UserContacts {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserContacts value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserContacts() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserContacts value)  $default,){
final _that = this;
switch (_that) {
case _UserContacts():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserContacts value)?  $default,){
final _that = this;
switch (_that) {
case _UserContacts() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String fullName,  String mobileNumber,  String email,  bool selected)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserContacts() when $default != null:
return $default(_that.fullName,_that.mobileNumber,_that.email,_that.selected);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String fullName,  String mobileNumber,  String email,  bool selected)  $default,) {final _that = this;
switch (_that) {
case _UserContacts():
return $default(_that.fullName,_that.mobileNumber,_that.email,_that.selected);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String fullName,  String mobileNumber,  String email,  bool selected)?  $default,) {final _that = this;
switch (_that) {
case _UserContacts() when $default != null:
return $default(_that.fullName,_that.mobileNumber,_that.email,_that.selected);case _:
  return null;

}
}

}

/// @nodoc


class _UserContacts implements UserContacts {
   _UserContacts({this.fullName = '', this.mobileNumber = '', this.email = '', this.selected = false});
  

@override@JsonKey() final  String fullName;
@override@JsonKey() final  String mobileNumber;
@override@JsonKey() final  String email;
@override@JsonKey() final  bool selected;

/// Create a copy of UserContacts
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserContactsCopyWith<_UserContacts> get copyWith => __$UserContactsCopyWithImpl<_UserContacts>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserContacts&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.email, email) || other.email == email)&&(identical(other.selected, selected) || other.selected == selected));
}


@override
int get hashCode => Object.hash(runtimeType,fullName,mobileNumber,email,selected);

@override
String toString() {
  return 'UserContacts(fullName: $fullName, mobileNumber: $mobileNumber, email: $email, selected: $selected)';
}


}

/// @nodoc
abstract mixin class _$UserContactsCopyWith<$Res> implements $UserContactsCopyWith<$Res> {
  factory _$UserContactsCopyWith(_UserContacts value, $Res Function(_UserContacts) _then) = __$UserContactsCopyWithImpl;
@override @useResult
$Res call({
 String fullName, String mobileNumber, String email, bool selected
});




}
/// @nodoc
class __$UserContactsCopyWithImpl<$Res>
    implements _$UserContactsCopyWith<$Res> {
  __$UserContactsCopyWithImpl(this._self, this._then);

  final _UserContacts _self;
  final $Res Function(_UserContacts) _then;

/// Create a copy of UserContacts
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fullName = null,Object? mobileNumber = null,Object? email = null,Object? selected = null,}) {
  return _then(_UserContacts(
fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,mobileNumber: null == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,selected: null == selected ? _self.selected : selected // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
