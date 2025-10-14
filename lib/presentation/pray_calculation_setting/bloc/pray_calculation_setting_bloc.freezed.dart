// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pray_calculation_setting_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PrayCalculationSettingEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PrayCalculationSettingEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PrayCalculationSettingEvent()';
}


}

/// @nodoc
class $PrayCalculationSettingEventCopyWith<$Res>  {
$PrayCalculationSettingEventCopyWith(PrayCalculationSettingEvent _, $Res Function(PrayCalculationSettingEvent) __);
}


/// Adds pattern-matching-related methods to [PrayCalculationSettingEvent].
extension PrayCalculationSettingEventPatterns on PrayCalculationSettingEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Setup value)?  setup,TResult Function( _UpdateCalculationMethod value)?  updateCalculationMethod,TResult Function( _UpdateMadhabMethod value)?  updateMadhabMethod,TResult Function( _UpdateTimeZone value)?  updateTimeZone,TResult Function( _UpdateHightLatitudeCalculation value)?  updateHightLatitudeCalculation,TResult Function( _UpdateTimeOfPreview value)?  updateTimeOfPreview,TResult Function( _UpdateAzanTypeInMin value)?  updateAzanTypeInMin,TResult Function( _SaveChanges value)?  saveChanges,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Setup() when setup != null:
return setup(_that);case _UpdateCalculationMethod() when updateCalculationMethod != null:
return updateCalculationMethod(_that);case _UpdateMadhabMethod() when updateMadhabMethod != null:
return updateMadhabMethod(_that);case _UpdateTimeZone() when updateTimeZone != null:
return updateTimeZone(_that);case _UpdateHightLatitudeCalculation() when updateHightLatitudeCalculation != null:
return updateHightLatitudeCalculation(_that);case _UpdateTimeOfPreview() when updateTimeOfPreview != null:
return updateTimeOfPreview(_that);case _UpdateAzanTypeInMin() when updateAzanTypeInMin != null:
return updateAzanTypeInMin(_that);case _SaveChanges() when saveChanges != null:
return saveChanges(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Setup value)  setup,required TResult Function( _UpdateCalculationMethod value)  updateCalculationMethod,required TResult Function( _UpdateMadhabMethod value)  updateMadhabMethod,required TResult Function( _UpdateTimeZone value)  updateTimeZone,required TResult Function( _UpdateHightLatitudeCalculation value)  updateHightLatitudeCalculation,required TResult Function( _UpdateTimeOfPreview value)  updateTimeOfPreview,required TResult Function( _UpdateAzanTypeInMin value)  updateAzanTypeInMin,required TResult Function( _SaveChanges value)  saveChanges,}){
final _that = this;
switch (_that) {
case _Setup():
return setup(_that);case _UpdateCalculationMethod():
return updateCalculationMethod(_that);case _UpdateMadhabMethod():
return updateMadhabMethod(_that);case _UpdateTimeZone():
return updateTimeZone(_that);case _UpdateHightLatitudeCalculation():
return updateHightLatitudeCalculation(_that);case _UpdateTimeOfPreview():
return updateTimeOfPreview(_that);case _UpdateAzanTypeInMin():
return updateAzanTypeInMin(_that);case _SaveChanges():
return saveChanges(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Setup value)?  setup,TResult? Function( _UpdateCalculationMethod value)?  updateCalculationMethod,TResult? Function( _UpdateMadhabMethod value)?  updateMadhabMethod,TResult? Function( _UpdateTimeZone value)?  updateTimeZone,TResult? Function( _UpdateHightLatitudeCalculation value)?  updateHightLatitudeCalculation,TResult? Function( _UpdateTimeOfPreview value)?  updateTimeOfPreview,TResult? Function( _UpdateAzanTypeInMin value)?  updateAzanTypeInMin,TResult? Function( _SaveChanges value)?  saveChanges,}){
final _that = this;
switch (_that) {
case _Setup() when setup != null:
return setup(_that);case _UpdateCalculationMethod() when updateCalculationMethod != null:
return updateCalculationMethod(_that);case _UpdateMadhabMethod() when updateMadhabMethod != null:
return updateMadhabMethod(_that);case _UpdateTimeZone() when updateTimeZone != null:
return updateTimeZone(_that);case _UpdateHightLatitudeCalculation() when updateHightLatitudeCalculation != null:
return updateHightLatitudeCalculation(_that);case _UpdateTimeOfPreview() when updateTimeOfPreview != null:
return updateTimeOfPreview(_that);case _UpdateAzanTypeInMin() when updateAzanTypeInMin != null:
return updateAzanTypeInMin(_that);case _SaveChanges() when saveChanges != null:
return saveChanges(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  setup,TResult Function( PrayCalculationMethodState method)?  updateCalculationMethod,TResult Function( MadhabState madhab)?  updateMadhabMethod,TResult Function( Duration value)?  updateTimeZone,TResult Function( PrayHightLatitudeCaluclationState state)?  updateHightLatitudeCalculation,TResult Function( DateTime time,  PreviewBoxesState azanType)?  updateTimeOfPreview,TResult Function( int minutes,  AzanTypeForEditMinState azanType)?  updateAzanTypeInMin,TResult Function()?  saveChanges,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Setup() when setup != null:
return setup();case _UpdateCalculationMethod() when updateCalculationMethod != null:
return updateCalculationMethod(_that.method);case _UpdateMadhabMethod() when updateMadhabMethod != null:
return updateMadhabMethod(_that.madhab);case _UpdateTimeZone() when updateTimeZone != null:
return updateTimeZone(_that.value);case _UpdateHightLatitudeCalculation() when updateHightLatitudeCalculation != null:
return updateHightLatitudeCalculation(_that.state);case _UpdateTimeOfPreview() when updateTimeOfPreview != null:
return updateTimeOfPreview(_that.time,_that.azanType);case _UpdateAzanTypeInMin() when updateAzanTypeInMin != null:
return updateAzanTypeInMin(_that.minutes,_that.azanType);case _SaveChanges() when saveChanges != null:
return saveChanges();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  setup,required TResult Function( PrayCalculationMethodState method)  updateCalculationMethod,required TResult Function( MadhabState madhab)  updateMadhabMethod,required TResult Function( Duration value)  updateTimeZone,required TResult Function( PrayHightLatitudeCaluclationState state)  updateHightLatitudeCalculation,required TResult Function( DateTime time,  PreviewBoxesState azanType)  updateTimeOfPreview,required TResult Function( int minutes,  AzanTypeForEditMinState azanType)  updateAzanTypeInMin,required TResult Function()  saveChanges,}) {final _that = this;
switch (_that) {
case _Setup():
return setup();case _UpdateCalculationMethod():
return updateCalculationMethod(_that.method);case _UpdateMadhabMethod():
return updateMadhabMethod(_that.madhab);case _UpdateTimeZone():
return updateTimeZone(_that.value);case _UpdateHightLatitudeCalculation():
return updateHightLatitudeCalculation(_that.state);case _UpdateTimeOfPreview():
return updateTimeOfPreview(_that.time,_that.azanType);case _UpdateAzanTypeInMin():
return updateAzanTypeInMin(_that.minutes,_that.azanType);case _SaveChanges():
return saveChanges();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  setup,TResult? Function( PrayCalculationMethodState method)?  updateCalculationMethod,TResult? Function( MadhabState madhab)?  updateMadhabMethod,TResult? Function( Duration value)?  updateTimeZone,TResult? Function( PrayHightLatitudeCaluclationState state)?  updateHightLatitudeCalculation,TResult? Function( DateTime time,  PreviewBoxesState azanType)?  updateTimeOfPreview,TResult? Function( int minutes,  AzanTypeForEditMinState azanType)?  updateAzanTypeInMin,TResult? Function()?  saveChanges,}) {final _that = this;
switch (_that) {
case _Setup() when setup != null:
return setup();case _UpdateCalculationMethod() when updateCalculationMethod != null:
return updateCalculationMethod(_that.method);case _UpdateMadhabMethod() when updateMadhabMethod != null:
return updateMadhabMethod(_that.madhab);case _UpdateTimeZone() when updateTimeZone != null:
return updateTimeZone(_that.value);case _UpdateHightLatitudeCalculation() when updateHightLatitudeCalculation != null:
return updateHightLatitudeCalculation(_that.state);case _UpdateTimeOfPreview() when updateTimeOfPreview != null:
return updateTimeOfPreview(_that.time,_that.azanType);case _UpdateAzanTypeInMin() when updateAzanTypeInMin != null:
return updateAzanTypeInMin(_that.minutes,_that.azanType);case _SaveChanges() when saveChanges != null:
return saveChanges();case _:
  return null;

}
}

}

