// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pray_timing.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PrayTimingModel {

 String get fajir; String get sunrise; String get dhuhr; String get asr; String get maghrib; String get isha; String get middleOfTheNight; String get lastThirdOfTheNight;
/// Create a copy of PrayTimingModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PrayTimingModelCopyWith<PrayTimingModel> get copyWith => _$PrayTimingModelCopyWithImpl<PrayTimingModel>(this as PrayTimingModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PrayTimingModel&&(identical(other.fajir, fajir) || other.fajir == fajir)&&(identical(other.sunrise, sunrise) || other.sunrise == sunrise)&&(identical(other.dhuhr, dhuhr) || other.dhuhr == dhuhr)&&(identical(other.asr, asr) || other.asr == asr)&&(identical(other.maghrib, maghrib) || other.maghrib == maghrib)&&(identical(other.isha, isha) || other.isha == isha)&&(identical(other.middleOfTheNight, middleOfTheNight) || other.middleOfTheNight == middleOfTheNight)&&(identical(other.lastThirdOfTheNight, lastThirdOfTheNight) || other.lastThirdOfTheNight == lastThirdOfTheNight));
}


@override
int get hashCode => Object.hash(runtimeType,fajir,sunrise,dhuhr,asr,maghrib,isha,middleOfTheNight,lastThirdOfTheNight);

@override
String toString() {
  return 'PrayTimingModel(fajir: $fajir, sunrise: $sunrise, dhuhr: $dhuhr, asr: $asr, maghrib: $maghrib, isha: $isha, middleOfTheNight: $middleOfTheNight, lastThirdOfTheNight: $lastThirdOfTheNight)';
}


}

/// @nodoc
abstract mixin class $PrayTimingModelCopyWith<$Res>  {
  factory $PrayTimingModelCopyWith(PrayTimingModel value, $Res Function(PrayTimingModel) _then) = _$PrayTimingModelCopyWithImpl;
@useResult
$Res call({
 String fajir, String sunrise, String dhuhr, String asr, String maghrib, String isha, String middleOfTheNight, String lastThirdOfTheNight
});




}
/// @nodoc
class _$PrayTimingModelCopyWithImpl<$Res>
    implements $PrayTimingModelCopyWith<$Res> {
  _$PrayTimingModelCopyWithImpl(this._self, this._then);

  final PrayTimingModel _self;
  final $Res Function(PrayTimingModel) _then;

/// Create a copy of PrayTimingModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fajir = null,Object? sunrise = null,Object? dhuhr = null,Object? asr = null,Object? maghrib = null,Object? isha = null,Object? middleOfTheNight = null,Object? lastThirdOfTheNight = null,}) {
  return _then(_self.copyWith(
fajir: null == fajir ? _self.fajir : fajir // ignore: cast_nullable_to_non_nullable
as String,sunrise: null == sunrise ? _self.sunrise : sunrise // ignore: cast_nullable_to_non_nullable
as String,dhuhr: null == dhuhr ? _self.dhuhr : dhuhr // ignore: cast_nullable_to_non_nullable
as String,asr: null == asr ? _self.asr : asr // ignore: cast_nullable_to_non_nullable
as String,maghrib: null == maghrib ? _self.maghrib : maghrib // ignore: cast_nullable_to_non_nullable
as String,isha: null == isha ? _self.isha : isha // ignore: cast_nullable_to_non_nullable
as String,middleOfTheNight: null == middleOfTheNight ? _self.middleOfTheNight : middleOfTheNight // ignore: cast_nullable_to_non_nullable
as String,lastThirdOfTheNight: null == lastThirdOfTheNight ? _self.lastThirdOfTheNight : lastThirdOfTheNight // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PrayTimingModel].
extension PrayTimingModelPatterns on PrayTimingModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PrayTimingModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PrayTimingModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PrayTimingModel value)  $default,){
final _that = this;
switch (_that) {
case _PrayTimingModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PrayTimingModel value)?  $default,){
final _that = this;
switch (_that) {
case _PrayTimingModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String fajir,  String sunrise,  String dhuhr,  String asr,  String maghrib,  String isha,  String middleOfTheNight,  String lastThirdOfTheNight)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PrayTimingModel() when $default != null:
return $default(_that.fajir,_that.sunrise,_that.dhuhr,_that.asr,_that.maghrib,_that.isha,_that.middleOfTheNight,_that.lastThirdOfTheNight);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String fajir,  String sunrise,  String dhuhr,  String asr,  String maghrib,  String isha,  String middleOfTheNight,  String lastThirdOfTheNight)  $default,) {final _that = this;
switch (_that) {
case _PrayTimingModel():
return $default(_that.fajir,_that.sunrise,_that.dhuhr,_that.asr,_that.maghrib,_that.isha,_that.middleOfTheNight,_that.lastThirdOfTheNight);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String fajir,  String sunrise,  String dhuhr,  String asr,  String maghrib,  String isha,  String middleOfTheNight,  String lastThirdOfTheNight)?  $default,) {final _that = this;
switch (_that) {
case _PrayTimingModel() when $default != null:
return $default(_that.fajir,_that.sunrise,_that.dhuhr,_that.asr,_that.maghrib,_that.isha,_that.middleOfTheNight,_that.lastThirdOfTheNight);case _:
  return null;

}
}

}

