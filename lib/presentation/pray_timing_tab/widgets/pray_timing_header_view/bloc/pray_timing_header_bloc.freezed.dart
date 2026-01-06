// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pray_timing_header_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PrayTimingHeaderEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PrayTimingHeaderEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PrayTimingHeaderEvent()';
}


}

/// @nodoc
class $PrayTimingHeaderEventCopyWith<$Res>  {
$PrayTimingHeaderEventCopyWith(PrayTimingHeaderEvent _, $Res Function(PrayTimingHeaderEvent) __);
}


/// Adds pattern-matching-related methods to [PrayTimingHeaderEvent].
extension PrayTimingHeaderEventPatterns on PrayTimingHeaderEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _PrepareNextSalahTypeAndTime value)?  prepareNextSalahTypeAndTime,TResult Function( _UpdateSalahTypeAndTime value)?  updateSalahTypeAndTime,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PrepareNextSalahTypeAndTime() when prepareNextSalahTypeAndTime != null:
return prepareNextSalahTypeAndTime(_that);case _UpdateSalahTypeAndTime() when updateSalahTypeAndTime != null:
return updateSalahTypeAndTime(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _PrepareNextSalahTypeAndTime value)  prepareNextSalahTypeAndTime,required TResult Function( _UpdateSalahTypeAndTime value)  updateSalahTypeAndTime,}){
final _that = this;
switch (_that) {
case _PrepareNextSalahTypeAndTime():
return prepareNextSalahTypeAndTime(_that);case _UpdateSalahTypeAndTime():
return updateSalahTypeAndTime(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _PrepareNextSalahTypeAndTime value)?  prepareNextSalahTypeAndTime,TResult? Function( _UpdateSalahTypeAndTime value)?  updateSalahTypeAndTime,}){
final _that = this;
switch (_that) {
case _PrepareNextSalahTypeAndTime() when prepareNextSalahTypeAndTime != null:
return prepareNextSalahTypeAndTime(_that);case _UpdateSalahTypeAndTime() when updateSalahTypeAndTime != null:
return updateSalahTypeAndTime(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  prepareNextSalahTypeAndTime,TResult Function( SalahTimeState nextPrayType,  DateTime? nextPrayDateTime)?  updateSalahTypeAndTime,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PrepareNextSalahTypeAndTime() when prepareNextSalahTypeAndTime != null:
return prepareNextSalahTypeAndTime();case _UpdateSalahTypeAndTime() when updateSalahTypeAndTime != null:
return updateSalahTypeAndTime(_that.nextPrayType,_that.nextPrayDateTime);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  prepareNextSalahTypeAndTime,required TResult Function( SalahTimeState nextPrayType,  DateTime? nextPrayDateTime)  updateSalahTypeAndTime,}) {final _that = this;
switch (_that) {
case _PrepareNextSalahTypeAndTime():
return prepareNextSalahTypeAndTime();case _UpdateSalahTypeAndTime():
return updateSalahTypeAndTime(_that.nextPrayType,_that.nextPrayDateTime);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  prepareNextSalahTypeAndTime,TResult? Function( SalahTimeState nextPrayType,  DateTime? nextPrayDateTime)?  updateSalahTypeAndTime,}) {final _that = this;
switch (_that) {
case _PrepareNextSalahTypeAndTime() when prepareNextSalahTypeAndTime != null:
return prepareNextSalahTypeAndTime();case _UpdateSalahTypeAndTime() when updateSalahTypeAndTime != null:
return updateSalahTypeAndTime(_that.nextPrayType,_that.nextPrayDateTime);case _:
  return null;

}
}

}

/// @nodoc


class _PrepareNextSalahTypeAndTime implements PrayTimingHeaderEvent {
   _PrepareNextSalahTypeAndTime();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PrepareNextSalahTypeAndTime);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PrayTimingHeaderEvent.prepareNextSalahTypeAndTime()';
}


}




/// @nodoc


class _UpdateSalahTypeAndTime implements PrayTimingHeaderEvent {
   _UpdateSalahTypeAndTime({required this.nextPrayType, required this.nextPrayDateTime});
  

