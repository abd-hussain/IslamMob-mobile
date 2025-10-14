// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calender.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CalenderModel {

 String get dayName; String get dateHijri; String get dateMilady; String get fajirTime; String get sunriseTime; String get zhurTime; String get asrTime; String get magribTime; String get ishaTime; bool get isToday;
/// Create a copy of CalenderModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CalenderModelCopyWith<CalenderModel> get copyWith => _$CalenderModelCopyWithImpl<CalenderModel>(this as CalenderModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CalenderModel&&(identical(other.dayName, dayName) || other.dayName == dayName)&&(identical(other.dateHijri, dateHijri) || other.dateHijri == dateHijri)&&(identical(other.dateMilady, dateMilady) || other.dateMilady == dateMilady)&&(identical(other.fajirTime, fajirTime) || other.fajirTime == fajirTime)&&(identical(other.sunriseTime, sunriseTime) || other.sunriseTime == sunriseTime)&&(identical(other.zhurTime, zhurTime) || other.zhurTime == zhurTime)&&(identical(other.asrTime, asrTime) || other.asrTime == asrTime)&&(identical(other.magribTime, magribTime) || other.magribTime == magribTime)&&(identical(other.ishaTime, ishaTime) || other.ishaTime == ishaTime)&&(identical(other.isToday, isToday) || other.isToday == isToday));
}


@override
int get hashCode => Object.hash(runtimeType,dayName,dateHijri,dateMilady,fajirTime,sunriseTime,zhurTime,asrTime,magribTime,ishaTime,isToday);

@override
String toString() {
  return 'CalenderModel(dayName: $dayName, dateHijri: $dateHijri, dateMilady: $dateMilady, fajirTime: $fajirTime, sunriseTime: $sunriseTime, zhurTime: $zhurTime, asrTime: $asrTime, magribTime: $magribTime, ishaTime: $ishaTime, isToday: $isToday)';
}


}

/// @nodoc
abstract mixin class $CalenderModelCopyWith<$Res>  {
  factory $CalenderModelCopyWith(CalenderModel value, $Res Function(CalenderModel) _then) = _$CalenderModelCopyWithImpl;
@useResult
$Res call({
 String dayName, String dateHijri, String dateMilady, String fajirTime, String sunriseTime, String zhurTime, String asrTime, String magribTime, String ishaTime, bool isToday
});




}
/// @nodoc
class _$CalenderModelCopyWithImpl<$Res>
    implements $CalenderModelCopyWith<$Res> {
  _$CalenderModelCopyWithImpl(this._self, this._then);

  final CalenderModel _self;
  final $Res Function(CalenderModel) _then;

/// Create a copy of CalenderModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dayName = null,Object? dateHijri = null,Object? dateMilady = null,Object? fajirTime = null,Object? sunriseTime = null,Object? zhurTime = null,Object? asrTime = null,Object? magribTime = null,Object? ishaTime = null,Object? isToday = null,}) {
  return _then(_self.copyWith(
dayName: null == dayName ? _self.dayName : dayName // ignore: cast_nullable_to_non_nullable
as String,dateHijri: null == dateHijri ? _self.dateHijri : dateHijri // ignore: cast_nullable_to_non_nullable
as String,dateMilady: null == dateMilady ? _self.dateMilady : dateMilady // ignore: cast_nullable_to_non_nullable
as String,fajirTime: null == fajirTime ? _self.fajirTime : fajirTime // ignore: cast_nullable_to_non_nullable
as String,sunriseTime: null == sunriseTime ? _self.sunriseTime : sunriseTime // ignore: cast_nullable_to_non_nullable
as String,zhurTime: null == zhurTime ? _self.zhurTime : zhurTime // ignore: cast_nullable_to_non_nullable
as String,asrTime: null == asrTime ? _self.asrTime : asrTime // ignore: cast_nullable_to_non_nullable
as String,magribTime: null == magribTime ? _self.magribTime : magribTime // ignore: cast_nullable_to_non_nullable
as String,ishaTime: null == ishaTime ? _self.ishaTime : ishaTime // ignore: cast_nullable_to_non_nullable
as String,isToday: null == isToday ? _self.isToday : isToday // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CalenderModel].
extension CalenderModelPatterns on CalenderModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CalenderModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CalenderModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CalenderModel value)  $default,){
final _that = this;
switch (_that) {
case _CalenderModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CalenderModel value)?  $default,){
final _that = this;
switch (_that) {
case _CalenderModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String dayName,  String dateHijri,  String dateMilady,  String fajirTime,  String sunriseTime,  String zhurTime,  String asrTime,  String magribTime,  String ishaTime,  bool isToday)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CalenderModel() when $default != null:
return $default(_that.dayName,_that.dateHijri,_that.dateMilady,_that.fajirTime,_that.sunriseTime,_that.zhurTime,_that.asrTime,_that.magribTime,_that.ishaTime,_that.isToday);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String dayName,  String dateHijri,  String dateMilady,  String fajirTime,  String sunriseTime,  String zhurTime,  String asrTime,  String magribTime,  String ishaTime,  bool isToday)  $default,) {final _that = this;
switch (_that) {
case _CalenderModel():
return $default(_that.dayName,_that.dateHijri,_that.dateMilady,_that.fajirTime,_that.sunriseTime,_that.zhurTime,_that.asrTime,_that.magribTime,_that.ishaTime,_that.isToday);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String dayName,  String dateHijri,  String dateMilady,  String fajirTime,  String sunriseTime,  String zhurTime,  String asrTime,  String magribTime,  String ishaTime,  bool isToday)?  $default,) {final _that = this;
switch (_that) {
case _CalenderModel() when $default != null:
return $default(_that.dayName,_that.dateHijri,_that.dateMilady,_that.fajirTime,_that.sunriseTime,_that.zhurTime,_that.asrTime,_that.magribTime,_that.ishaTime,_that.isToday);case _:
  return null;

}
}

}