/// @nodoc


class _PrayTimingModel implements PrayTimingModel {
   _PrayTimingModel({required this.fajir, required this.sunrise, required this.dhuhr, required this.asr, required this.maghrib, required this.isha, required this.middleOfTheNight, required this.lastThirdOfTheNight});
  

@override final  String fajir;
@override final  String sunrise;
@override final  String dhuhr;
@override final  String asr;
@override final  String maghrib;
@override final  String isha;
@override final  String middleOfTheNight;
@override final  String lastThirdOfTheNight;

/// Create a copy of PrayTimingModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PrayTimingModelCopyWith<_PrayTimingModel> get copyWith => __$PrayTimingModelCopyWithImpl<_PrayTimingModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PrayTimingModel&&(identical(other.fajir, fajir) || other.fajir == fajir)&&(identical(other.sunrise, sunrise) || other.sunrise == sunrise)&&(identical(other.dhuhr, dhuhr) || other.dhuhr == dhuhr)&&(identical(other.asr, asr) || other.asr == asr)&&(identical(other.maghrib, maghrib) || other.maghrib == maghrib)&&(identical(other.isha, isha) || other.isha == isha)&&(identical(other.middleOfTheNight, middleOfTheNight) || other.middleOfTheNight == middleOfTheNight)&&(identical(other.lastThirdOfTheNight, lastThirdOfTheNight) || other.lastThirdOfTheNight == lastThirdOfTheNight));
}


@override
int get hashCode => Object.hash(runtimeType,fajir,sunrise,dhuhr,asr,maghrib,isha,middleOfTheNight,lastThirdOfTheNight);

@override
String toString() {
  return 'PrayTimingModel(fajir: $fajir, sunrise: $sunrise, dhuhr: $dhuhr, asr: $asr, maghrib: $maghrib, isha: $isha, middleOfTheNight: $middleOfTheNight, lastThirdOfTheNight: $lastThirdOfTheNight)';
}


}

