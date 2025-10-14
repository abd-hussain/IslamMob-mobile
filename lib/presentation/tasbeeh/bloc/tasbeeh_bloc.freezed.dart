// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tasbeeh_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TasbeehEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TasbeehEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TasbeehEvent()';
}


}

/// @nodoc
class $TasbeehEventCopyWith<$Res>  {
$TasbeehEventCopyWith(TasbeehEvent _, $Res Function(TasbeehEvent) __);
}


/// Adds pattern-matching-related methods to [TasbeehEvent].
extension TasbeehEventPatterns on TasbeehEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _FillInitialValue value)?  fillInitialValue,TResult Function( _SoundSetting value)?  soundSetting,TResult Function( _VibrationSetting value)?  vibrationSetting,TResult Function( _LeftZikerSelected value)?  leftZikerSelected,TResult Function( _RightZikerEnabled value)?  rightZikerEnabled,TResult Function( _ResetCounter value)?  resetCounter,TResult Function( _IncrementCounter value)?  incrementCounter,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FillInitialValue() when fillInitialValue != null:
return fillInitialValue(_that);case _SoundSetting() when soundSetting != null:
return soundSetting(_that);case _VibrationSetting() when vibrationSetting != null:
return vibrationSetting(_that);case _LeftZikerSelected() when leftZikerSelected != null:
return leftZikerSelected(_that);case _RightZikerEnabled() when rightZikerEnabled != null:
return rightZikerEnabled(_that);case _ResetCounter() when resetCounter != null:
return resetCounter(_that);case _IncrementCounter() when incrementCounter != null:
return incrementCounter(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _FillInitialValue value)  fillInitialValue,required TResult Function( _SoundSetting value)  soundSetting,required TResult Function( _VibrationSetting value)  vibrationSetting,required TResult Function( _LeftZikerSelected value)  leftZikerSelected,required TResult Function( _RightZikerEnabled value)  rightZikerEnabled,required TResult Function( _ResetCounter value)  resetCounter,required TResult Function( _IncrementCounter value)  incrementCounter,}){
final _that = this;
switch (_that) {
case _FillInitialValue():
return fillInitialValue(_that);case _SoundSetting():
return soundSetting(_that);case _VibrationSetting():
return vibrationSetting(_that);case _LeftZikerSelected():
return leftZikerSelected(_that);case _RightZikerEnabled():
return rightZikerEnabled(_that);case _ResetCounter():
return resetCounter(_that);case _IncrementCounter():
return incrementCounter(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _FillInitialValue value)?  fillInitialValue,TResult? Function( _SoundSetting value)?  soundSetting,TResult? Function( _VibrationSetting value)?  vibrationSetting,TResult? Function( _LeftZikerSelected value)?  leftZikerSelected,TResult? Function( _RightZikerEnabled value)?  rightZikerEnabled,TResult? Function( _ResetCounter value)?  resetCounter,TResult? Function( _IncrementCounter value)?  incrementCounter,}){
final _that = this;
switch (_that) {
case _FillInitialValue() when fillInitialValue != null:
return fillInitialValue(_that);case _SoundSetting() when soundSetting != null:
return soundSetting(_that);case _VibrationSetting() when vibrationSetting != null:
return vibrationSetting(_that);case _LeftZikerSelected() when leftZikerSelected != null:
return leftZikerSelected(_that);case _RightZikerEnabled() when rightZikerEnabled != null:
return rightZikerEnabled(_that);case _ResetCounter() when resetCounter != null:
return resetCounter(_that);case _IncrementCounter() when incrementCounter != null:
return incrementCounter(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  fillInitialValue,TResult Function()?  soundSetting,TResult Function()?  vibrationSetting,TResult Function()?  leftZikerSelected,TResult Function()?  rightZikerEnabled,TResult Function( TasbeehModel item)?  resetCounter,TResult Function( TasbeehModel item)?  incrementCounter,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FillInitialValue() when fillInitialValue != null:
return fillInitialValue();case _SoundSetting() when soundSetting != null:
return soundSetting();case _VibrationSetting() when vibrationSetting != null:
return vibrationSetting();case _LeftZikerSelected() when leftZikerSelected != null:
return leftZikerSelected();case _RightZikerEnabled() when rightZikerEnabled != null:
return rightZikerEnabled();case _ResetCounter() when resetCounter != null:
return resetCounter(_that.item);case _IncrementCounter() when incrementCounter != null:
return incrementCounter(_that.item);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  fillInitialValue,required TResult Function()  soundSetting,required TResult Function()  vibrationSetting,required TResult Function()  leftZikerSelected,required TResult Function()  rightZikerEnabled,required TResult Function( TasbeehModel item)  resetCounter,required TResult Function( TasbeehModel item)  incrementCounter,}) {final _that = this;
switch (_that) {
case _FillInitialValue():
return fillInitialValue();case _SoundSetting():
return soundSetting();case _VibrationSetting():
return vibrationSetting();case _LeftZikerSelected():
return leftZikerSelected();case _RightZikerEnabled():
return rightZikerEnabled();case _ResetCounter():
return resetCounter(_that.item);case _IncrementCounter():
return incrementCounter(_that.item);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  fillInitialValue,TResult? Function()?  soundSetting,TResult? Function()?  vibrationSetting,TResult? Function()?  leftZikerSelected,TResult? Function()?  rightZikerEnabled,TResult? Function( TasbeehModel item)?  resetCounter,TResult? Function( TasbeehModel item)?  incrementCounter,}) {final _that = this;
switch (_that) {
case _FillInitialValue() when fillInitialValue != null:
return fillInitialValue();case _SoundSetting() when soundSetting != null:
return soundSetting();case _VibrationSetting() when vibrationSetting != null:
return vibrationSetting();case _LeftZikerSelected() when leftZikerSelected != null:
return leftZikerSelected();case _RightZikerEnabled() when rightZikerEnabled != null:
return rightZikerEnabled();case _ResetCounter() when resetCounter != null:
return resetCounter(_that.item);case _IncrementCounter() when incrementCounter != null:
return incrementCounter(_that.item);case _:
  return null;

}
}

}

