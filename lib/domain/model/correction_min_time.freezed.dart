// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'correction_min_time.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CorrectionMinTimeData {

 String get title; AzanTypeForEditMinState get type; int Function(PrayCalculationSettingState state) get getter;
/// Create a copy of CorrectionMinTimeData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CorrectionMinTimeDataCopyWith<CorrectionMinTimeData> get copyWith => _$CorrectionMinTimeDataCopyWithImpl<CorrectionMinTimeData>(this as CorrectionMinTimeData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CorrectionMinTimeData&&(identical(other.title, title) || other.title == title)&&(identical(other.type, type) || other.type == type)&&(identical(other.getter, getter) || other.getter == getter));
}


@override
int get hashCode => Object.hash(runtimeType,title,type,getter);

@override
String toString() {
  return 'CorrectionMinTimeData(title: $title, type: $type, getter: $getter)';
}


}

/// @nodoc
abstract mixin class $CorrectionMinTimeDataCopyWith<$Res>  {
  factory $CorrectionMinTimeDataCopyWith(CorrectionMinTimeData value, $Res Function(CorrectionMinTimeData) _then) = _$CorrectionMinTimeDataCopyWithImpl;
@useResult
$Res call({
 String title, AzanTypeForEditMinState type, int Function(PrayCalculationSettingState state) getter
});


$AzanTypeForEditMinStateCopyWith<$Res> get type;

}
/// @nodoc
class _$CorrectionMinTimeDataCopyWithImpl<$Res>
    implements $CorrectionMinTimeDataCopyWith<$Res> {
  _$CorrectionMinTimeDataCopyWithImpl(this._self, this._then);

  final CorrectionMinTimeData _self;
  final $Res Function(CorrectionMinTimeData) _then;

/// Create a copy of CorrectionMinTimeData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? type = null,Object? getter = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as AzanTypeForEditMinState,getter: null == getter ? _self.getter : getter // ignore: cast_nullable_to_non_nullable
as int Function(PrayCalculationSettingState state),
  ));
}
/// Create a copy of CorrectionMinTimeData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AzanTypeForEditMinStateCopyWith<$Res> get type {
  
  return $AzanTypeForEditMinStateCopyWith<$Res>(_self.type, (value) {
    return _then(_self.copyWith(type: value));
  });
}
}


/// Adds pattern-matching-related methods to [CorrectionMinTimeData].
extension CorrectionMinTimeDataPatterns on CorrectionMinTimeData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CorrectionMinTimeData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CorrectionMinTimeData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CorrectionMinTimeData value)  $default,){
final _that = this;
switch (_that) {
case _CorrectionMinTimeData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CorrectionMinTimeData value)?  $default,){
final _that = this;
switch (_that) {
case _CorrectionMinTimeData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  AzanTypeForEditMinState type,  int Function(PrayCalculationSettingState state) getter)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CorrectionMinTimeData() when $default != null:
return $default(_that.title,_that.type,_that.getter);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  AzanTypeForEditMinState type,  int Function(PrayCalculationSettingState state) getter)  $default,) {final _that = this;
switch (_that) {
case _CorrectionMinTimeData():
return $default(_that.title,_that.type,_that.getter);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  AzanTypeForEditMinState type,  int Function(PrayCalculationSettingState state) getter)?  $default,) {final _that = this;
switch (_that) {
case _CorrectionMinTimeData() when $default != null:
return $default(_that.title,_that.type,_that.getter);case _:
  return null;

}
}

}

/// @nodoc


class _CorrectionMinTimeData implements CorrectionMinTimeData {
   _CorrectionMinTimeData({required this.title, required this.type, required this.getter});
  

@override final  String title;
@override final  AzanTypeForEditMinState type;
@override final  int Function(PrayCalculationSettingState state) getter;

/// Create a copy of CorrectionMinTimeData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CorrectionMinTimeDataCopyWith<_CorrectionMinTimeData> get copyWith => __$CorrectionMinTimeDataCopyWithImpl<_CorrectionMinTimeData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CorrectionMinTimeData&&(identical(other.title, title) || other.title == title)&&(identical(other.type, type) || other.type == type)&&(identical(other.getter, getter) || other.getter == getter));
}


@override
int get hashCode => Object.hash(runtimeType,title,type,getter);

@override
String toString() {
  return 'CorrectionMinTimeData(title: $title, type: $type, getter: $getter)';
}


}

/// @nodoc
abstract mixin class _$CorrectionMinTimeDataCopyWith<$Res> implements $CorrectionMinTimeDataCopyWith<$Res> {
  factory _$CorrectionMinTimeDataCopyWith(_CorrectionMinTimeData value, $Res Function(_CorrectionMinTimeData) _then) = __$CorrectionMinTimeDataCopyWithImpl;
@override @useResult
$Res call({
 String title, AzanTypeForEditMinState type, int Function(PrayCalculationSettingState state) getter
});


@override $AzanTypeForEditMinStateCopyWith<$Res> get type;

}
/// @nodoc
class __$CorrectionMinTimeDataCopyWithImpl<$Res>
    implements _$CorrectionMinTimeDataCopyWith<$Res> {
  __$CorrectionMinTimeDataCopyWithImpl(this._self, this._then);

  final _CorrectionMinTimeData _self;
  final $Res Function(_CorrectionMinTimeData) _then;

/// Create a copy of CorrectionMinTimeData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? type = null,Object? getter = null,}) {
  return _then(_CorrectionMinTimeData(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as AzanTypeForEditMinState,getter: null == getter ? _self.getter : getter // ignore: cast_nullable_to_non_nullable
as int Function(PrayCalculationSettingState state),
  ));
}

/// Create a copy of CorrectionMinTimeData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AzanTypeForEditMinStateCopyWith<$Res> get type {
  
  return $AzanTypeForEditMinStateCopyWith<$Res>(_self.type, (value) {
    return _then(_self.copyWith(type: value));
  });
}
}

// dart format on
