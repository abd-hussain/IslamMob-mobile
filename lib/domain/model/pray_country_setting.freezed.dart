// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pray_country_setting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PrayCountrySetting {

 String get countryCode; MadhabState get madhab; PrayCalculationMethodState get calculationMethod; PrayHightLatitudeCaluclationState get hightLatitudeCaluclationState;
/// Create a copy of PrayCountrySetting
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PrayCountrySettingCopyWith<PrayCountrySetting> get copyWith => _$PrayCountrySettingCopyWithImpl<PrayCountrySetting>(this as PrayCountrySetting, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PrayCountrySetting&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.madhab, madhab) || other.madhab == madhab)&&(identical(other.calculationMethod, calculationMethod) || other.calculationMethod == calculationMethod)&&(identical(other.hightLatitudeCaluclationState, hightLatitudeCaluclationState) || other.hightLatitudeCaluclationState == hightLatitudeCaluclationState));
}


@override
int get hashCode => Object.hash(runtimeType,countryCode,madhab,calculationMethod,hightLatitudeCaluclationState);

@override
String toString() {
  return 'PrayCountrySetting(countryCode: $countryCode, madhab: $madhab, calculationMethod: $calculationMethod, hightLatitudeCaluclationState: $hightLatitudeCaluclationState)';
}


}

/// @nodoc
abstract mixin class $PrayCountrySettingCopyWith<$Res>  {
  factory $PrayCountrySettingCopyWith(PrayCountrySetting value, $Res Function(PrayCountrySetting) _then) = _$PrayCountrySettingCopyWithImpl;
@useResult
$Res call({
 String countryCode, MadhabState madhab, PrayCalculationMethodState calculationMethod, PrayHightLatitudeCaluclationState hightLatitudeCaluclationState
});


$MadhabStateCopyWith<$Res> get madhab;$PrayCalculationMethodStateCopyWith<$Res> get calculationMethod;$PrayHightLatitudeCaluclationStateCopyWith<$Res> get hightLatitudeCaluclationState;

}
/// @nodoc
class _$PrayCountrySettingCopyWithImpl<$Res>
    implements $PrayCountrySettingCopyWith<$Res> {
  _$PrayCountrySettingCopyWithImpl(this._self, this._then);

  final PrayCountrySetting _self;
  final $Res Function(PrayCountrySetting) _then;

/// Create a copy of PrayCountrySetting
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? countryCode = null,Object? madhab = null,Object? calculationMethod = null,Object? hightLatitudeCaluclationState = null,}) {
  return _then(_self.copyWith(
countryCode: null == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String,madhab: null == madhab ? _self.madhab : madhab // ignore: cast_nullable_to_non_nullable
as MadhabState,calculationMethod: null == calculationMethod ? _self.calculationMethod : calculationMethod // ignore: cast_nullable_to_non_nullable
as PrayCalculationMethodState,hightLatitudeCaluclationState: null == hightLatitudeCaluclationState ? _self.hightLatitudeCaluclationState : hightLatitudeCaluclationState // ignore: cast_nullable_to_non_nullable
as PrayHightLatitudeCaluclationState,
  ));
}
/// Create a copy of PrayCountrySetting
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MadhabStateCopyWith<$Res> get madhab {
  
  return $MadhabStateCopyWith<$Res>(_self.madhab, (value) {
    return _then(_self.copyWith(madhab: value));
  });
}/// Create a copy of PrayCountrySetting
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PrayCalculationMethodStateCopyWith<$Res> get calculationMethod {
  
  return $PrayCalculationMethodStateCopyWith<$Res>(_self.calculationMethod, (value) {
    return _then(_self.copyWith(calculationMethod: value));
  });
}/// Create a copy of PrayCountrySetting
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PrayHightLatitudeCaluclationStateCopyWith<$Res> get hightLatitudeCaluclationState {
  
  return $PrayHightLatitudeCaluclationStateCopyWith<$Res>(_self.hightLatitudeCaluclationState, (value) {
    return _then(_self.copyWith(hightLatitudeCaluclationState: value));
  });
}
}


/// Adds pattern-matching-related methods to [PrayCountrySetting].
extension PrayCountrySettingPatterns on PrayCountrySetting {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PrayCountrySetting value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PrayCountrySetting() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PrayCountrySetting value)  $default,){
final _that = this;
switch (_that) {
case _PrayCountrySetting():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PrayCountrySetting value)?  $default,){
final _that = this;
switch (_that) {
case _PrayCountrySetting() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String countryCode,  MadhabState madhab,  PrayCalculationMethodState calculationMethod,  PrayHightLatitudeCaluclationState hightLatitudeCaluclationState)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PrayCountrySetting() when $default != null:
return $default(_that.countryCode,_that.madhab,_that.calculationMethod,_that.hightLatitudeCaluclationState);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String countryCode,  MadhabState madhab,  PrayCalculationMethodState calculationMethod,  PrayHightLatitudeCaluclationState hightLatitudeCaluclationState)  $default,) {final _that = this;
switch (_that) {
case _PrayCountrySetting():
return $default(_that.countryCode,_that.madhab,_that.calculationMethod,_that.hightLatitudeCaluclationState);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String countryCode,  MadhabState madhab,  PrayCalculationMethodState calculationMethod,  PrayHightLatitudeCaluclationState hightLatitudeCaluclationState)?  $default,) {final _that = this;
switch (_that) {
case _PrayCountrySetting() when $default != null:
return $default(_that.countryCode,_that.madhab,_that.calculationMethod,_that.hightLatitudeCaluclationState);case _:
  return null;

}
}

}