/// @nodoc


class _FillInitialValue implements TasbeehEvent {
  const _FillInitialValue();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FillInitialValue);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TasbeehEvent.fillInitialValue()';
}


}




/// @nodoc


class _SoundSetting implements TasbeehEvent {
  const _SoundSetting();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SoundSetting);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TasbeehEvent.soundSetting()';
}


}




/// @nodoc


class _VibrationSetting implements TasbeehEvent {
  const _VibrationSetting();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VibrationSetting);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TasbeehEvent.vibrationSetting()';
}


}




/// @nodoc


class _LeftZikerSelected implements TasbeehEvent {
  const _LeftZikerSelected();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LeftZikerSelected);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TasbeehEvent.leftZikerSelected()';
}


}




/// @nodoc


class _RightZikerEnabled implements TasbeehEvent {
  const _RightZikerEnabled();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RightZikerEnabled);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TasbeehEvent.rightZikerEnabled()';
}


}




/// @nodoc


class _ResetCounter implements TasbeehEvent {
  const _ResetCounter(this.item);
  

 final  TasbeehModel item;

/// Create a copy of TasbeehEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResetCounterCopyWith<_ResetCounter> get copyWith => __$ResetCounterCopyWithImpl<_ResetCounter>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResetCounter&&(identical(other.item, item) || other.item == item));
}


@override
int get hashCode => Object.hash(runtimeType,item);

@override
String toString() {
  return 'TasbeehEvent.resetCounter(item: $item)';
}


}

/// @nodoc
abstract mixin class _$ResetCounterCopyWith<$Res> implements $TasbeehEventCopyWith<$Res> {
  factory _$ResetCounterCopyWith(_ResetCounter value, $Res Function(_ResetCounter) _then) = __$ResetCounterCopyWithImpl;
@useResult
$Res call({
 TasbeehModel item
});


$TasbeehModelCopyWith<$Res> get item;

}
/// @nodoc
class __$ResetCounterCopyWithImpl<$Res>
    implements _$ResetCounterCopyWith<$Res> {
  __$ResetCounterCopyWithImpl(this._self, this._then);

  final _ResetCounter _self;
  final $Res Function(_ResetCounter) _then;

/// Create a copy of TasbeehEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? item = null,}) {
  return _then(_ResetCounter(
null == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as TasbeehModel,
  ));
}

