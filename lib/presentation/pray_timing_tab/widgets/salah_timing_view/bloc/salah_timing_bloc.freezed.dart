// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'salah_timing_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SalahTimingEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SalahTimingEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SalahTimingEvent()';
}


}

/// @nodoc
class $SalahTimingEventCopyWith<$Res>  {
$SalahTimingEventCopyWith(SalahTimingEvent _, $Res Function(SalahTimingEvent) __);
}


/// Adds pattern-matching-related methods to [SalahTimingEvent].
extension SalahTimingEventPatterns on SalahTimingEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _UpdateSalahTimingForTheWeek value)?  updateSalahTimingForTheWeek,TResult Function( _UpdateCurrentSalahType value)?  updateCurrentSalahType,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateSalahTimingForTheWeek() when updateSalahTimingForTheWeek != null:
return updateSalahTimingForTheWeek(_that);case _UpdateCurrentSalahType() when updateCurrentSalahType != null:
return updateCurrentSalahType(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _UpdateSalahTimingForTheWeek value)  updateSalahTimingForTheWeek,required TResult Function( _UpdateCurrentSalahType value)  updateCurrentSalahType,}){
final _that = this;
switch (_that) {
case _UpdateSalahTimingForTheWeek():
return updateSalahTimingForTheWeek(_that);case _UpdateCurrentSalahType():
return updateCurrentSalahType(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _UpdateSalahTimingForTheWeek value)?  updateSalahTimingForTheWeek,TResult? Function( _UpdateCurrentSalahType value)?  updateCurrentSalahType,}){
final _that = this;
switch (_that) {
case _UpdateSalahTimingForTheWeek() when updateSalahTimingForTheWeek != null:
return updateSalahTimingForTheWeek(_that);case _UpdateCurrentSalahType() when updateCurrentSalahType != null:
return updateCurrentSalahType(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( List<PrayTimingDateTimeModel> prayTimeForWeek)?  updateSalahTimingForTheWeek,TResult Function( SalahTimeState status)?  updateCurrentSalahType,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateSalahTimingForTheWeek() when updateSalahTimingForTheWeek != null:
return updateSalahTimingForTheWeek(_that.prayTimeForWeek);case _UpdateCurrentSalahType() when updateCurrentSalahType != null:
return updateCurrentSalahType(_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( List<PrayTimingDateTimeModel> prayTimeForWeek)  updateSalahTimingForTheWeek,required TResult Function( SalahTimeState status)  updateCurrentSalahType,}) {final _that = this;
switch (_that) {
case _UpdateSalahTimingForTheWeek():
return updateSalahTimingForTheWeek(_that.prayTimeForWeek);case _UpdateCurrentSalahType():
return updateCurrentSalahType(_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( List<PrayTimingDateTimeModel> prayTimeForWeek)?  updateSalahTimingForTheWeek,TResult? Function( SalahTimeState status)?  updateCurrentSalahType,}) {final _that = this;
switch (_that) {
case _UpdateSalahTimingForTheWeek() when updateSalahTimingForTheWeek != null:
return updateSalahTimingForTheWeek(_that.prayTimeForWeek);case _UpdateCurrentSalahType() when updateCurrentSalahType != null:
return updateCurrentSalahType(_that.status);case _:
  return null;

}
}

}

/// @nodoc


class _UpdateSalahTimingForTheWeek implements SalahTimingEvent {
  const _UpdateSalahTimingForTheWeek(final  List<PrayTimingDateTimeModel> prayTimeForWeek): _prayTimeForWeek = prayTimeForWeek;
  

 final  List<PrayTimingDateTimeModel> _prayTimeForWeek;
 List<PrayTimingDateTimeModel> get prayTimeForWeek {
  if (_prayTimeForWeek is EqualUnmodifiableListView) return _prayTimeForWeek;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_prayTimeForWeek);
}


/// Create a copy of SalahTimingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateSalahTimingForTheWeekCopyWith<_UpdateSalahTimingForTheWeek> get copyWith => __$UpdateSalahTimingForTheWeekCopyWithImpl<_UpdateSalahTimingForTheWeek>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateSalahTimingForTheWeek&&const DeepCollectionEquality().equals(other._prayTimeForWeek, _prayTimeForWeek));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_prayTimeForWeek));

@override
String toString() {
  return 'SalahTimingEvent.updateSalahTimingForTheWeek(prayTimeForWeek: $prayTimeForWeek)';
}


}

/// @nodoc
abstract mixin class _$UpdateSalahTimingForTheWeekCopyWith<$Res> implements $SalahTimingEventCopyWith<$Res> {
  factory _$UpdateSalahTimingForTheWeekCopyWith(_UpdateSalahTimingForTheWeek value, $Res Function(_UpdateSalahTimingForTheWeek) _then) = __$UpdateSalahTimingForTheWeekCopyWithImpl;
@useResult
$Res call({
 List<PrayTimingDateTimeModel> prayTimeForWeek
});




}
/// @nodoc
class __$UpdateSalahTimingForTheWeekCopyWithImpl<$Res>
    implements _$UpdateSalahTimingForTheWeekCopyWith<$Res> {
  __$UpdateSalahTimingForTheWeekCopyWithImpl(this._self, this._then);

  final _UpdateSalahTimingForTheWeek _self;
  final $Res Function(_UpdateSalahTimingForTheWeek) _then;

/// Create a copy of SalahTimingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? prayTimeForWeek = null,}) {
  return _then(_UpdateSalahTimingForTheWeek(
null == prayTimeForWeek ? _self._prayTimeForWeek : prayTimeForWeek // ignore: cast_nullable_to_non_nullable
as List<PrayTimingDateTimeModel>,
  ));
}


}