 final  SalahTimeState nextPrayType;
 final  DateTime? nextPrayDateTime;

/// Create a copy of PrayTimingHeaderEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateSalahTypeAndTimeCopyWith<_UpdateSalahTypeAndTime> get copyWith => __$UpdateSalahTypeAndTimeCopyWithImpl<_UpdateSalahTypeAndTime>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateSalahTypeAndTime&&(identical(other.nextPrayType, nextPrayType) || other.nextPrayType == nextPrayType)&&(identical(other.nextPrayDateTime, nextPrayDateTime) || other.nextPrayDateTime == nextPrayDateTime));
}


@override
int get hashCode => Object.hash(runtimeType,nextPrayType,nextPrayDateTime);

@override
String toString() {
  return 'PrayTimingHeaderEvent.updateSalahTypeAndTime(nextPrayType: $nextPrayType, nextPrayDateTime: $nextPrayDateTime)';
}


}

/// @nodoc
abstract mixin class _$UpdateSalahTypeAndTimeCopyWith<$Res> implements $PrayTimingHeaderEventCopyWith<$Res> {
  factory _$UpdateSalahTypeAndTimeCopyWith(_UpdateSalahTypeAndTime value, $Res Function(_UpdateSalahTypeAndTime) _then) = __$UpdateSalahTypeAndTimeCopyWithImpl;
@useResult
$Res call({
 SalahTimeState nextPrayType, DateTime? nextPrayDateTime
});


$SalahTimeStateCopyWith<$Res> get nextPrayType;

}
/// @nodoc
class __$UpdateSalahTypeAndTimeCopyWithImpl<$Res>
    implements _$UpdateSalahTypeAndTimeCopyWith<$Res> {
  __$UpdateSalahTypeAndTimeCopyWithImpl(this._self, this._then);

  final _UpdateSalahTypeAndTime _self;
  final $Res Function(_UpdateSalahTypeAndTime) _then;

/// Create a copy of PrayTimingHeaderEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? nextPrayType = null,Object? nextPrayDateTime = freezed,}) {
  return _then(_UpdateSalahTypeAndTime(
nextPrayType: null == nextPrayType ? _self.nextPrayType : nextPrayType // ignore: cast_nullable_to_non_nullable
as SalahTimeState,nextPrayDateTime: freezed == nextPrayDateTime ? _self.nextPrayDateTime : nextPrayDateTime // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of PrayTimingHeaderEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SalahTimeStateCopyWith<$Res> get nextPrayType {
  
  return $SalahTimeStateCopyWith<$Res>(_self.nextPrayType, (value) {
    return _then(_self.copyWith(nextPrayType: value));
  });
}
}

/// @nodoc
mixin _$PrayTimingHeaderState {

 SalahTimeState get nextPrayType; DateTime? get nextPrayDateTime;
/// Create a copy of PrayTimingHeaderState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PrayTimingHeaderStateCopyWith<PrayTimingHeaderState> get copyWith => _$PrayTimingHeaderStateCopyWithImpl<PrayTimingHeaderState>(this as PrayTimingHeaderState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PrayTimingHeaderState&&(identical(other.nextPrayType, nextPrayType) || other.nextPrayType == nextPrayType)&&(identical(other.nextPrayDateTime, nextPrayDateTime) || other.nextPrayDateTime == nextPrayDateTime));
}


@override
int get hashCode => Object.hash(runtimeType,nextPrayType,nextPrayDateTime);

@override
String toString() {
  return 'PrayTimingHeaderState(nextPrayType: $nextPrayType, nextPrayDateTime: $nextPrayDateTime)';
}


}

