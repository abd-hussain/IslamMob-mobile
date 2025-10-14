// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'time_zone_setting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TimeZoneSetting {

 String get name; Duration get duration; bool get isSelected;
/// Create a copy of TimeZoneSetting
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TimeZoneSettingCopyWith<TimeZoneSetting> get copyWith => _$TimeZoneSettingCopyWithImpl<TimeZoneSetting>(this as TimeZoneSetting, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TimeZoneSetting&&(identical(other.name, name) || other.name == name)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.isSelected, isSelected) || other.isSelected == isSelected));
}


@override
int get hashCode => Object.hash(runtimeType,name,duration,isSelected);

@override
String toString() {
  return 'TimeZoneSetting(name: $name, duration: $duration, isSelected: $isSelected)';
}


}

/// @nodoc
abstract mixin class $TimeZoneSettingCopyWith<$Res>  {
  factory $TimeZoneSettingCopyWith(TimeZoneSetting value, $Res Function(TimeZoneSetting) _then) = _$TimeZoneSettingCopyWithImpl;
@useResult
$Res call({
 String name, Duration duration, bool isSelected
});




}
/// @nodoc
class _$TimeZoneSettingCopyWithImpl<$Res>
    implements $TimeZoneSettingCopyWith<$Res> {
  _$TimeZoneSettingCopyWithImpl(this._self, this._then);

  final TimeZoneSetting _self;
  final $Res Function(TimeZoneSetting) _then;

/// Create a copy of TimeZoneSetting
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? duration = null,Object? isSelected = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as Duration,isSelected: null == isSelected ? _self.isSelected : isSelected // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [TimeZoneSetting].
extension TimeZoneSettingPatterns on TimeZoneSetting {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TimeZoneSetting value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TimeZoneSetting() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TimeZoneSetting value)  $default,){
final _that = this;
switch (_that) {
case _TimeZoneSetting():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TimeZoneSetting value)?  $default,){
final _that = this;
switch (_that) {
case _TimeZoneSetting() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  Duration duration,  bool isSelected)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TimeZoneSetting() when $default != null:
return $default(_that.name,_that.duration,_that.isSelected);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  Duration duration,  bool isSelected)  $default,) {final _that = this;
switch (_that) {
case _TimeZoneSetting():
return $default(_that.name,_that.duration,_that.isSelected);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  Duration duration,  bool isSelected)?  $default,) {final _that = this;
switch (_that) {
case _TimeZoneSetting() when $default != null:
return $default(_that.name,_that.duration,_that.isSelected);case _:
  return null;

}
}

}

/// @nodoc


class _TimeZoneSetting implements TimeZoneSetting {
   _TimeZoneSetting({required this.name, required this.duration, required this.isSelected});
  

@override final  String name;
@override final  Duration duration;
@override final  bool isSelected;

/// Create a copy of TimeZoneSetting
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TimeZoneSettingCopyWith<_TimeZoneSetting> get copyWith => __$TimeZoneSettingCopyWithImpl<_TimeZoneSetting>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TimeZoneSetting&&(identical(other.name, name) || other.name == name)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.isSelected, isSelected) || other.isSelected == isSelected));
}


@override
int get hashCode => Object.hash(runtimeType,name,duration,isSelected);

@override
String toString() {
  return 'TimeZoneSetting(name: $name, duration: $duration, isSelected: $isSelected)';
}


}

/// @nodoc
abstract mixin class _$TimeZoneSettingCopyWith<$Res> implements $TimeZoneSettingCopyWith<$Res> {
  factory _$TimeZoneSettingCopyWith(_TimeZoneSetting value, $Res Function(_TimeZoneSetting) _then) = __$TimeZoneSettingCopyWithImpl;
@override @useResult
$Res call({
 String name, Duration duration, bool isSelected
});




}
/// @nodoc
class __$TimeZoneSettingCopyWithImpl<$Res>
    implements _$TimeZoneSettingCopyWith<$Res> {
  __$TimeZoneSettingCopyWithImpl(this._self, this._then);

  final _TimeZoneSetting _self;
  final $Res Function(_TimeZoneSetting) _then;

/// Create a copy of TimeZoneSetting
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? duration = null,Object? isSelected = null,}) {
  return _then(_TimeZoneSetting(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as Duration,isSelected: null == isSelected ? _self.isSelected : isSelected // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