/// @nodoc
abstract mixin class _$PrayTimingModelCopyWith<$Res> implements $PrayTimingModelCopyWith<$Res> {
  factory _$PrayTimingModelCopyWith(_PrayTimingModel value, $Res Function(_PrayTimingModel) _then) = __$PrayTimingModelCopyWithImpl;
@override @useResult
$Res call({
 String fajir, String sunrise, String dhuhr, String asr, String maghrib, String isha, String middleOfTheNight, String lastThirdOfTheNight
});




}
/// @nodoc
class __$PrayTimingModelCopyWithImpl<$Res>
    implements _$PrayTimingModelCopyWith<$Res> {
  __$PrayTimingModelCopyWithImpl(this._self, this._then);

  final _PrayTimingModel _self;
  final $Res Function(_PrayTimingModel) _then;

/// Create a copy of PrayTimingModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fajir = null,Object? sunrise = null,Object? dhuhr = null,Object? asr = null,Object? maghrib = null,Object? isha = null,Object? middleOfTheNight = null,Object? lastThirdOfTheNight = null,}) {
  return _then(_PrayTimingModel(
fajir: null == fajir ? _self.fajir : fajir // ignore: cast_nullable_to_non_nullable
as String,sunrise: null == sunrise ? _self.sunrise : sunrise // ignore: cast_nullable_to_non_nullable
as String,dhuhr: null == dhuhr ? _self.dhuhr : dhuhr // ignore: cast_nullable_to_non_nullable
as String,asr: null == asr ? _self.asr : asr // ignore: cast_nullable_to_non_nullable
as String,maghrib: null == maghrib ? _self.maghrib : maghrib // ignore: cast_nullable_to_non_nullable
as String,isha: null == isha ? _self.isha : isha // ignore: cast_nullable_to_non_nullable
as String,middleOfTheNight: null == middleOfTheNight ? _self.middleOfTheNight : middleOfTheNight // ignore: cast_nullable_to_non_nullable
as String,lastThirdOfTheNight: null == lastThirdOfTheNight ? _self.lastThirdOfTheNight : lastThirdOfTheNight // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$PrayTimingDateTimeModel {

 DateTime get fajir; DateTime get sunrise; DateTime get dhuhr; DateTime get asr; DateTime get maghrib; DateTime get isha; DateTime get middleOfTheNight; DateTime get lastThirdOfTheNight;
/// Create a copy of PrayTimingDateTimeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PrayTimingDateTimeModelCopyWith<PrayTimingDateTimeModel> get copyWith => _$PrayTimingDateTimeModelCopyWithImpl<PrayTimingDateTimeModel>(this as PrayTimingDateTimeModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PrayTimingDateTimeModel&&(identical(other.fajir, fajir) || other.fajir == fajir)&&(identical(other.sunrise, sunrise) || other.sunrise == sunrise)&&(identical(other.dhuhr, dhuhr) || other.dhuhr == dhuhr)&&(identical(other.asr, asr) || other.asr == asr)&&(identical(other.maghrib, maghrib) || other.maghrib == maghrib)&&(identical(other.isha, isha) || other.isha == isha)&&(identical(other.middleOfTheNight, middleOfTheNight) || other.middleOfTheNight == middleOfTheNight)&&(identical(other.lastThirdOfTheNight, lastThirdOfTheNight) || other.lastThirdOfTheNight == lastThirdOfTheNight));
}


@override
int get hashCode => Object.hash(runtimeType,fajir,sunrise,dhuhr,asr,maghrib,isha,middleOfTheNight,lastThirdOfTheNight);

@override
String toString() {
  return 'PrayTimingDateTimeModel(fajir: $fajir, sunrise: $sunrise, dhuhr: $dhuhr, asr: $asr, maghrib: $maghrib, isha: $isha, middleOfTheNight: $middleOfTheNight, lastThirdOfTheNight: $lastThirdOfTheNight)';
}


}

/// @nodoc
abstract mixin class $PrayTimingDateTimeModelCopyWith<$Res>  {
  factory $PrayTimingDateTimeModelCopyWith(PrayTimingDateTimeModel value, $Res Function(PrayTimingDateTimeModel) _then) = _$PrayTimingDateTimeModelCopyWithImpl;
@useResult
$Res call({
 DateTime fajir, DateTime sunrise, DateTime dhuhr, DateTime asr, DateTime maghrib, DateTime isha, DateTime middleOfTheNight, DateTime lastThirdOfTheNight
});




}
/// @nodoc
class _$PrayTimingDateTimeModelCopyWithImpl<$Res>
    implements $PrayTimingDateTimeModelCopyWith<$Res> {
  _$PrayTimingDateTimeModelCopyWithImpl(this._self, this._then);

  final PrayTimingDateTimeModel _self;
  final $Res Function(PrayTimingDateTimeModel) _then;

/// Create a copy of PrayTimingDateTimeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fajir = null,Object? sunrise = null,Object? dhuhr = null,Object? asr = null,Object? maghrib = null,Object? isha = null,Object? middleOfTheNight = null,Object? lastThirdOfTheNight = null,}) {
  return _then(_self.copyWith(
fajir: null == fajir ? _self.fajir : fajir // ignore: cast_nullable_to_non_nullable
as DateTime,sunrise: null == sunrise ? _self.sunrise : sunrise // ignore: cast_nullable_to_non_nullable
as DateTime,dhuhr: null == dhuhr ? _self.dhuhr : dhuhr // ignore: cast_nullable_to_non_nullable
as DateTime,asr: null == asr ? _self.asr : asr // ignore: cast_nullable_to_non_nullable
as DateTime,maghrib: null == maghrib ? _self.maghrib : maghrib // ignore: cast_nullable_to_non_nullable
as DateTime,isha: null == isha ? _self.isha : isha // ignore: cast_nullable_to_non_nullable
as DateTime,middleOfTheNight: null == middleOfTheNight ? _self.middleOfTheNight : middleOfTheNight // ignore: cast_nullable_to_non_nullable
as DateTime,lastThirdOfTheNight: null == lastThirdOfTheNight ? _self.lastThirdOfTheNight : lastThirdOfTheNight // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [PrayTimingDateTimeModel].
extension PrayTimingDateTimeModelPatterns on PrayTimingDateTimeModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PrayTimingDateTimeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PrayTimingDateTimeModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PrayTimingDateTimeModel value)  $default,){
final _that = this;
switch (_that) {
case _PrayTimingDateTimeModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PrayTimingDateTimeModel value)?  $default,){
final _that = this;
switch (_that) {
case _PrayTimingDateTimeModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime fajir,  DateTime sunrise,  DateTime dhuhr,  DateTime asr,  DateTime maghrib,  DateTime isha,  DateTime middleOfTheNight,  DateTime lastThirdOfTheNight)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PrayTimingDateTimeModel() when $default != null:
return $default(_that.fajir,_that.sunrise,_that.dhuhr,_that.asr,_that.maghrib,_that.isha,_that.middleOfTheNight,_that.lastThirdOfTheNight);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime fajir,  DateTime sunrise,  DateTime dhuhr,  DateTime asr,  DateTime maghrib,  DateTime isha,  DateTime middleOfTheNight,  DateTime lastThirdOfTheNight)  $default,) {final _that = this;
switch (_that) {
case _PrayTimingDateTimeModel():
return $default(_that.fajir,_that.sunrise,_that.dhuhr,_that.asr,_that.maghrib,_that.isha,_that.middleOfTheNight,_that.lastThirdOfTheNight);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime fajir,  DateTime sunrise,  DateTime dhuhr,  DateTime asr,  DateTime maghrib,  DateTime isha,  DateTime middleOfTheNight,  DateTime lastThirdOfTheNight)?  $default,) {final _that = this;
switch (_that) {
case _PrayTimingDateTimeModel() when $default != null:
return $default(_that.fajir,_that.sunrise,_that.dhuhr,_that.asr,_that.maghrib,_that.isha,_that.middleOfTheNight,_that.lastThirdOfTheNight);case _:
  return null;

}
}

}