/// @nodoc
abstract mixin class $PrayTimingHeaderStateCopyWith<$Res>  {
  factory $PrayTimingHeaderStateCopyWith(PrayTimingHeaderState value, $Res Function(PrayTimingHeaderState) _then) = _$PrayTimingHeaderStateCopyWithImpl;
@useResult
$Res call({
 SalahTimeState nextPrayType, DateTime? nextPrayDateTime
});


$SalahTimeStateCopyWith<$Res> get nextPrayType;

}
/// @nodoc
class _$PrayTimingHeaderStateCopyWithImpl<$Res>
    implements $PrayTimingHeaderStateCopyWith<$Res> {
  _$PrayTimingHeaderStateCopyWithImpl(this._self, this._then);

  final PrayTimingHeaderState _self;
  final $Res Function(PrayTimingHeaderState) _then;

/// Create a copy of PrayTimingHeaderState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nextPrayType = null,Object? nextPrayDateTime = freezed,}) {
  return _then(_self.copyWith(
nextPrayType: null == nextPrayType ? _self.nextPrayType : nextPrayType // ignore: cast_nullable_to_non_nullable
as SalahTimeState,nextPrayDateTime: freezed == nextPrayDateTime ? _self.nextPrayDateTime : nextPrayDateTime // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of PrayTimingHeaderState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SalahTimeStateCopyWith<$Res> get nextPrayType {
  
  return $SalahTimeStateCopyWith<$Res>(_self.nextPrayType, (value) {
    return _then(_self.copyWith(nextPrayType: value));
  });
}
}


/// Adds pattern-matching-related methods to [PrayTimingHeaderState].
extension PrayTimingHeaderStatePatterns on PrayTimingHeaderState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PrayTimingHeaderState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PrayTimingHeaderState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PrayTimingHeaderState value)  $default,){
final _that = this;
switch (_that) {
case _PrayTimingHeaderState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PrayTimingHeaderState value)?  $default,){
final _that = this;
switch (_that) {
case _PrayTimingHeaderState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SalahTimeState nextPrayType,  DateTime? nextPrayDateTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PrayTimingHeaderState() when $default != null:
return $default(_that.nextPrayType,_that.nextPrayDateTime);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SalahTimeState nextPrayType,  DateTime? nextPrayDateTime)  $default,) {final _that = this;
switch (_that) {
case _PrayTimingHeaderState():
return $default(_that.nextPrayType,_that.nextPrayDateTime);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SalahTimeState nextPrayType,  DateTime? nextPrayDateTime)?  $default,) {final _that = this;
switch (_that) {
case _PrayTimingHeaderState() when $default != null:
return $default(_that.nextPrayType,_that.nextPrayDateTime);case _:
  return null;

}
}

}

/// @nodoc


class _PrayTimingHeaderState implements PrayTimingHeaderState {
  const _PrayTimingHeaderState({this.nextPrayType = const SalahTimeState.fajir(), this.nextPrayDateTime});
  

@override@JsonKey() final  SalahTimeState nextPrayType;
@override final  DateTime? nextPrayDateTime;

/// Create a copy of PrayTimingHeaderState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PrayTimingHeaderStateCopyWith<_PrayTimingHeaderState> get copyWith => __$PrayTimingHeaderStateCopyWithImpl<_PrayTimingHeaderState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PrayTimingHeaderState&&(identical(other.nextPrayType, nextPrayType) || other.nextPrayType == nextPrayType)&&(identical(other.nextPrayDateTime, nextPrayDateTime) || other.nextPrayDateTime == nextPrayDateTime));
}


@override
int get hashCode => Object.hash(runtimeType,nextPrayType,nextPrayDateTime);

@override
String toString() {
  return 'PrayTimingHeaderState(nextPrayType: $nextPrayType, nextPrayDateTime: $nextPrayDateTime)';
}


}

/// @nodoc
abstract mixin class _$PrayTimingHeaderStateCopyWith<$Res> implements $PrayTimingHeaderStateCopyWith<$Res> {
  factory _$PrayTimingHeaderStateCopyWith(_PrayTimingHeaderState value, $Res Function(_PrayTimingHeaderState) _then) = __$PrayTimingHeaderStateCopyWithImpl;
@override @useResult
$Res call({
 SalahTimeState nextPrayType, DateTime? nextPrayDateTime
});


@override $SalahTimeStateCopyWith<$Res> get nextPrayType;

}
/// @nodoc
class __$PrayTimingHeaderStateCopyWithImpl<$Res>
    implements _$PrayTimingHeaderStateCopyWith<$Res> {
  __$PrayTimingHeaderStateCopyWithImpl(this._self, this._then);

  final _PrayTimingHeaderState _self;
  final $Res Function(_PrayTimingHeaderState) _then;

/// Create a copy of PrayTimingHeaderState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nextPrayType = null,Object? nextPrayDateTime = freezed,}) {
  return _then(_PrayTimingHeaderState(
nextPrayType: null == nextPrayType ? _self.nextPrayType : nextPrayType // ignore: cast_nullable_to_non_nullable
as SalahTimeState,nextPrayDateTime: freezed == nextPrayDateTime ? _self.nextPrayDateTime : nextPrayDateTime // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of PrayTimingHeaderState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SalahTimeStateCopyWith<$Res> get nextPrayType {
  
  return $SalahTimeStateCopyWith<$Res>(_self.nextPrayType, (value) {
    return _then(_self.copyWith(nextPrayType: value));
  });
}
}

// dart format on