/// @nodoc


class _CalenderModel implements CalenderModel {
   _CalenderModel({required this.dayName, required this.dateHijri, required this.dateMilady, required this.fajirTime, required this.sunriseTime, required this.zhurTime, required this.asrTime, required this.magribTime, required this.ishaTime, required this.isToday});
  

@override final  String dayName;
@override final  String dateHijri;
@override final  String dateMilady;
@override final  String fajirTime;
@override final  String sunriseTime;
@override final  String zhurTime;
@override final  String asrTime;
@override final  String magribTime;
@override final  String ishaTime;
@override final  bool isToday;

/// Create a copy of CalenderModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CalenderModelCopyWith<_CalenderModel> get copyWith => __$CalenderModelCopyWithImpl<_CalenderModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CalenderModel&&(identical(other.dayName, dayName) || other.dayName == dayName)&&(identical(other.dateHijri, dateHijri) || other.dateHijri == dateHijri)&&(identical(other.dateMilady, dateMilady) || other.dateMilady == dateMilady)&&(identical(other.fajirTime, fajirTime) || other.fajirTime == fajirTime)&&(identical(other.sunriseTime, sunriseTime) || other.sunriseTime == sunriseTime)&&(identical(other.zhurTime, zhurTime) || other.zhurTime == zhurTime)&&(identical(other.asrTime, asrTime) || other.asrTime == asrTime)&&(identical(other.magribTime, magribTime) || other.magribTime == magribTime)&&(identical(other.ishaTime, ishaTime) || other.ishaTime == ishaTime)&&(identical(other.isToday, isToday) || other.isToday == isToday));
}


@override
int get hashCode => Object.hash(runtimeType,dayName,dateHijri,dateMilady,fajirTime,sunriseTime,zhurTime,asrTime,magribTime,ishaTime,isToday);

@override
String toString() {
  return 'CalenderModel(dayName: $dayName, dateHijri: $dateHijri, dateMilady: $dateMilady, fajirTime: $fajirTime, sunriseTime: $sunriseTime, zhurTime: $zhurTime, asrTime: $asrTime, magribTime: $magribTime, ishaTime: $ishaTime, isToday: $isToday)';
}


}

/// @nodoc
abstract mixin class _$CalenderModelCopyWith<$Res> implements $CalenderModelCopyWith<$Res> {
  factory _$CalenderModelCopyWith(_CalenderModel value, $Res Function(_CalenderModel) _then) = __$CalenderModelCopyWithImpl;
@override @useResult
$Res call({
 String dayName, String dateHijri, String dateMilady, String fajirTime, String sunriseTime, String zhurTime, String asrTime, String magribTime, String ishaTime, bool isToday
});




}
/// @nodoc
class __$CalenderModelCopyWithImpl<$Res>
    implements _$CalenderModelCopyWith<$Res> {
  __$CalenderModelCopyWithImpl(this._self, this._then);

  final _CalenderModel _self;
  final $Res Function(_CalenderModel) _then;

/// Create a copy of CalenderModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dayName = null,Object? dateHijri = null,Object? dateMilady = null,Object? fajirTime = null,Object? sunriseTime = null,Object? zhurTime = null,Object? asrTime = null,Object? magribTime = null,Object? ishaTime = null,Object? isToday = null,}) {
  return _then(_CalenderModel(
dayName: null == dayName ? _self.dayName : dayName // ignore: cast_nullable_to_non_nullable
as String,dateHijri: null == dateHijri ? _self.dateHijri : dateHijri // ignore: cast_nullable_to_non_nullable
as String,dateMilady: null == dateMilady ? _self.dateMilady : dateMilady // ignore: cast_nullable_to_non_nullable
as String,fajirTime: null == fajirTime ? _self.fajirTime : fajirTime // ignore: cast_nullable_to_non_nullable
as String,sunriseTime: null == sunriseTime ? _self.sunriseTime : sunriseTime // ignore: cast_nullable_to_non_nullable
as String,zhurTime: null == zhurTime ? _self.zhurTime : zhurTime // ignore: cast_nullable_to_non_nullable
as String,asrTime: null == asrTime ? _self.asrTime : asrTime // ignore: cast_nullable_to_non_nullable
as String,magribTime: null == magribTime ? _self.magribTime : magribTime // ignore: cast_nullable_to_non_nullable
as String,ishaTime: null == ishaTime ? _self.ishaTime : ishaTime // ignore: cast_nullable_to_non_nullable
as String,isToday: null == isToday ? _self.isToday : isToday // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