/// Create a copy of TasbeehEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TasbeehModelCopyWith<$Res> get item {
  
  return $TasbeehModelCopyWith<$Res>(_self.item, (value) {
    return _then(_self.copyWith(item: value));
  });
}
}

/// @nodoc


class _IncrementCounter implements TasbeehEvent {
  const _IncrementCounter(this.item);
  

 final  TasbeehModel item;

/// Create a copy of TasbeehEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IncrementCounterCopyWith<_IncrementCounter> get copyWith => __$IncrementCounterCopyWithImpl<_IncrementCounter>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IncrementCounter&&(identical(other.item, item) || other.item == item));
}


@override
int get hashCode => Object.hash(runtimeType,item);

@override
String toString() {
  return 'TasbeehEvent.incrementCounter(item: $item)';
}


}

/// @nodoc
abstract mixin class _$IncrementCounterCopyWith<$Res> implements $TasbeehEventCopyWith<$Res> {
  factory _$IncrementCounterCopyWith(_IncrementCounter value, $Res Function(_IncrementCounter) _then) = __$IncrementCounterCopyWithImpl;
@useResult
$Res call({
 TasbeehModel item
});


$TasbeehModelCopyWith<$Res> get item;

}
/// @nodoc
class __$IncrementCounterCopyWithImpl<$Res>
    implements _$IncrementCounterCopyWith<$Res> {
  __$IncrementCounterCopyWithImpl(this._self, this._then);

  final _IncrementCounter _self;
  final $Res Function(_IncrementCounter) _then;

/// Create a copy of TasbeehEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? item = null,}) {
  return _then(_IncrementCounter(
null == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as TasbeehModel,
  ));
}

/// Create a copy of TasbeehEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TasbeehModelCopyWith<$Res> get item {
  
  return $TasbeehModelCopyWith<$Res>(_self.item, (value) {
    return _then(_self.copyWith(item: value));
  });
}
}

/// @nodoc
mixin _$TasbeehState {

 bool get allowSound; bool get allowVibration; List<TasbeehModel> get list; int get selectedListIndex;
/// Create a copy of TasbeehState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TasbeehStateCopyWith<TasbeehState> get copyWith => _$TasbeehStateCopyWithImpl<TasbeehState>(this as TasbeehState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TasbeehState&&(identical(other.allowSound, allowSound) || other.allowSound == allowSound)&&(identical(other.allowVibration, allowVibration) || other.allowVibration == allowVibration)&&const DeepCollectionEquality().equals(other.list, list)&&(identical(other.selectedListIndex, selectedListIndex) || other.selectedListIndex == selectedListIndex));
}


@override
int get hashCode => Object.hash(runtimeType,allowSound,allowVibration,const DeepCollectionEquality().hash(list),selectedListIndex);

@override
String toString() {
  return 'TasbeehState(allowSound: $allowSound, allowVibration: $allowVibration, list: $list, selectedListIndex: $selectedListIndex)';
}


}