/// @nodoc


class _Setup implements PrayCalculationSettingEvent {
   _Setup();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Setup);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PrayCalculationSettingEvent.setup()';
}


}




/// @nodoc


class _UpdateCalculationMethod implements PrayCalculationSettingEvent {
   _UpdateCalculationMethod({required this.method});
  

 final  PrayCalculationMethodState method;

/// Create a copy of PrayCalculationSettingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateCalculationMethodCopyWith<_UpdateCalculationMethod> get copyWith => __$UpdateCalculationMethodCopyWithImpl<_UpdateCalculationMethod>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateCalculationMethod&&(identical(other.method, method) || other.method == method));
}


@override
int get hashCode => Object.hash(runtimeType,method);

@override
String toString() {
  return 'PrayCalculationSettingEvent.updateCalculationMethod(method: $method)';
}


}

/// @nodoc
abstract mixin class _$UpdateCalculationMethodCopyWith<$Res> implements $PrayCalculationSettingEventCopyWith<$Res> {
  factory _$UpdateCalculationMethodCopyWith(_UpdateCalculationMethod value, $Res Function(_UpdateCalculationMethod) _then) = __$UpdateCalculationMethodCopyWithImpl;
@useResult
$Res call({
 PrayCalculationMethodState method
});


$PrayCalculationMethodStateCopyWith<$Res> get method;

}
/// @nodoc
class __$UpdateCalculationMethodCopyWithImpl<$Res>
    implements _$UpdateCalculationMethodCopyWith<$Res> {
  __$UpdateCalculationMethodCopyWithImpl(this._self, this._then);

  final _UpdateCalculationMethod _self;
  final $Res Function(_UpdateCalculationMethod) _then;

/// Create a copy of PrayCalculationSettingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? method = null,}) {
  return _then(_UpdateCalculationMethod(
method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as PrayCalculationMethodState,
  ));
}

/// Create a copy of PrayCalculationSettingEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PrayCalculationMethodStateCopyWith<$Res> get method {
  
  return $PrayCalculationMethodStateCopyWith<$Res>(_self.method, (value) {
    return _then(_self.copyWith(method: value));
  });
}
}

/// @nodoc


class _UpdateMadhabMethod implements PrayCalculationSettingEvent {
   _UpdateMadhabMethod({required this.madhab});
  

 final  MadhabState madhab;

/// Create a copy of PrayCalculationSettingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateMadhabMethodCopyWith<_UpdateMadhabMethod> get copyWith => __$UpdateMadhabMethodCopyWithImpl<_UpdateMadhabMethod>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateMadhabMethod&&(identical(other.madhab, madhab) || other.madhab == madhab));
}


@override
int get hashCode => Object.hash(runtimeType,madhab);

@override
String toString() {
  return 'PrayCalculationSettingEvent.updateMadhabMethod(madhab: $madhab)';
}


}

/// @nodoc
abstract mixin class _$UpdateMadhabMethodCopyWith<$Res> implements $PrayCalculationSettingEventCopyWith<$Res> {
  factory _$UpdateMadhabMethodCopyWith(_UpdateMadhabMethod value, $Res Function(_UpdateMadhabMethod) _then) = __$UpdateMadhabMethodCopyWithImpl;
@useResult
$Res call({
 MadhabState madhab
});


$MadhabStateCopyWith<$Res> get madhab;

}
/// @nodoc
class __$UpdateMadhabMethodCopyWithImpl<$Res>
    implements _$UpdateMadhabMethodCopyWith<$Res> {
  __$UpdateMadhabMethodCopyWithImpl(this._self, this._then);

  final _UpdateMadhabMethod _self;
  final $Res Function(_UpdateMadhabMethod) _then;

/// Create a copy of PrayCalculationSettingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? madhab = null,}) {
  return _then(_UpdateMadhabMethod(
madhab: null == madhab ? _self.madhab : madhab // ignore: cast_nullable_to_non_nullable
as MadhabState,
  ));
}

/// Create a copy of PrayCalculationSettingEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MadhabStateCopyWith<$Res> get madhab {
  
  return $MadhabStateCopyWith<$Res>(_self.madhab, (value) {
    return _then(_self.copyWith(madhab: value));
  });
}
}

/// @nodoc


class _UpdateTimeZone implements PrayCalculationSettingEvent {
   _UpdateTimeZone({required this.value});
  

