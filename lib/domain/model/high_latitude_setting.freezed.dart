// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'high_latitude_setting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HighLatitudeSetting {

 String get name; PrayHightLatitudeCaluclationState get method; bool get isSelected;
/// Create a copy of HighLatitudeSetting
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HighLatitudeSettingCopyWith<HighLatitudeSetting> get copyWith => _$HighLatitudeSettingCopyWithImpl<HighLatitudeSetting>(this as HighLatitudeSetting, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HighLatitudeSetting&&(identical(other.name, name) || other.name == name)&&(identical(other.method, method) || other.method == method)&&(identical(other.isSelected, isSelected) || other.isSelected == isSelected));
}


@override
int get hashCode => Object.hash(runtimeType,name,method,isSelected);

@override
String toString() {
  return 'HighLatitudeSetting(name: $name, method: $method, isSelected: $isSelected)';
}


}

/// @nodoc
abstract mixin class $HighLatitudeSettingCopyWith<$Res>  {
  factory $HighLatitudeSettingCopyWith(HighLatitudeSetting value, $Res Function(HighLatitudeSetting) _then) = _$HighLatitudeSettingCopyWithImpl;
@useResult
$Res call({
 String name, PrayHightLatitudeCaluclationState method, bool isSelected
});


$PrayHightLatitudeCaluclationStateCopyWith<$Res> get method;

}
/// @nodoc
class _$HighLatitudeSettingCopyWithImpl<$Res>
    implements $HighLatitudeSettingCopyWith<$Res> {
  _$HighLatitudeSettingCopyWithImpl(this._self, this._then);

  final HighLatitudeSetting _self;
  final $Res Function(HighLatitudeSetting) _then;

/// Create a copy of HighLatitudeSetting
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? method = null,Object? isSelected = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as PrayHightLatitudeCaluclationState,isSelected: null == isSelected ? _self.isSelected : isSelected // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of HighLatitudeSetting
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PrayHightLatitudeCaluclationStateCopyWith<$Res> get method {
  
  return $PrayHightLatitudeCaluclationStateCopyWith<$Res>(_self.method, (value) {
    return _then(_self.copyWith(method: value));
  });
}
}


/// Adds pattern-matching-related methods to [HighLatitudeSetting].
extension HighLatitudeSettingPatterns on HighLatitudeSetting {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HighLatitudeSetting value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HighLatitudeSetting() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HighLatitudeSetting value)  $default,){
final _that = this;
switch (_that) {
case _HighLatitudeSetting():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HighLatitudeSetting value)?  $default,){
final _that = this;
switch (_that) {
case _HighLatitudeSetting() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  PrayHightLatitudeCaluclationState method,  bool isSelected)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HighLatitudeSetting() when $default != null:
return $default(_that.name,_that.method,_that.isSelected);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  PrayHightLatitudeCaluclationState method,  bool isSelected)  $default,) {final _that = this;
switch (_that) {
case _HighLatitudeSetting():
return $default(_that.name,_that.method,_that.isSelected);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  PrayHightLatitudeCaluclationState method,  bool isSelected)?  $default,) {final _that = this;
switch (_that) {
case _HighLatitudeSetting() when $default != null:
return $default(_that.name,_that.method,_that.isSelected);case _:
  return null;

}
}

}

/// @nodoc


class _HighLatitudeSetting implements HighLatitudeSetting {
   _HighLatitudeSetting({required this.name, required this.method, required this.isSelected});
  

@override final  String name;
@override final  PrayHightLatitudeCaluclationState method;
@override final  bool isSelected;

/// Create a copy of HighLatitudeSetting
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HighLatitudeSettingCopyWith<_HighLatitudeSetting> get copyWith => __$HighLatitudeSettingCopyWithImpl<_HighLatitudeSetting>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HighLatitudeSetting&&(identical(other.name, name) || other.name == name)&&(identical(other.method, method) || other.method == method)&&(identical(other.isSelected, isSelected) || other.isSelected == isSelected));
}


@override
int get hashCode => Object.hash(runtimeType,name,method,isSelected);

@override
String toString() {
  return 'HighLatitudeSetting(name: $name, method: $method, isSelected: $isSelected)';
}


}

/// @nodoc
abstract mixin class _$HighLatitudeSettingCopyWith<$Res> implements $HighLatitudeSettingCopyWith<$Res> {
  factory _$HighLatitudeSettingCopyWith(_HighLatitudeSetting value, $Res Function(_HighLatitudeSetting) _then) = __$HighLatitudeSettingCopyWithImpl;
@override @useResult
$Res call({
 String name, PrayHightLatitudeCaluclationState method, bool isSelected
});


@override $PrayHightLatitudeCaluclationStateCopyWith<$Res> get method;

}
/// @nodoc
class __$HighLatitudeSettingCopyWithImpl<$Res>
    implements _$HighLatitudeSettingCopyWith<$Res> {
  __$HighLatitudeSettingCopyWithImpl(this._self, this._then);

  final _HighLatitudeSetting _self;
  final $Res Function(_HighLatitudeSetting) _then;

/// Create a copy of HighLatitudeSetting
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? method = null,Object? isSelected = null,}) {
  return _then(_HighLatitudeSetting(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as PrayHightLatitudeCaluclationState,isSelected: null == isSelected ? _self.isSelected : isSelected // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of HighLatitudeSetting
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PrayHightLatitudeCaluclationStateCopyWith<$Res> get method {
  
  return $PrayHightLatitudeCaluclationStateCopyWith<$Res>(_self.method, (value) {
    return _then(_self.copyWith(method: value));
  });
}
}

// dart format on