/// @nodoc


class _UpdateCurrentSalahType implements SalahTimingEvent {
   _UpdateCurrentSalahType({required this.status});
  

 final  SalahTimeState status;

/// Create a copy of SalahTimingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateCurrentSalahTypeCopyWith<_UpdateCurrentSalahType> get copyWith => __$UpdateCurrentSalahTypeCopyWithImpl<_UpdateCurrentSalahType>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateCurrentSalahType&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,status);

@override
String toString() {
  return 'SalahTimingEvent.updateCurrentSalahType(status: $status)';
}


}

/// @nodoc
abstract mixin class _$UpdateCurrentSalahTypeCopyWith<$Res> implements $SalahTimingEventCopyWith<$Res> {
  factory _$UpdateCurrentSalahTypeCopyWith(_UpdateCurrentSalahType value, $Res Function(_UpdateCurrentSalahType) _then) = __$UpdateCurrentSalahTypeCopyWithImpl;
@useResult
$Res call({
 SalahTimeState status
});


$SalahTimeStateCopyWith<$Res> get status;

}
/// @nodoc
class __$UpdateCurrentSalahTypeCopyWithImpl<$Res>
    implements _$UpdateCurrentSalahTypeCopyWith<$Res> {
  __$UpdateCurrentSalahTypeCopyWithImpl(this._self, this._then);

  final _UpdateCurrentSalahType _self;
  final $Res Function(_UpdateCurrentSalahType) _then;

/// Create a copy of SalahTimingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? status = null,}) {
  return _then(_UpdateCurrentSalahType(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SalahTimeState,
  ));
}

/// Create a copy of SalahTimingEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SalahTimeStateCopyWith<$Res> get status {
  
  return $SalahTimeStateCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}

/// @nodoc
mixin _$SalahTimingState {

 SalahTimeState get currentSalahType; List<PrayTimingDateTimeModel> get prayTimeForWeek;
/// Create a copy of SalahTimingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SalahTimingStateCopyWith<SalahTimingState> get copyWith => _$SalahTimingStateCopyWithImpl<SalahTimingState>(this as SalahTimingState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SalahTimingState&&(identical(other.currentSalahType, currentSalahType) || other.currentSalahType == currentSalahType)&&const DeepCollectionEquality().equals(other.prayTimeForWeek, prayTimeForWeek));
}


@override
int get hashCode => Object.hash(runtimeType,currentSalahType,const DeepCollectionEquality().hash(prayTimeForWeek));

@override
String toString() {
  return 'SalahTimingState(currentSalahType: $currentSalahType, prayTimeForWeek: $prayTimeForWeek)';
}


}

/// @nodoc
abstract mixin class $SalahTimingStateCopyWith<$Res>  {
  factory $SalahTimingStateCopyWith(SalahTimingState value, $Res Function(SalahTimingState) _then) = _$SalahTimingStateCopyWithImpl;
@useResult
$Res call({
 SalahTimeState currentSalahType, List<PrayTimingDateTimeModel> prayTimeForWeek
});


$SalahTimeStateCopyWith<$Res> get currentSalahType;

}
/// @nodoc
class _$SalahTimingStateCopyWithImpl<$Res>
    implements $SalahTimingStateCopyWith<$Res> {
  _$SalahTimingStateCopyWithImpl(this._self, this._then);

  final SalahTimingState _self;
  final $Res Function(SalahTimingState) _then;

/// Create a copy of SalahTimingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentSalahType = null,Object? prayTimeForWeek = null,}) {
  return _then(_self.copyWith(
currentSalahType: null == currentSalahType ? _self.currentSalahType : currentSalahType // ignore: cast_nullable_to_non_nullable
as SalahTimeState,prayTimeForWeek: null == prayTimeForWeek ? _self.prayTimeForWeek : prayTimeForWeek // ignore: cast_nullable_to_non_nullable
as List<PrayTimingDateTimeModel>,
  ));
}
/// Create a copy of SalahTimingState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SalahTimeStateCopyWith<$Res> get currentSalahType {
  
  return $SalahTimeStateCopyWith<$Res>(_self.currentSalahType, (value) {
    return _then(_self.copyWith(currentSalahType: value));
  });
}
}


