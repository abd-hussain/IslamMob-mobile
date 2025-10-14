// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'salah_config_setting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SalahConfigSetting {

 SalahTimeState get salahType; DateTime? Function(PrayCalculationSettingState) get stateSelector;
/// Create a copy of SalahConfigSetting
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SalahConfigSettingCopyWith<SalahConfigSetting> get copyWith => _$SalahConfigSettingCopyWithImpl<SalahConfigSetting>(this as SalahConfigSetting, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SalahConfigSetting&&(identical(other.salahType, salahType) || other.salahType == salahType)&&(identical(other.stateSelector, stateSelector) || other.stateSelector == stateSelector));
}


@override
int get hashCode => Object.hash(runtimeType,salahType,stateSelector);

@override
String toString() {
  return 'SalahConfigSetting(salahType: $salahType, stateSelector: $stateSelector)';
}


}

/// @nodoc
abstract mixin class $SalahConfigSettingCopyWith<$Res>  {
  factory $SalahConfigSettingCopyWith(SalahConfigSetting value, $Res Function(SalahConfigSetting) _then) = _$SalahConfigSettingCopyWithImpl;
@useResult
$Res call({
 SalahTimeState salahType, DateTime? Function(PrayCalculationSettingState) stateSelector
});


$SalahTimeStateCopyWith<$Res> get salahType;

}
/// @nodoc
class _$SalahConfigSettingCopyWithImpl<$Res>
    implements $SalahConfigSettingCopyWith<$Res> {
  _$SalahConfigSettingCopyWithImpl(this._self, this._then);

  final SalahConfigSetting _self;
  final $Res Function(SalahConfigSetting) _then;

/// Create a copy of SalahConfigSetting
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? salahType = null,Object? stateSelector = null,}) {
  return _then(_self.copyWith(
salahType: null == salahType ? _self.salahType : salahType // ignore: cast_nullable_to_non_nullable
as SalahTimeState,stateSelector: null == stateSelector ? _self.stateSelector : stateSelector // ignore: cast_nullable_to_non_nullable
as DateTime? Function(PrayCalculationSettingState),
  ));
}
/// Create a copy of SalahConfigSetting
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SalahTimeStateCopyWith<$Res> get salahType {
  
  return $SalahTimeStateCopyWith<$Res>(_self.salahType, (value) {
    return _then(_self.copyWith(salahType: value));
  });
}
}


/// Adds pattern-matching-related methods to [SalahConfigSetting].
extension SalahConfigSettingPatterns on SalahConfigSetting {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SalahConfigSetting value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SalahConfigSetting() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SalahConfigSetting value)  $default,){
final _that = this;
switch (_that) {
case _SalahConfigSetting():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SalahConfigSetting value)?  $default,){
final _that = this;
switch (_that) {
case _SalahConfigSetting() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SalahTimeState salahType,  DateTime? Function(PrayCalculationSettingState) stateSelector)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SalahConfigSetting() when $default != null:
return $default(_that.salahType,_that.stateSelector);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SalahTimeState salahType,  DateTime? Function(PrayCalculationSettingState) stateSelector)  $default,) {final _that = this;
switch (_that) {
case _SalahConfigSetting():
return $default(_that.salahType,_that.stateSelector);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SalahTimeState salahType,  DateTime? Function(PrayCalculationSettingState) stateSelector)?  $default,) {final _that = this;
switch (_that) {
case _SalahConfigSetting() when $default != null:
return $default(_that.salahType,_that.stateSelector);case _:
  return null;

}
}

}

/// @nodoc


class _SalahConfigSetting implements SalahConfigSetting {
   _SalahConfigSetting({required this.salahType, required this.stateSelector});
  

@override final  SalahTimeState salahType;
@override final  DateTime? Function(PrayCalculationSettingState) stateSelector;

/// Create a copy of SalahConfigSetting
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SalahConfigSettingCopyWith<_SalahConfigSetting> get copyWith => __$SalahConfigSettingCopyWithImpl<_SalahConfigSetting>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SalahConfigSetting&&(identical(other.salahType, salahType) || other.salahType == salahType)&&(identical(other.stateSelector, stateSelector) || other.stateSelector == stateSelector));
}


@override
int get hashCode => Object.hash(runtimeType,salahType,stateSelector);

@override
String toString() {
  return 'SalahConfigSetting(salahType: $salahType, stateSelector: $stateSelector)';
}


}

/// @nodoc
abstract mixin class _$SalahConfigSettingCopyWith<$Res> implements $SalahConfigSettingCopyWith<$Res> {
  factory _$SalahConfigSettingCopyWith(_SalahConfigSetting value, $Res Function(_SalahConfigSetting) _then) = __$SalahConfigSettingCopyWithImpl;
@override @useResult
$Res call({
 SalahTimeState salahType, DateTime? Function(PrayCalculationSettingState) stateSelector
});


@override $SalahTimeStateCopyWith<$Res> get salahType;

}
/// @nodoc
class __$SalahConfigSettingCopyWithImpl<$Res>
    implements _$SalahConfigSettingCopyWith<$Res> {
  __$SalahConfigSettingCopyWithImpl(this._self, this._then);

  final _SalahConfigSetting _self;
  final $Res Function(_SalahConfigSetting) _then;

/// Create a copy of SalahConfigSetting
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? salahType = null,Object? stateSelector = null,}) {
  return _then(_SalahConfigSetting(
salahType: null == salahType ? _self.salahType : salahType // ignore: cast_nullable_to_non_nullable
as SalahTimeState,stateSelector: null == stateSelector ? _self.stateSelector : stateSelector // ignore: cast_nullable_to_non_nullable
as DateTime? Function(PrayCalculationSettingState),
  ));
}

/// Create a copy of SalahConfigSetting
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SalahTimeStateCopyWith<$Res> get salahType {
  
  return $SalahTimeStateCopyWith<$Res>(_self.salahType, (value) {
    return _then(_self.copyWith(salahType: value));
  });
}
}

// dart format on