 final  Duration value;

/// Create a copy of PrayCalculationSettingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateTimeZoneCopyWith<_UpdateTimeZone> get copyWith => __$UpdateTimeZoneCopyWithImpl<_UpdateTimeZone>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateTimeZone&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'PrayCalculationSettingEvent.updateTimeZone(value: $value)';
}


}

/// @nodoc
abstract mixin class _$UpdateTimeZoneCopyWith<$Res> implements $PrayCalculationSettingEventCopyWith<$Res> {
  factory _$UpdateTimeZoneCopyWith(_UpdateTimeZone value, $Res Function(_UpdateTimeZone) _then) = __$UpdateTimeZoneCopyWithImpl;
@useResult
$Res call({
 Duration value
});




}
/// @nodoc
class __$UpdateTimeZoneCopyWithImpl<$Res>
    implements _$UpdateTimeZoneCopyWith<$Res> {
  __$UpdateTimeZoneCopyWithImpl(this._self, this._then);

  final _UpdateTimeZone _self;
  final $Res Function(_UpdateTimeZone) _then;

/// Create a copy of PrayCalculationSettingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_UpdateTimeZone(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as Duration,
  ));
}


}

/// @nodoc


class _UpdateHightLatitudeCalculation implements PrayCalculationSettingEvent {
   _UpdateHightLatitudeCalculation({required this.state});
  

 final  PrayHightLatitudeCaluclationState state;

/// Create a copy of PrayCalculationSettingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateHightLatitudeCalculationCopyWith<_UpdateHightLatitudeCalculation> get copyWith => __$UpdateHightLatitudeCalculationCopyWithImpl<_UpdateHightLatitudeCalculation>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateHightLatitudeCalculation&&(identical(other.state, state) || other.state == state));
}


@override
int get hashCode => Object.hash(runtimeType,state);

@override
String toString() {
  return 'PrayCalculationSettingEvent.updateHightLatitudeCalculation(state: $state)';
}


}

/// @nodoc
abstract mixin class _$UpdateHightLatitudeCalculationCopyWith<$Res> implements $PrayCalculationSettingEventCopyWith<$Res> {
  factory _$UpdateHightLatitudeCalculationCopyWith(_UpdateHightLatitudeCalculation value, $Res Function(_UpdateHightLatitudeCalculation) _then) = __$UpdateHightLatitudeCalculationCopyWithImpl;
@useResult
$Res call({
 PrayHightLatitudeCaluclationState state
});


$PrayHightLatitudeCaluclationStateCopyWith<$Res> get state;

}
/// @nodoc
class __$UpdateHightLatitudeCalculationCopyWithImpl<$Res>
    implements _$UpdateHightLatitudeCalculationCopyWith<$Res> {
  __$UpdateHightLatitudeCalculationCopyWithImpl(this._self, this._then);

  final _UpdateHightLatitudeCalculation _self;
  final $Res Function(_UpdateHightLatitudeCalculation) _then;

/// Create a copy of PrayCalculationSettingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? state = null,}) {
  return _then(_UpdateHightLatitudeCalculation(
state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as PrayHightLatitudeCaluclationState,
  ));
}

/// Create a copy of PrayCalculationSettingEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PrayHightLatitudeCaluclationStateCopyWith<$Res> get state {
  
  return $PrayHightLatitudeCaluclationStateCopyWith<$Res>(_self.state, (value) {
    return _then(_self.copyWith(state: value));
  });
}
}

/// @nodoc


class _UpdateTimeOfPreview implements PrayCalculationSettingEvent {
   _UpdateTimeOfPreview({required this.time, required this.azanType});
  

 final  DateTime time;
 final  PreviewBoxesState azanType;

/// Create a copy of PrayCalculationSettingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateTimeOfPreviewCopyWith<_UpdateTimeOfPreview> get copyWith => __$UpdateTimeOfPreviewCopyWithImpl<_UpdateTimeOfPreview>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateTimeOfPreview&&(identical(other.time, time) || other.time == time)&&(identical(other.azanType, azanType) || other.azanType == azanType));
}


@override
int get hashCode => Object.hash(runtimeType,time,azanType);

@override
String toString() {
  return 'PrayCalculationSettingEvent.updateTimeOfPreview(time: $time, azanType: $azanType)';
}


}

/// @nodoc
abstract mixin class _$UpdateTimeOfPreviewCopyWith<$Res> implements $PrayCalculationSettingEventCopyWith<$Res> {
  factory _$UpdateTimeOfPreviewCopyWith(_UpdateTimeOfPreview value, $Res Function(_UpdateTimeOfPreview) _then) = __$UpdateTimeOfPreviewCopyWithImpl;
@useResult
$Res call({
 DateTime time, PreviewBoxesState azanType
});


$PreviewBoxesStateCopyWith<$Res> get azanType;

}
/// @nodoc
class __$UpdateTimeOfPreviewCopyWithImpl<$Res>
    implements _$UpdateTimeOfPreviewCopyWith<$Res> {
  __$UpdateTimeOfPreviewCopyWithImpl(this._self, this._then);

  final _UpdateTimeOfPreview _self;
  final $Res Function(_UpdateTimeOfPreview) _then;

/// Create a copy of PrayCalculationSettingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? time = null,Object? azanType = null,}) {
  return _then(_UpdateTimeOfPreview(
time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as DateTime,azanType: null == azanType ? _self.azanType : azanType // ignore: cast_nullable_to_non_nullable
as PreviewBoxesState,
  ));
}

/// Create a copy of PrayCalculationSettingEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PreviewBoxesStateCopyWith<$Res> get azanType {
  
  return $PreviewBoxesStateCopyWith<$Res>(_self.azanType, (value) {
    return _then(_self.copyWith(azanType: value));
  });
}
}

/// @nodoc


class _UpdateAzanTypeInMin implements PrayCalculationSettingEvent {
   _UpdateAzanTypeInMin({required this.minutes, required this.azanType});
  

 final  int minutes;
 final  AzanTypeForEditMinState azanType;

/// Create a copy of PrayCalculationSettingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateAzanTypeInMinCopyWith<_UpdateAzanTypeInMin> get copyWith => __$UpdateAzanTypeInMinCopyWithImpl<_UpdateAzanTypeInMin>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateAzanTypeInMin&&(identical(other.minutes, minutes) || other.minutes == minutes)&&(identical(other.azanType, azanType) || other.azanType == azanType));
}


@override
int get hashCode => Object.hash(runtimeType,minutes,azanType);

@override
String toString() {
  return 'PrayCalculationSettingEvent.updateAzanTypeInMin(minutes: $minutes, azanType: $azanType)';
}


}

