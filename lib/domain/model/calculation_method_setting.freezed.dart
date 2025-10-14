// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calculation_method_setting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CalculationMethodSetting {

 String get name; PrayCalculationMethodState get method; bool get isSelected;
/// Create a copy of CalculationMethodSetting
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CalculationMethodSettingCopyWith<CalculationMethodSetting> get copyWith => _$CalculationMethodSettingCopyWithImpl<CalculationMethodSetting>(this as CalculationMethodSetting, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CalculationMethodSetting&&(identical(other.name, name) || other.name == name)&&(identical(other.method, method) || other.method == method)&&(identical(other.isSelected, isSelected) || other.isSelected == isSelected));
}


@override
int get hashCode => Object.hash(runtimeType,name,method,isSelected);

@override
String toString() {
  return 'CalculationMethodSetting(name: $name, method: $method, isSelected: $isSelected)';
}


}

/// @nodoc
abstract mixin class $CalculationMethodSettingCopyWith<$Res>  {
  factory $CalculationMethodSettingCopyWith(CalculationMethodSetting value, $Res Function(CalculationMethodSetting) _then) = _$CalculationMethodSettingCopyWithImpl;
@useResult
$Res call({
 String name, PrayCalculationMethodState method, bool isSelected
});


$PrayCalculationMethodStateCopyWith<$Res> get method;

}
/// @nodoc
class _$CalculationMethodSettingCopyWithImpl<$Res>
    implements $CalculationMethodSettingCopyWith<$Res> {
  _$CalculationMethodSettingCopyWithImpl(this._self, this._then);

  final CalculationMethodSetting _self;
  final $Res Function(CalculationMethodSetting) _then;

/// Create a copy of CalculationMethodSetting
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? method = null,Object? isSelected = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as PrayCalculationMethodState,isSelected: null == isSelected ? _self.isSelected : isSelected // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of CalculationMethodSetting
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PrayCalculationMethodStateCopyWith<$Res> get method {
  
  return $PrayCalculationMethodStateCopyWith<$Res>(_self.method, (value) {
    return _then(_self.copyWith(method: value));
  });
}
}


/// Adds pattern-matching-related methods to [CalculationMethodSetting].
extension CalculationMethodSettingPatterns on CalculationMethodSetting {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CalculationMethodSetting value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CalculationMethodSetting() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CalculationMethodSetting value)  $default,){
final _that = this;
switch (_that) {
case _CalculationMethodSetting():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CalculationMethodSetting value)?  $default,){
final _that = this;
switch (_that) {
case _CalculationMethodSetting() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  PrayCalculationMethodState method,  bool isSelected)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CalculationMethodSetting() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  PrayCalculationMethodState method,  bool isSelected)  $default,) {final _that = this;
switch (_that) {
case _CalculationMethodSetting():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  PrayCalculationMethodState method,  bool isSelected)?  $default,) {final _that = this;
switch (_that) {
case _CalculationMethodSetting() when $default != null:
return $default(_that.name,_that.method,_that.isSelected);case _:
  return null;

}
}

}

/// @nodoc


class _CalculationMethodSetting implements CalculationMethodSetting {
   _CalculationMethodSetting({required this.name, required this.method, required this.isSelected});
  

@override final  String name;
@override final  PrayCalculationMethodState method;
@override final  bool isSelected;

/// Create a copy of CalculationMethodSetting
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CalculationMethodSettingCopyWith<_CalculationMethodSetting> get copyWith => __$CalculationMethodSettingCopyWithImpl<_CalculationMethodSetting>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CalculationMethodSetting&&(identical(other.name, name) || other.name == name)&&(identical(other.method, method) || other.method == method)&&(identical(other.isSelected, isSelected) || other.isSelected == isSelected));
}


@override
int get hashCode => Object.hash(runtimeType,name,method,isSelected);

@override
String toString() {
  return 'CalculationMethodSetting(name: $name, method: $method, isSelected: $isSelected)';
}


}

/// @nodoc
abstract mixin class _$CalculationMethodSettingCopyWith<$Res> implements $CalculationMethodSettingCopyWith<$Res> {
  factory _$CalculationMethodSettingCopyWith(_CalculationMethodSetting value, $Res Function(_CalculationMethodSetting) _then) = __$CalculationMethodSettingCopyWithImpl;
@override @useResult
$Res call({
 String name, PrayCalculationMethodState method, bool isSelected
});


@override $PrayCalculationMethodStateCopyWith<$Res> get method;

}
/// @nodoc
class __$CalculationMethodSettingCopyWithImpl<$Res>
    implements _$CalculationMethodSettingCopyWith<$Res> {
  __$CalculationMethodSettingCopyWithImpl(this._self, this._then);

  final _CalculationMethodSetting _self;
  final $Res Function(_CalculationMethodSetting) _then;

/// Create a copy of CalculationMethodSetting
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? method = null,Object? isSelected = null,}) {
  return _then(_CalculationMethodSetting(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as PrayCalculationMethodState,isSelected: null == isSelected ? _self.isSelected : isSelected // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of CalculationMethodSetting
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PrayCalculationMethodStateCopyWith<$Res> get method {
  
  return $PrayCalculationMethodStateCopyWith<$Res>(_self.method, (value) {
    return _then(_self.copyWith(method: value));
  });
}
}

// dart format on