/// @nodoc


class _PrayTimingDateTimeModel implements PrayTimingDateTimeModel {
   _PrayTimingDateTimeModel({required this.fajir, required this.sunrise, required this.dhuhr, required this.asr, required this.maghrib, required this.isha, required this.middleOfTheNight, required this.lastThirdOfTheNight});
  

@override final  DateTime fajir;
@override final  DateTime sunrise;
@override final  DateTime dhuhr;
@override final  DateTime asr;
@override final  DateTime maghrib;
@override final  DateTime isha;
@override final  DateTime middleOfTheNight;
@override final  DateTime lastThirdOfTheNight;

/// Create a copy of PrayTimingDateTimeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PrayTimingDateTimeModelCopyWith<_PrayTimingDateTimeModel> get copyWith => __$PrayTimingDateTimeModelCopyWithImpl<_PrayTimingDateTimeModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PrayTimingDateTimeModel&&(identical(other.fajir, fajir) || other.fajir == fajir)&&(identical(other.sunrise, sunrise) || other.sunrise == sunrise)&&(identical(other.dhuhr, dhuhr) || other.dhuhr == dhuhr)&&(identical(other.asr, asr) || other.asr == asr)&&(identical(other.maghrib, maghrib) || other.maghrib == maghrib)&&(identical(other.isha, isha) || other.isha == isha)&&(identical(other.middleOfTheNight, middleOfTheNight) || other.middleOfTheNight == middleOfTheNight)&&(identical(other.lastThirdOfTheNight, lastThirdOfTheNight) || other.lastThirdOfTheNight == lastThirdOfTheNight));
}