/// @nodoc
abstract mixin class _$UpdateAzanTypeInMinCopyWith<$Res> implements $PrayCalculationSettingEventCopyWith<$Res> {
  factory _$UpdateAzanTypeInMinCopyWith(_UpdateAzanTypeInMin value, $Res Function(_UpdateAzanTypeInMin) _then) = __$UpdateAzanTypeInMinCopyWithImpl;
@useResult
$Res call({
 int minutes, AzanTypeForEditMinState azanType
});


$AzanTypeForEditMinStateCopyWith<$Res> get azanType;

}
/// @nodoc
class __$UpdateAzanTypeInMinCopyWithImpl<$Res>
    implements _$UpdateAzanTypeInMinCopyWith<$Res> {
  __$UpdateAzanTypeInMinCopyWithImpl(this._self, this._then);

  final _UpdateAzanTypeInMin _self;
  final $Res Function(_UpdateAzanTypeInMin) _then;

/// Create a copy of PrayCalculationSettingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? minutes = null,Object? azanType = null,}) {
  return _then(_UpdateAzanTypeInMin(
minutes: null == minutes ? _self.minutes : minutes // ignore: cast_nullable_to_non_nullable
as int,azanType: null == azanType ? _self.azanType : azanType // ignore: cast_nullable_to_non_nullable
as AzanTypeForEditMinState,
  ));
}

/// Create a copy of PrayCalculationSettingEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AzanTypeForEditMinStateCopyWith<$Res> get azanType {
  
  return $AzanTypeForEditMinStateCopyWith<$Res>(_self.azanType, (value) {
    return _then(_self.copyWith(azanType: value));
  });
}
}

/// @nodoc


class _SaveChanges implements PrayCalculationSettingEvent {
   _SaveChanges();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SaveChanges);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PrayCalculationSettingEvent.saveChanges()';
}


}




/// @nodoc
mixin _$PrayCalculationSettingState {

 DateTime? get fajirTime; DateTime? get sunriseTime; DateTime? get duherTime; DateTime? get asrTime; DateTime? get megribTime; DateTime? get ishaTime; DateTime? get midleNighTime; DateTime? get last3thTime; DateTime? get applicationTime; DateTime? get deviceTime; bool get buttonsStatus; int get editFajirTimeManual; int get editSunriseTimeManual; int get editDuhirTimeManual; int get editAsrTimeManual; int get editMagrebTimeManual; int get editIshaTimeManual; int get editMidNightTimeManual; int get editLast3thTimeTimeManual; Duration get timeZone; MadhabState get madhab; PrayCalculationMethodState get calculationMethod; PrayHightLatitudeCaluclationState get hightLatitudeCaluclation;
/// Create a copy of PrayCalculationSettingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PrayCalculationSettingStateCopyWith<PrayCalculationSettingState> get copyWith => _$PrayCalculationSettingStateCopyWithImpl<PrayCalculationSettingState>(this as PrayCalculationSettingState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PrayCalculationSettingState&&(identical(other.fajirTime, fajirTime) || other.fajirTime == fajirTime)&&(identical(other.sunriseTime, sunriseTime) || other.sunriseTime == sunriseTime)&&(identical(other.duherTime, duherTime) || other.duherTime == duherTime)&&(identical(other.asrTime, asrTime) || other.asrTime == asrTime)&&(identical(other.megribTime, megribTime) || other.megribTime == megribTime)&&(identical(other.ishaTime, ishaTime) || other.ishaTime == ishaTime)&&(identical(other.midleNighTime, midleNighTime) || other.midleNighTime == midleNighTime)&&(identical(other.last3thTime, last3thTime) || other.last3thTime == last3thTime)&&(identical(other.applicationTime, applicationTime) || other.applicationTime == applicationTime)&&(identical(other.deviceTime, deviceTime) || other.deviceTime == deviceTime)&&(identical(other.buttonsStatus, buttonsStatus) || other.buttonsStatus == buttonsStatus)&&(identical(other.editFajirTimeManual, editFajirTimeManual) || other.editFajirTimeManual == editFajirTimeManual)&&(identical(other.editSunriseTimeManual, editSunriseTimeManual) || other.editSunriseTimeManual == editSunriseTimeManual)&&(identical(other.editDuhirTimeManual, editDuhirTimeManual) || other.editDuhirTimeManual == editDuhirTimeManual)&&(identical(other.editAsrTimeManual, editAsrTimeManual) || other.editAsrTimeManual == editAsrTimeManual)&&(identical(other.editMagrebTimeManual, editMagrebTimeManual) || other.editMagrebTimeManual == editMagrebTimeManual)&&(identical(other.editIshaTimeManual, editIshaTimeManual) || other.editIshaTimeManual == editIshaTimeManual)&&(identical(other.editMidNightTimeManual, editMidNightTimeManual) || other.editMidNightTimeManual == editMidNightTimeManual)&&(identical(other.editLast3thTimeTimeManual, editLast3thTimeTimeManual) || other.editLast3thTimeTimeManual == editLast3thTimeTimeManual)&&(identical(other.timeZone, timeZone) || other.timeZone == timeZone)&&(identical(other.madhab, madhab) || other.madhab == madhab)&&(identical(other.calculationMethod, calculationMethod) || other.calculationMethod == calculationMethod)&&(identical(other.hightLatitudeCaluclation, hightLatitudeCaluclation) || other.hightLatitudeCaluclation == hightLatitudeCaluclation));
}


@override
int get hashCode => Object.hashAll([runtimeType,fajirTime,sunriseTime,duherTime,asrTime,megribTime,ishaTime,midleNighTime,last3thTime,applicationTime,deviceTime,buttonsStatus,editFajirTimeManual,editSunriseTimeManual,editDuhirTimeManual,editAsrTimeManual,editMagrebTimeManual,editIshaTimeManual,editMidNightTimeManual,editLast3thTimeTimeManual,timeZone,madhab,calculationMethod,hightLatitudeCaluclation]);

@override
String toString() {
  return 'PrayCalculationSettingState(fajirTime: $fajirTime, sunriseTime: $sunriseTime, duherTime: $duherTime, asrTime: $asrTime, megribTime: $megribTime, ishaTime: $ishaTime, midleNighTime: $midleNighTime, last3thTime: $last3thTime, applicationTime: $applicationTime, deviceTime: $deviceTime, buttonsStatus: $buttonsStatus, editFajirTimeManual: $editFajirTimeManual, editSunriseTimeManual: $editSunriseTimeManual, editDuhirTimeManual: $editDuhirTimeManual, editAsrTimeManual: $editAsrTimeManual, editMagrebTimeManual: $editMagrebTimeManual, editIshaTimeManual: $editIshaTimeManual, editMidNightTimeManual: $editMidNightTimeManual, editLast3thTimeTimeManual: $editLast3thTimeTimeManual, timeZone: $timeZone, madhab: $madhab, calculationMethod: $calculationMethod, hightLatitudeCaluclation: $hightLatitudeCaluclation)';
}


}