/// @nodoc
abstract mixin class $TasbeehStateCopyWith<$Res>  {
  factory $TasbeehStateCopyWith(TasbeehState value, $Res Function(TasbeehState) _then) = _$TasbeehStateCopyWithImpl;
@useResult
$Res call({
 bool allowSound, bool allowVibration, List<TasbeehModel> list, int selectedListIndex
});




}
/// @nodoc
class _$TasbeehStateCopyWithImpl<$Res>
    implements $TasbeehStateCopyWith<$Res> {
  _$TasbeehStateCopyWithImpl(this._self, this._then);

  final TasbeehState _self;
  final $Res Function(TasbeehState) _then;

/// Create a copy of TasbeehState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? allowSound = null,Object? allowVibration = null,Object? list = null,Object? selectedListIndex = null,}) {
  return _then(_self.copyWith(
allowSound: null == allowSound ? _self.allowSound : allowSound // ignore: cast_nullable_to_non_nullable
as bool,allowVibration: null == allowVibration ? _self.allowVibration : allowVibration // ignore: cast_nullable_to_non_nullable
as bool,list: null == list ? _self.list : list // ignore: cast_nullable_to_non_nullable
as List<TasbeehModel>,selectedListIndex: null == selectedListIndex ? _self.selectedListIndex : selectedListIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [TasbeehState].
extension TasbeehStatePatterns on TasbeehState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TasbeehState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TasbeehState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TasbeehState value)  $default,){
final _that = this;
switch (_that) {
case _TasbeehState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TasbeehState value)?  $default,){
final _that = this;
switch (_that) {
case _TasbeehState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool allowSound,  bool allowVibration,  List<TasbeehModel> list,  int selectedListIndex)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TasbeehState() when $default != null:
return $default(_that.allowSound,_that.allowVibration,_that.list,_that.selectedListIndex);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool allowSound,  bool allowVibration,  List<TasbeehModel> list,  int selectedListIndex)  $default,) {final _that = this;
switch (_that) {
case _TasbeehState():
return $default(_that.allowSound,_that.allowVibration,_that.list,_that.selectedListIndex);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool allowSound,  bool allowVibration,  List<TasbeehModel> list,  int selectedListIndex)?  $default,) {final _that = this;
switch (_that) {
case _TasbeehState() when $default != null:
return $default(_that.allowSound,_that.allowVibration,_that.list,_that.selectedListIndex);case _:
  return null;

}
}

}

/// @nodoc


class _TasbeehState implements TasbeehState {
  const _TasbeehState({this.allowSound = true, this.allowVibration = true, final  List<TasbeehModel> list = const [], this.selectedListIndex = 0}): _list = list;
  

@override@JsonKey() final  bool allowSound;
@override@JsonKey() final  bool allowVibration;
 final  List<TasbeehModel> _list;
@override@JsonKey() List<TasbeehModel> get list {
  if (_list is EqualUnmodifiableListView) return _list;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_list);
}

@override@JsonKey() final  int selectedListIndex;

/// Create a copy of TasbeehState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TasbeehStateCopyWith<_TasbeehState> get copyWith => __$TasbeehStateCopyWithImpl<_TasbeehState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TasbeehState&&(identical(other.allowSound, allowSound) || other.allowSound == allowSound)&&(identical(other.allowVibration, allowVibration) || other.allowVibration == allowVibration)&&const DeepCollectionEquality().equals(other._list, _list)&&(identical(other.selectedListIndex, selectedListIndex) || other.selectedListIndex == selectedListIndex));
}


@override
int get hashCode => Object.hash(runtimeType,allowSound,allowVibration,const DeepCollectionEquality().hash(_list),selectedListIndex);

@override
String toString() {
  return 'TasbeehState(allowSound: $allowSound, allowVibration: $allowVibration, list: $list, selectedListIndex: $selectedListIndex)';
}


}

/// @nodoc
abstract mixin class _$TasbeehStateCopyWith<$Res> implements $TasbeehStateCopyWith<$Res> {
  factory _$TasbeehStateCopyWith(_TasbeehState value, $Res Function(_TasbeehState) _then) = __$TasbeehStateCopyWithImpl;
@override @useResult
$Res call({
 bool allowSound, bool allowVibration, List<TasbeehModel> list, int selectedListIndex
});




}
/// @nodoc
class __$TasbeehStateCopyWithImpl<$Res>
    implements _$TasbeehStateCopyWith<$Res> {
  __$TasbeehStateCopyWithImpl(this._self, this._then);

  final _TasbeehState _self;
  final $Res Function(_TasbeehState) _then;

/// Create a copy of TasbeehState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? allowSound = null,Object? allowVibration = null,Object? list = null,Object? selectedListIndex = null,}) {
  return _then(_TasbeehState(
allowSound: null == allowSound ? _self.allowSound : allowSound // ignore: cast_nullable_to_non_nullable
as bool,allowVibration: null == allowVibration ? _self.allowVibration : allowVibration // ignore: cast_nullable_to_non_nullable
as bool,list: null == list ? _self._list : list // ignore: cast_nullable_to_non_nullable
as List<TasbeehModel>,selectedListIndex: null == selectedListIndex ? _self.selectedListIndex : selectedListIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
