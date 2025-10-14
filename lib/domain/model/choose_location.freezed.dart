// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'choose_location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChooseLocation {

 String get flag; String get countryName; double get latitude; double get longitude;
/// Create a copy of ChooseLocation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChooseLocationCopyWith<ChooseLocation> get copyWith => _$ChooseLocationCopyWithImpl<ChooseLocation>(this as ChooseLocation, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChooseLocation&&(identical(other.flag, flag) || other.flag == flag)&&(identical(other.countryName, countryName) || other.countryName == countryName)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude));
}


@override
int get hashCode => Object.hash(runtimeType,flag,countryName,latitude,longitude);

@override
String toString() {
  return 'ChooseLocation(flag: $flag, countryName: $countryName, latitude: $latitude, longitude: $longitude)';
}


}

/// @nodoc
abstract mixin class $ChooseLocationCopyWith<$Res>  {
  factory $ChooseLocationCopyWith(ChooseLocation value, $Res Function(ChooseLocation) _then) = _$ChooseLocationCopyWithImpl;
@useResult
$Res call({
 String flag, String countryName, double latitude, double longitude
});




}
/// @nodoc
class _$ChooseLocationCopyWithImpl<$Res>
    implements $ChooseLocationCopyWith<$Res> {
  _$ChooseLocationCopyWithImpl(this._self, this._then);

  final ChooseLocation _self;
  final $Res Function(ChooseLocation) _then;

/// Create a copy of ChooseLocation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? flag = null,Object? countryName = null,Object? latitude = null,Object? longitude = null,}) {
  return _then(_self.copyWith(
flag: null == flag ? _self.flag : flag // ignore: cast_nullable_to_non_nullable
as String,countryName: null == countryName ? _self.countryName : countryName // ignore: cast_nullable_to_non_nullable
as String,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [ChooseLocation].
extension ChooseLocationPatterns on ChooseLocation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChooseLocation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChooseLocation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChooseLocation value)  $default,){
final _that = this;
switch (_that) {
case _ChooseLocation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChooseLocation value)?  $default,){
final _that = this;
switch (_that) {
case _ChooseLocation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String flag,  String countryName,  double latitude,  double longitude)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChooseLocation() when $default != null:
return $default(_that.flag,_that.countryName,_that.latitude,_that.longitude);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String flag,  String countryName,  double latitude,  double longitude)  $default,) {final _that = this;
switch (_that) {
case _ChooseLocation():
return $default(_that.flag,_that.countryName,_that.latitude,_that.longitude);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String flag,  String countryName,  double latitude,  double longitude)?  $default,) {final _that = this;
switch (_that) {
case _ChooseLocation() when $default != null:
return $default(_that.flag,_that.countryName,_that.latitude,_that.longitude);case _:
  return null;

}
}

}

/// @nodoc


class _ChooseLocation implements ChooseLocation {
   _ChooseLocation({required this.flag, required this.countryName, required this.latitude, required this.longitude});
  

@override final  String flag;
@override final  String countryName;
@override final  double latitude;
@override final  double longitude;

/// Create a copy of ChooseLocation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChooseLocationCopyWith<_ChooseLocation> get copyWith => __$ChooseLocationCopyWithImpl<_ChooseLocation>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChooseLocation&&(identical(other.flag, flag) || other.flag == flag)&&(identical(other.countryName, countryName) || other.countryName == countryName)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude));
}


@override
int get hashCode => Object.hash(runtimeType,flag,countryName,latitude,longitude);

@override
String toString() {
  return 'ChooseLocation(flag: $flag, countryName: $countryName, latitude: $latitude, longitude: $longitude)';
}


}

/// @nodoc
abstract mixin class _$ChooseLocationCopyWith<$Res> implements $ChooseLocationCopyWith<$Res> {
  factory _$ChooseLocationCopyWith(_ChooseLocation value, $Res Function(_ChooseLocation) _then) = __$ChooseLocationCopyWithImpl;
@override @useResult
$Res call({
 String flag, String countryName, double latitude, double longitude
});




}
/// @nodoc
class __$ChooseLocationCopyWithImpl<$Res>
    implements _$ChooseLocationCopyWith<$Res> {
  __$ChooseLocationCopyWithImpl(this._self, this._then);

  final _ChooseLocation _self;
  final $Res Function(_ChooseLocation) _then;

/// Create a copy of ChooseLocation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? flag = null,Object? countryName = null,Object? latitude = null,Object? longitude = null,}) {
  return _then(_ChooseLocation(
flag: null == flag ? _self.flag : flag // ignore: cast_nullable_to_non_nullable
as String,countryName: null == countryName ? _self.countryName : countryName // ignore: cast_nullable_to_non_nullable
as String,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