/// @nodoc
abstract mixin class $PrayCalculationSettingStateCopyWith<$Res>  {
  factory $PrayCalculationSettingStateCopyWith(PrayCalculationSettingState value, $Res Function(PrayCalculationSettingState) _then) = _$PrayCalculationSettingStateCopyWithImpl;
@useResult
$Res call({
 DateTime? fajirTime, DateTime? sunriseTime, DateTime? duherTime, DateTime? asrTime, DateTime? megribTime, DateTime? ishaTime, DateTime? midleNighTime, DateTime? last3thTime, DateTime? applicationTime, DateTime? deviceTime, bool buttonsStatus, int editFajirTimeManual, int editSunriseTimeManual, int editDuhirTimeManual, int editAsrTimeManual, int editMagrebTimeManual, int editIshaTimeManual, int editMidNightTimeManual, int editLast3thTimeTimeManual, Duration timeZone, MadhabState madhab, PrayCalculationMethodState calculationMethod, PrayHightLatitudeCaluclationState hightLatitudeCaluclation
});


$MadhabStateCopyWith<$Res> get madhab;$PrayCalculationMethodStateCopyWith<$Res> get calculationMethod;$PrayHightLatitudeCaluclationStateCopyWith<$Res> get hightLatitudeCaluclation;

}
/// @nodoc
class _$PrayCalculationSettingStateCopyWithImpl<$Res>
    implements $PrayCalculationSettingStateCopyWith<$Res> {
  _$PrayCalculationSettingStateCopyWithImpl(this._self, this._then);

  final PrayCalculationSettingState _self;
  final $Res Function(PrayCalculationSettingState) _then;

/// Create a copy of PrayCalculationSettingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fajirTime = freezed,Object? sunriseTime = freezed,Object? duherTime = freezed,Object? asrTime = freezed,Object? megribTime = freezed,Object? ishaTime = freezed,Object? midleNighTime = freezed,Object? last3thTime = freezed,Object? applicationTime = freezed,Object? deviceTime = freezed,Object? buttonsStatus = null,Object? editFajirTimeManual = null,Object? editSunriseTimeManual = null,Object? editDuhirTimeManual = null,Object? editAsrTimeManual = null,Object? editMagrebTimeManual = null,Object? editIshaTimeManual = null,Object? editMidNightTimeManual = null,Object? editLast3thTimeTimeManual = null,Object? timeZone = null,Object? madhab = null,Object? calculationMethod = null,Object? hightLatitudeCaluclation = null,}) {
  return _then(_self.copyWith(
fajirTime: freezed == fajirTime ? _self.fajirTime : fajirTime // ignore: cast_nullable_to_non_nullable
as DateTime?,sunriseTime: freezed == sunriseTime ? _self.sunriseTime : sunriseTime // ignore: cast_nullable_to_non_nullable
as DateTime?,duherTime: freezed == duherTime ? _self.duherTime : duherTime // ignore: cast_nullable_to_non_nullable
as DateTime?,asrTime: freezed == asrTime ? _self.asrTime : asrTime // ignore: cast_nullable_to_non_nullable
as DateTime?,megribTime: freezed == megribTime ? _self.megribTime : megribTime // ignore: cast_nullable_to_non_nullable
as DateTime?,ishaTime: freezed == ishaTime ? _self.ishaTime : ishaTime // ignore: cast_nullable_to_non_nullable
as DateTime?,midleNighTime: freezed == midleNighTime ? _self.midleNighTime : midleNighTime // ignore: cast_nullable_to_non_nullable
as DateTime?,last3thTime: freezed == last3thTime ? _self.last3thTime : last3thTime // ignore: cast_nullable_to_non_nullable
as DateTime?,applicationTime: freezed == applicationTime ? _self.applicationTime : applicationTime // ignore: cast_nullable_to_non_nullable
as DateTime?,deviceTime: freezed == deviceTime ? _self.deviceTime : deviceTime // ignore: cast_nullable_to_non_nullable
as DateTime?,buttonsStatus: null == buttonsStatus ? _self.buttonsStatus : buttonsStatus // ignore: cast_nullable_to_non_nullable
as bool,editFajirTimeManual: null == editFajirTimeManual ? _self.editFajirTimeManual : editFajirTimeManual // ignore: cast_nullable_to_non_nullable
as int,editSunriseTimeManual: null == editSunriseTimeManual ? _self.editSunriseTimeManual : editSunriseTimeManual // ignore: cast_nullable_to_non_nullable
as int,editDuhirTimeManual: null == editDuhirTimeManual ? _self.editDuhirTimeManual : editDuhirTimeManual // ignore: cast_nullable_to_non_nullable
as int,editAsrTimeManual: null == editAsrTimeManual ? _self.editAsrTimeManual : editAsrTimeManual // ignore: cast_nullable_to_non_nullable
as int,editMagrebTimeManual: null == editMagrebTimeManual ? _self.editMagrebTimeManual : editMagrebTimeManual // ignore: cast_nullable_to_non_nullable
as int,editIshaTimeManual: null == editIshaTimeManual ? _self.editIshaTimeManual : editIshaTimeManual // ignore: cast_nullable_to_non_nullable
as int,editMidNightTimeManual: null == editMidNightTimeManual ? _self.editMidNightTimeManual : editMidNightTimeManual // ignore: cast_nullable_to_non_nullable
as int,editLast3thTimeTimeManual: null == editLast3thTimeTimeManual ? _self.editLast3thTimeTimeManual : editLast3thTimeTimeManual // ignore: cast_nullable_to_non_nullable
as int,timeZone: null == timeZone ? _self.timeZone : timeZone // ignore: cast_nullable_to_non_nullable
as Duration,madhab: null == madhab ? _self.madhab : madhab // ignore: cast_nullable_to_non_nullable
as MadhabState,calculationMethod: null == calculationMethod ? _self.calculationMethod : calculationMethod // ignore: cast_nullable_to_non_nullable
as PrayCalculationMethodState,hightLatitudeCaluclation: null == hightLatitudeCaluclation ? _self.hightLatitudeCaluclation : hightLatitudeCaluclation // ignore: cast_nullable_to_non_nullable
as PrayHightLatitudeCaluclationState,
  ));
}
/// Create a copy of PrayCalculationSettingState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MadhabStateCopyWith<$Res> get madhab {
  
  return $MadhabStateCopyWith<$Res>(_self.madhab, (value) {
    return _then(_self.copyWith(madhab: value));
  });
}/// Create a copy of PrayCalculationSettingState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PrayCalculationMethodStateCopyWith<$Res> get calculationMethod {
  
  return $PrayCalculationMethodStateCopyWith<$Res>(_self.calculationMethod, (value) {
    return _then(_self.copyWith(calculationMethod: value));
  });
}/// Create a copy of PrayCalculationSettingState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PrayHightLatitudeCaluclationStateCopyWith<$Res> get hightLatitudeCaluclation {
  
  return $PrayHightLatitudeCaluclationStateCopyWith<$Res>(_self.hightLatitudeCaluclation, (value) {
    return _then(_self.copyWith(hightLatitudeCaluclation: value));
  });
}
}