/// Adds pattern-matching-related methods to [SalahTimingState].
extension SalahTimingStatePatterns on SalahTimingState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SalahTimingState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SalahTimingState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SalahTimingState value)  $default,){
final _that = this;
switch (_that) {
case _SalahTimingState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SalahTimingState value)?  $default,){
final _that = this;
switch (_that) {
case _SalahTimingState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SalahTimeState currentSalahType,  List<PrayTimingDateTimeModel> prayTimeForWeek)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SalahTimingState() when $default != null:
return $default(_that.currentSalahType,_that.prayTimeForWeek);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SalahTimeState currentSalahType,  List<PrayTimingDateTimeModel> prayTimeForWeek)  $default,) {final _that = this;
switch (_that) {
case _SalahTimingState():
return $default(_that.currentSalahType,_that.prayTimeForWeek);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SalahTimeState currentSalahType,  List<PrayTimingDateTimeModel> prayTimeForWeek)?  $default,) {final _that = this;
switch (_that) {
case _SalahTimingState() when $default != null:
return $default(_that.currentSalahType,_that.prayTimeForWeek);case _:
  return null;

}
}

}

/// @nodoc


class _SalahTimingState implements SalahTimingState {
  const _SalahTimingState({this.currentSalahType = const SalahTimeState.none(), final  List<PrayTimingDateTimeModel> prayTimeForWeek = const []}): _prayTimeForWeek = prayTimeForWeek;
  

@override@JsonKey() final  SalahTimeState currentSalahType;
 final  List<PrayTimingDateTimeModel> _prayTimeForWeek;
@override@JsonKey() List<PrayTimingDateTimeModel> get prayTimeForWeek {
  if (_prayTimeForWeek is EqualUnmodifiableListView) return _prayTimeForWeek;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_prayTimeForWeek);
}


/// Create a copy of SalahTimingState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SalahTimingStateCopyWith<_SalahTimingState> get copyWith => __$SalahTimingStateCopyWithImpl<_SalahTimingState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SalahTimingState&&(identical(other.currentSalahType, currentSalahType) || other.currentSalahType == currentSalahType)&&const DeepCollectionEquality().equals(other._prayTimeForWeek, _prayTimeForWeek));
}


@override
int get hashCode => Object.hash(runtimeType,currentSalahType,const DeepCollectionEquality().hash(_prayTimeForWeek));

@override
String toString() {
  return 'SalahTimingState(currentSalahType: $currentSalahType, prayTimeForWeek: $prayTimeForWeek)';
}


}

/// @nodoc
abstract mixin class _$SalahTimingStateCopyWith<$Res> implements $SalahTimingStateCopyWith<$Res> {
  factory _$SalahTimingStateCopyWith(_SalahTimingState value, $Res Function(_SalahTimingState) _then) = __$SalahTimingStateCopyWithImpl;
@override @useResult
$Res call({
 SalahTimeState currentSalahType, List<PrayTimingDateTimeModel> prayTimeForWeek
});


@override $SalahTimeStateCopyWith<$Res> get currentSalahType;

}
/// @nodoc
class __$SalahTimingStateCopyWithImpl<$Res>
    implements _$SalahTimingStateCopyWith<$Res> {
  __$SalahTimingStateCopyWithImpl(this._self, this._then);

  final _SalahTimingState _self;
  final $Res Function(_SalahTimingState) _then;

/// Create a copy of SalahTimingState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentSalahType = null,Object? prayTimeForWeek = null,}) {
  return _then(_SalahTimingState(
currentSalahType: null == currentSalahType ? _self.currentSalahType : currentSalahType // ignore: cast_nullable_to_non_nullable
as SalahTimeState,prayTimeForWeek: null == prayTimeForWeek ? _self._prayTimeForWeek : prayTimeForWeek // ignore: cast_nullable_to_non_nullable
as List<PrayTimingDateTimeModel>,
  ));
}

/// Create a copy of SalahTimingState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SalahTimeStateCopyWith<$Res> get currentSalahType {
  
  return $SalahTimeStateCopyWith<$Res>(_self.currentSalahType, (value) {
    return _then(_self.copyWith(currentSalahType: value));
  });
}
}

// dart format on