@override
int get hashCode => Object.hash(runtimeType,fajir,sunrise,dhuhr,asr,maghrib,isha,middleOfTheNight,lastThirdOfTheNight);

@override
String toString() {
  return 'PrayTimingDateTimeModel(fajir: $fajir, sunrise: $sunrise, dhuhr: $dhuhr, asr: $asr, maghrib: $maghrib, isha: $isha, middleOfTheNight: $middleOfTheNight, lastThirdOfTheNight: $lastThirdOfTheNight)';
}


}

/// @nodoc
abstract mixin class _$PrayTimingDateTimeModelCopyWith<$Res> implements $PrayTimingDateTimeModelCopyWith<$Res> {
  factory _$PrayTimingDateTimeModelCopyWith(_PrayTimingDateTimeModel value, $Res Function(_PrayTimingDateTimeModel) _then) = __$PrayTimingDateTimeModelCopyWithImpl;
@override @useResult
$Res call({
 DateTime fajir, DateTime sunrise, DateTime dhuhr, DateTime asr, DateTime maghrib, DateTime isha, DateTime middleOfTheNight, DateTime lastThirdOfTheNight
});




}
/// @nodoc
class __$PrayTimingDateTimeModelCopyWithImpl<$Res>
    implements _$PrayTimingDateTimeModelCopyWith<$Res> {
  __$PrayTimingDateTimeModelCopyWithImpl(this._self, this._then);

  final _PrayTimingDateTimeModel _self;
  final $Res Function(_PrayTimingDateTimeModel) _then;

/// Create a copy of PrayTimingDateTimeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fajir = null,Object? sunrise = null,Object? dhuhr = null,Object? asr = null,Object? maghrib = null,Object? isha = null,Object? middleOfTheNight = null,Object? lastThirdOfTheNight = null,}) {
  return _then(_PrayTimingDateTimeModel(
fajir: null == fajir ? _self.fajir : fajir // ignore: cast_nullable_to_non_nullable
as DateTime,sunrise: null == sunrise ? _self.sunrise : sunrise // ignore: cast_nullable_to_non_nullable
as DateTime,dhuhr: null == dhuhr ? _self.dhuhr : dhuhr // ignore: cast_nullable_to_non_nullable
as DateTime,asr: null == asr ? _self.asr : asr // ignore: cast_nullable_to_non_nullable
as DateTime,maghrib: null == maghrib ? _self.maghrib : maghrib // ignore: cast_nullable_to_non_nullable
as DateTime,isha: null == isha ? _self.isha : isha // ignore: cast_nullable_to_non_nullable
as DateTime,middleOfTheNight: null == middleOfTheNight ? _self.middleOfTheNight : middleOfTheNight // ignore: cast_nullable_to_non_nullable
as DateTime,lastThirdOfTheNight: null == lastThirdOfTheNight ? _self.lastThirdOfTheNight : lastThirdOfTheNight // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