/// Adds pattern-matching-related methods to [PrayCalculationSettingState].
extension PrayCalculationSettingStatePatterns on PrayCalculationSettingState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PrayCalculationSettingState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PrayCalculationSettingState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PrayCalculationSettingState value)  $default,){
final _that = this;
switch (_that) {
case _PrayCalculationSettingState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PrayCalculationSettingState value)?  $default,){
final _that = this;
switch (_that) {
case _PrayCalculationSettingState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime? fajirTime,  DateTime? sunriseTime,  DateTime? duherTime,  DateTime? asrTime,  DateTime? megribTime,  DateTime? ishaTime,  DateTime? midleNighTime,  DateTime? last3thTime,  DateTime? applicationTime,  DateTime? deviceTime,  bool buttonsStatus,  int editFajirTimeManual,  int editSunriseTimeManual,  int editDuhirTimeManual,  int editAsrTimeManual,  int editMagrebTimeManual,  int editIshaTimeManual,  int editMidNightTimeManual,  int editLast3thTimeTimeManual,  Duration timeZone,  MadhabState madhab,  PrayCalculationMethodState calculationMethod,  PrayHightLatitudeCaluclationState hightLatitudeCaluclation)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PrayCalculationSettingState() when $default != null:
return $default(_that.fajirTime,_that.sunriseTime,_that.duherTime,_that.asrTime,_that.megribTime,_that.ishaTime,_that.midleNighTime,_that.last3thTime,_that.applicationTime,_that.deviceTime,_that.buttonsStatus,_that.editFajirTimeManual,_that.editSunriseTimeManual,_that.editDuhirTimeManual,_that.editAsrTimeManual,_that.editMagrebTimeManual,_that.editIshaTimeManual,_that.editMidNightTimeManual,_that.editLast3thTimeTimeManual,_that.timeZone,_that.madhab,_that.calculationMethod,_that.hightLatitudeCaluclation);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime? fajirTime,  DateTime? sunriseTime,  DateTime? duherTime,  DateTime? asrTime,  DateTime? megribTime,  DateTime? ishaTime,  DateTime? midleNighTime,  DateTime? last3thTime,  DateTime? applicationTime,  DateTime? deviceTime,  bool buttonsStatus,  int editFajirTimeManual,  int editSunriseTimeManual,  int editDuhirTimeManual,  int editAsrTimeManual,  int editMagrebTimeManual,  int editIshaTimeManual,  int editMidNightTimeManual,  int editLast3thTimeTimeManual,  Duration timeZone,  MadhabState madhab,  PrayCalculationMethodState calculationMethod,  PrayHightLatitudeCaluclationState hightLatitudeCaluclation)  $default,) {final _that = this;
switch (_that) {
case _PrayCalculationSettingState():
return $default(_that.fajirTime,_that.sunriseTime,_that.duherTime,_that.asrTime,_that.megribTime,_that.ishaTime,_that.midleNighTime,_that.last3thTime,_that.applicationTime,_that.deviceTime,_that.buttonsStatus,_that.editFajirTimeManual,_that.editSunriseTimeManual,_that.editDuhirTimeManual,_that.editAsrTimeManual,_that.editMagrebTimeManual,_that.editIshaTimeManual,_that.editMidNightTimeManual,_that.editLast3thTimeTimeManual,_that.timeZone,_that.madhab,_that.calculationMethod,_that.hightLatitudeCaluclation);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime? fajirTime,  DateTime? sunriseTime,  DateTime? duherTime,  DateTime? asrTime,  DateTime? megribTime,  DateTime? ishaTime,  DateTime? midleNighTime,  DateTime? last3thTime,  DateTime? applicationTime,  DateTime? deviceTime,  bool buttonsStatus,  int editFajirTimeManual,  int editSunriseTimeManual,  int editDuhirTimeManual,  int editAsrTimeManual,  int editMagrebTimeManual,  int editIshaTimeManual,  int editMidNightTimeManual,  int editLast3thTimeTimeManual,  Duration timeZone,  MadhabState madhab,  PrayCalculationMethodState calculationMethod,  PrayHightLatitudeCaluclationState hightLatitudeCaluclation)?  $default,) {final _that = this;
switch (_that) {
case _PrayCalculationSettingState() when $default != null:
return $default(_that.fajirTime,_that.sunriseTime,_that.duherTime,_that.asrTime,_that.megribTime,_that.ishaTime,_that.midleNighTime,_that.last3thTime,_that.applicationTime,_that.deviceTime,_that.buttonsStatus,_that.editFajirTimeManual,_that.editSunriseTimeManual,_that.editDuhirTimeManual,_that.editAsrTimeManual,_that.editMagrebTimeManual,_that.editIshaTimeManual,_that.editMidNightTimeManual,_that.editLast3thTimeTimeManual,_that.timeZone,_that.madhab,_that.calculationMethod,_that.hightLatitudeCaluclation);case _:
  return null;

}
}

}

/// @nodoc