/// @nodoc


class _PrayCountrySetting implements PrayCountrySetting {
   _PrayCountrySetting({required this.countryCode, required this.madhab, required this.calculationMethod, required this.hightLatitudeCaluclationState});
  

@override final  String countryCode;
@override final  MadhabState madhab;
@override final  PrayCalculationMethodState calculationMethod;
@override final  PrayHightLatitudeCaluclationState hightLatitudeCaluclationState;

/// Create a copy of PrayCountrySetting
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PrayCountrySettingCopyWith<_PrayCountrySetting> get copyWith => __$PrayCountrySettingCopyWithImpl<_PrayCountrySetting>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PrayCountrySetting&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.madhab, madhab) || other.madhab == madhab)&&(identical(other.calculationMethod, calculationMethod) || other.calculationMethod == calculationMethod)&&(identical(other.hightLatitudeCaluclationState, hightLatitudeCaluclationState) || other.hightLatitudeCaluclationState == hightLatitudeCaluclationState));
}


@override
int get hashCode => Object.hash(runtimeType,countryCode,madhab,calculationMethod,hightLatitudeCaluclationState);

@override
String toString() {
  return 'PrayCountrySetting(countryCode: $countryCode, madhab: $madhab, calculationMethod: $calculationMethod, hightLatitudeCaluclationState: $hightLatitudeCaluclationState)';
}


}

/// @nodoc
abstract mixin class _$PrayCountrySettingCopyWith<$Res> implements $PrayCountrySettingCopyWith<$Res> {
  factory _$PrayCountrySettingCopyWith(_PrayCountrySetting value, $Res Function(_PrayCountrySetting) _then) = __$PrayCountrySettingCopyWithImpl;
@override @useResult
$Res call({
 String countryCode, MadhabState madhab, PrayCalculationMethodState calculationMethod, PrayHightLatitudeCaluclationState hightLatitudeCaluclationState
});


@override $MadhabStateCopyWith<$Res> get madhab;@override $PrayCalculationMethodStateCopyWith<$Res> get calculationMethod;@override $PrayHightLatitudeCaluclationStateCopyWith<$Res> get hightLatitudeCaluclationState;

}
/// @nodoc
class __$PrayCountrySettingCopyWithImpl<$Res>
    implements _$PrayCountrySettingCopyWith<$Res> {
  __$PrayCountrySettingCopyWithImpl(this._self, this._then);

  final _PrayCountrySetting _self;
  final $Res Function(_PrayCountrySetting) _then;

/// Create a copy of PrayCountrySetting
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? countryCode = null,Object? madhab = null,Object? calculationMethod = null,Object? hightLatitudeCaluclationState = null,}) {
  return _then(_PrayCountrySetting(
countryCode: null == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String,madhab: null == madhab ? _self.madhab : madhab // ignore: cast_nullable_to_non_nullable
as MadhabState,calculationMethod: null == calculationMethod ? _self.calculationMethod : calculationMethod // ignore: cast_nullable_to_non_nullable
as PrayCalculationMethodState,hightLatitudeCaluclationState: null == hightLatitudeCaluclationState ? _self.hightLatitudeCaluclationState : hightLatitudeCaluclationState // ignore: cast_nullable_to_non_nullable
as PrayHightLatitudeCaluclationState,
  ));
}

/// Create a copy of PrayCountrySetting
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MadhabStateCopyWith<$Res> get madhab {
  
  return $MadhabStateCopyWith<$Res>(_self.madhab, (value) {
    return _then(_self.copyWith(madhab: value));
  });
}/// Create a copy of PrayCountrySetting
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PrayCalculationMethodStateCopyWith<$Res> get calculationMethod {
  
  return $PrayCalculationMethodStateCopyWith<$Res>(_self.calculationMethod, (value) {
    return _then(_self.copyWith(calculationMethod: value));
  });
}/// Create a copy of PrayCountrySetting
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PrayHightLatitudeCaluclationStateCopyWith<$Res> get hightLatitudeCaluclationState {
  
  return $PrayHightLatitudeCaluclationStateCopyWith<$Res>(_self.hightLatitudeCaluclationState, (value) {
    return _then(_self.copyWith(hightLatitudeCaluclationState: value));
  });
}
}

// dart format on