class _PrayCalculationSettingState implements PrayCalculationSettingState {
  const _PrayCalculationSettingState({this.fajirTime, this.sunriseTime, this.duherTime, this.asrTime, this.megribTime, this.ishaTime, this.midleNighTime, this.last3thTime, this.applicationTime, this.deviceTime, this.buttonsStatus = false, this.editFajirTimeManual = 0, this.editSunriseTimeManual = 0, this.editDuhirTimeManual = 0, this.editAsrTimeManual = 0, this.editMagrebTimeManual = 0, this.editIshaTimeManual = 0, this.editMidNightTimeManual = 0, this.editLast3thTimeTimeManual = 0, this.timeZone = const Duration(hours: 3), this.madhab = const MadhabState.hanafi(), this.calculationMethod = const PrayCalculationMethodState.jordanAwqaf(), this.hightLatitudeCaluclation = const PrayHightLatitudeCaluclationState.none()});
  

@override final  DateTime? fajirTime;
@override final  DateTime? sunriseTime;
@override final  DateTime? duherTime;
@override final  DateTime? asrTime;
@override final  DateTime? megribTime;
@override final  DateTime? ishaTime;
@override final  DateTime? midleNighTime;
@override final  DateTime? last3thTime;
@override final  DateTime? applicationTime;
@override final  DateTime? deviceTime;
@override@JsonKey() final  bool buttonsStatus;
@override@JsonKey() final  int editFajirTimeManual;
@override@JsonKey() final  int editSunriseTimeManual;
@override@JsonKey() final  int editDuhirTimeManual;
@override@JsonKey() final  int editAsrTimeManual;
@override@JsonKey() final  int editMagrebTimeManual;
@override@JsonKey() final  int editIshaTimeManual;
@override@JsonKey() final  int editMidNightTimeManual;
@override@JsonKey() final  int editLast3thTimeTimeManual;
@override@JsonKey() final  Duration timeZone;
@override@JsonKey() final  MadhabState madhab;
@override@JsonKey() final  PrayCalculationMethodState calculationMethod;
@override@JsonKey() final  PrayHightLatitudeCaluclationState hightLatitudeCaluclation;

/// Create a copy of PrayCalculationSettingState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PrayCalculationSettingStateCopyWith<_PrayCalculationSettingState> get copyWith => __$PrayCalculationSettingStateCopyWithImpl<_PrayCalculationSettingState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PrayCalculationSettingState&&(identical(other.fajirTime, fajirTime) || other.fajirTime == fajirTime)&&(identical(other.sunriseTime, sunriseTime) || other.sunriseTime == sunriseTime)&&(identical(other.duherTime, duherTime) || other.duherTime == duherTime)&&(identical(other.asrTime, asrTime) || other.asrTime == asrTime)&&(identical(other.megribTime, megribTime) || other.megribTime == megribTime)&&(identical(other.ishaTime, ishaTime) || other.ishaTime == ishaTime)&&(identical(other.midleNighTime, midleNighTime) || other.midleNighTime == midleNighTime)&&(identical(other.last3thTime, last3thTime) || other.last3thTime == last3thTime)&&(identical(other.applicationTime, applicationTime) || other.applicationTime == applicationTime)&&(identical(other.deviceTime, deviceTime) || other.deviceTime == deviceTime)&&(identical(other.buttonsStatus, buttonsStatus) || other.buttonsStatus == buttonsStatus)&&(identical(other.editFajirTimeManual, editFajirTimeManual) || other.editFajirTimeManual == editFajirTimeManual)&&(identical(other.editSunriseTimeManual, editSunriseTimeManual) || other.editSunriseTimeManual == editSunriseTimeManual)&&(identical(other.editDuhirTimeManual, editDuhirTimeManual) || other.editDuhirTimeManual == editDuhirTimeManual)&&(identical(other.editAsrTimeManual, editAsrTimeManual) || other.editAsrTimeManual == editAsrTimeManual)&&(identical(other.editMagrebTimeManual, editMagrebTimeManual) || other.editMagrebTimeManual == editMagrebTimeManual)&&(identical(other.editIshaTimeManual, editIshaTimeManual) || other.editIshaTimeManual == editIshaTimeManual)&&(identical(other.editMidNightTimeManual, editMidNightTimeManual) || other.editMidNightTimeManual == editMidNightTimeManual)&&(identical(other.editLast3thTimeTimeManual, editLast3thTimeTimeManual) || other.editLast3thTimeTimeManual == editLast3thTimeTimeManual)&&(identical(other.timeZone, timeZone) || other.timeZone == timeZone)&&(identical(other.madhab, madhab) || other.madhab == madhab)&&(identical(other.calculationMethod, calculationMethod) || other.calculationMethod == calculationMethod)&&(identical(other.hightLatitudeCaluclation, hightLatitudeCaluclation) || other.hightLatitudeCaluclation == hightLatitudeCaluclation));
}


@override
int get hashCode => Object.hashAll([runtimeType,fajirTime,sunriseTime,duherTime,asrTime,megribTime,ishaTime,midleNighTime,last3thTime,applicationTime,deviceTime,buttonsStatus,editFajirTimeManual,editSunriseTimeManual,editDuhirTimeManual,editAsrTimeManual,editMagrebTimeManual,editIshaTimeManual,editMidNightTimeManual,editLast3thTimeTimeManual,timeZone,madhab,calculationMethod,hightLatitudeCaluclation]);

@override
String toString() {
  return 'PrayCalculationSettingState(fajirTime: $fajirTime, sunriseTime: $sunriseTime, duherTime: $duherTime, asrTime: $asrTime, megribTime: $megribTime, ishaTime: $ishaTime, midleNighTime: $midleNighTime, last3thTime: $last3thTime, applicationTime: $applicationTime, deviceTime: $deviceTime, buttonsStatus: $buttonsStatus, editFajirTimeManual: $editFajirTimeManual, editSunriseTimeManual: $editSunriseTimeManual, editDuhirTimeManual: $editDuhirTimeManual, editAsrTimeManual: $editAsrTimeManual, editMagrebTimeManual: $editMagrebTimeManual, editIshaTimeManual: $editIshaTimeManual, editMidNightTimeManual: $editMidNightTimeManual, editLast3thTimeTimeManual: $editLast3thTimeTimeManual, timeZone: $timeZone, madhab: $madhab, calculationMethod: $calculationMethod, hightLatitudeCaluclation: $hightLatitudeCaluclation)';
}


}

/// @nodoc
abstract mixin class _$PrayCalculationSettingStateCopyWith<$Res> implements $PrayCalculationSettingStateCopyWith<$Res> {
  factory _$PrayCalculationSettingStateCopyWith(_PrayCalculationSettingState value, $Res Function(_PrayCalculationSettingState) _then) = __$PrayCalculationSettingStateCopyWithImpl;
@override @useResult
$Res call({
 DateTime? fajirTime, DateTime? sunriseTime, DateTime? duherTime, DateTime? asrTime, DateTime? megribTime, DateTime? ishaTime, DateTime? midleNighTime, DateTime? last3thTime, DateTime? applicationTime, DateTime? deviceTime, bool buttonsStatus, int editFajirTimeManual, int editSunriseTimeManual, int editDuhirTimeManual, int editAsrTimeManual, int editMagrebTimeManual, int editIshaTimeManual, int editMidNightTimeManual, int editLast3thTimeTimeManual, Duration timeZone, MadhabState madhab, PrayCalculationMethodState calculationMethod, PrayHightLatitudeCaluclationState hightLatitudeCaluclation
});


@override $MadhabStateCopyWith<$Res> get madhab;@override $PrayCalculationMethodStateCopyWith<$Res> get calculationMethod;@override $PrayHightLatitudeCaluclationStateCopyWith<$Res> get hightLatitudeCaluclation;

}
/// @nodoc
class __$PrayCalculationSettingStateCopyWithImpl<$Res>
    implements _$PrayCalculationSettingStateCopyWith<$Res> {
  __$PrayCalculationSettingStateCopyWithImpl(this._self, this._then);

  final _PrayCalculationSettingState _self;
  final $Res Function(_PrayCalculationSettingState) _then;

/// Create a copy of PrayCalculationSettingState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fajirTime = freezed,Object? sunriseTime = freezed,Object? duherTime = freezed,Object? asrTime = freezed,Object? megribTime = freezed,Object? ishaTime = freezed,Object? midleNighTime = freezed,Object? last3thTime = freezed,Object? applicationTime = freezed,Object? deviceTime = freezed,Object? buttonsStatus = null,Object? editFajirTimeManual = null,Object? editSunriseTimeManual = null,Object? editDuhirTimeManual = null,Object? editAsrTimeManual = null,Object? editMagrebTimeManual = null,Object? editIshaTimeManual = null,Object? editMidNightTimeManual = null,Object? editLast3thTimeTimeManual = null,Object? timeZone = null,Object? madhab = null,Object? calculationMethod = null,Object? hightLatitudeCaluclation = null,}) {
  return _then(_PrayCalculationSettingState(
fajirTime: freezed == fajirTime ? _self.fajirTime : fajirTime // ignore: cast_nullable_to_non_nullable
as DateTime?,sunriseTime: freezed == sunriseTime ? _self.sunriseTime : sunriseTime // ignore: cast_nullable_to_non_nullable
as DateTime?,duherTime: freezed == duherTime ? _self.duherTime : duherTime // ignore: cast_nullable_to_non_nullable
as DateTime?,asrTime: freezed == asrTime ? _self.asrTime : asrTime // ignore: cast_nullable_to_non_nullable
as DateTime?,megribTime: freezed == megribTime ? _self.megribTime : megribTime // ignore: cast_nullable_to_non_nullable
as DateTime?,ishaTime: freezed == ishaTime ? _self.ishaTime : ishaTime // ignore: cast_nullable_to_non_nullable
as DateTime?,midleNighTime: freezed == midleNighTime ? _self.midleNighTime : midleNighTime // ignore: cast_nullable_to_non_nullable
as DateTime?,last3thTime: freezed == last3thTime ? _self.last3thTime : last3thTime // ignore: cast_nullable_to_non_nullable
as DateTime?,applicationTime: freezed == applicationTime ? _self.applicationTime : applicationTime // ignore: cast_nullable_to_non_nullable
as DateTime?,deviceTime: freezed == deviceTime ? _self.deviceTime : deviceTime // ignore: cast_nullable_to_non_nullable
as DateTime?,buttonsStatus: null == buttonsStatus ? _self.buttonsStatus : buttonsStatus // ignore: cast_nullable_to_non_nullable
as bool,editFajirTimeManual: null == editFajirTimeManual ? _self.editFajirTimeManual : editFajirTimeManual // ignore: cast_nullable_to_non_nullable
as int,editSunriseTimeManual: null == editSunriseTimeManual ? _self.editSunriseTimeManual : editSunriseTimeManual // ignore: cast_nullable_to_non_nullable
as int,editDuhirTimeManual: null == editDuhirTimeManual ? _self.editDuhirTimeManual : editDuhirTimeManual // ignore: cast_nullable_to_non_nullable
as int,editAsrTimeManual: null == editAsrTimeManual ? _self.editAsrTimeManual : editAsrTimeManual // ignore: cast_nullable_to_non_nullable
as int,editMagrebTimeManual: null == editMagrebTimeManual ? _self.editMagrebTimeManual : editMagrebTimeManual // ignore: cast_nullable_to_non_nullable
as int,editIshaTimeManual: null == editIshaTimeManual ? _self.editIshaTimeManual : editIshaTimeManual // ignore: cast_nullable_to_non_nullable
as int,editMidNightTimeManual: null == editMidNightTimeManual ? _self.editMidNightTimeManual : editMidNightTimeManual // ignore: cast_nullable_to_non_nullable
as int,editLast3thTimeTimeManual: null == editLast3thTimeTimeManual ? _self.editLast3thTimeTimeManual : editLast3thTimeTimeManual // ignore: cast_nullable_to_non_nullable
as int,timeZone: null == timeZone ? _self.timeZone : timeZone // ignore: cast_nullable_to_non_nullable
as Duration,madhab: null == madhab ? _self.madhab : madhab // ignore: cast_nullable_to_non_nullable
as MadhabState,calculationMethod: null == calculationMethod ? _self.calculationMethod : calculationMethod // ignore: cast_nullable_to_non_nullable
as PrayCalculationMethodState,hightLatitudeCaluclation: null == hightLatitudeCaluclation ? _self.hightLatitudeCaluclation : hightLatitudeCaluclation // ignore: cast_nullable_to_non_nullable
as PrayHightLatitudeCaluclationState,
  ));
}

/// Create a copy of PrayCalculationSettingState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MadhabStateCopyWith<$Res> get madhab {
  
  return $MadhabStateCopyWith<$Res>(_self.madhab, (value) {
    return _then(_self.copyWith(madhab: value));
  });
}/// Create a copy of PrayCalculationSettingState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PrayCalculationMethodStateCopyWith<$Res> get calculationMethod {
  
  return $PrayCalculationMethodStateCopyWith<$Res>(_self.calculationMethod, (value) {
    return _then(_self.copyWith(calculationMethod: value));
  });
}/// Create a copy of PrayCalculationSettingState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PrayHightLatitudeCaluclationStateCopyWith<$Res> get hightLatitudeCaluclation {
  
  return $PrayHightLatitudeCaluclationStateCopyWith<$Res>(_self.hightLatitudeCaluclation, (value) {
    return _then(_self.copyWith(hightLatitudeCaluclation: value));
  });
}
}

// dart format on
