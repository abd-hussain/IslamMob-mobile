// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'azkar_after_salah_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AzkarAfterSalahEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AzkarAfterSalahEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AzkarAfterSalahEvent()';
}


}

/// @nodoc
class $AzkarAfterSalahEventCopyWith<$Res>  {
$AzkarAfterSalahEventCopyWith(AzkarAfterSalahEvent _, $Res Function(AzkarAfterSalahEvent) __);
}


/// Adds pattern-matching-related methods to [AzkarAfterSalahEvent].
extension AzkarAfterSalahEventPatterns on AzkarAfterSalahEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _FillInitialValue value)?  fillInitialValue,TResult Function( _ResetCounter value)?  resetCounter,TResult Function( _IncrementCounter value)?  incrementCounter,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FillInitialValue() when fillInitialValue != null:
return fillInitialValue(_that);case _ResetCounter() when resetCounter != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _FillInitialValue value)  fillInitialValue,required TResult Function( _ResetCounter value)  resetCounter,required TResult Function( _IncrementCounter value)  incrementCounter,}){
final _that = this;
switch (_that) {
case _FillInitialValue():
return fillInitialValue(_that);case _ResetCounter():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _FillInitialValue value)?  fillInitialValue,TResult? Function( _ResetCounter value)?  resetCounter,TResult? Function( _IncrementCounter value)?  incrementCounter,}){
final _that = this;
switch (_that) {
case _FillInitialValue() when fillInitialValue != null:
return fillInitialValue(_that);case _ResetCounter() when resetCounter != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( AzkarSalahTimeState state)?  fillInitialValue,TResult Function()?  resetCounter,TResult Function( AzkarModel item)?  incrementCounter,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FillInitialValue() when fillInitialValue != null:
return fillInitialValue(_that.state);case _ResetCounter() when resetCounter != null:
return resetCounter();case _IncrementCounter() when incrementCounter != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( AzkarSalahTimeState state)  fillInitialValue,required TResult Function()  resetCounter,required TResult Function( AzkarModel item)  incrementCounter,}) {final _that = this;
switch (_that) {
case _FillInitialValue():
return fillInitialValue(_that.state);case _ResetCounter():
return resetCounter();case _IncrementCounter():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( AzkarSalahTimeState state)?  fillInitialValue,TResult? Function()?  resetCounter,TResult? Function( AzkarModel item)?  incrementCounter,}) {final _that = this;
switch (_that) {
case _FillInitialValue() when fillInitialValue != null:
return fillInitialValue(_that.state);case _ResetCounter() when resetCounter != null:
return resetCounter();case _IncrementCounter() when incrementCounter != null:
return incrementCounter(_that.item);case _:
  return null;

}
}

}

/// @nodoc


class _FillInitialValue implements AzkarAfterSalahEvent {
  const _FillInitialValue({required this.state});
  

 final  AzkarSalahTimeState state;

/// Create a copy of AzkarAfterSalahEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FillInitialValueCopyWith<_FillInitialValue> get copyWith => __$FillInitialValueCopyWithImpl<_FillInitialValue>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FillInitialValue&&(identical(other.state, state) || other.state == state));
}


@override
int get hashCode => Object.hash(runtimeType,state);

@override
String toString() {
  return 'AzkarAfterSalahEvent.fillInitialValue(state: $state)';
}


}

/// @nodoc
abstract mixin class _$FillInitialValueCopyWith<$Res> implements $AzkarAfterSalahEventCopyWith<$Res> {
  factory _$FillInitialValueCopyWith(_FillInitialValue value, $Res Function(_FillInitialValue) _then) = __$FillInitialValueCopyWithImpl;
@useResult
$Res call({
 AzkarSalahTimeState state
});


$AzkarSalahTimeStateCopyWith<$Res> get state;

}
/// @nodoc
class __$FillInitialValueCopyWithImpl<$Res>
    implements _$FillInitialValueCopyWith<$Res> {
  __$FillInitialValueCopyWithImpl(this._self, this._then);

  final _FillInitialValue _self;
  final $Res Function(_FillInitialValue) _then;

/// Create a copy of AzkarAfterSalahEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? state = null,}) {
  return _then(_FillInitialValue(
state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as AzkarSalahTimeState,
  ));
}

/// Create a copy of AzkarAfterSalahEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AzkarSalahTimeStateCopyWith<$Res> get state {
  
  return $AzkarSalahTimeStateCopyWith<$Res>(_self.state, (value) {
    return _then(_self.copyWith(state: value));
  });
}
}

/// @nodoc


class _ResetCounter implements AzkarAfterSalahEvent {
  const _ResetCounter();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResetCounter);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AzkarAfterSalahEvent.resetCounter()';
}


}




/// @nodoc


class _IncrementCounter implements AzkarAfterSalahEvent {
  const _IncrementCounter(this.item);
  

 final  AzkarModel item;

/// Create a copy of AzkarAfterSalahEvent
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
  return 'AzkarAfterSalahEvent.incrementCounter(item: $item)';
}


}

/// @nodoc
abstract mixin class _$IncrementCounterCopyWith<$Res> implements $AzkarAfterSalahEventCopyWith<$Res> {
  factory _$IncrementCounterCopyWith(_IncrementCounter value, $Res Function(_IncrementCounter) _then) = __$IncrementCounterCopyWithImpl;
@useResult
$Res call({
 AzkarModel item
});




}
/// @nodoc
class __$IncrementCounterCopyWithImpl<$Res>
    implements _$IncrementCounterCopyWith<$Res> {
  __$IncrementCounterCopyWithImpl(this._self, this._then);

  final _IncrementCounter _self;
  final $Res Function(_IncrementCounter) _then;

/// Create a copy of AzkarAfterSalahEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? item = null,}) {
  return _then(_IncrementCounter(
null == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as AzkarModel,
  ));
}


}

/// @nodoc
mixin _$AzkarAfterSalahState {

 List<AzkarModel> get azkarList; bool get showAzkarView;
/// Create a copy of AzkarAfterSalahState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AzkarAfterSalahStateCopyWith<AzkarAfterSalahState> get copyWith => _$AzkarAfterSalahStateCopyWithImpl<AzkarAfterSalahState>(this as AzkarAfterSalahState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AzkarAfterSalahState&&const DeepCollectionEquality().equals(other.azkarList, azkarList)&&(identical(other.showAzkarView, showAzkarView) || other.showAzkarView == showAzkarView));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(azkarList),showAzkarView);

@override
String toString() {
  return 'AzkarAfterSalahState(azkarList: $azkarList, showAzkarView: $showAzkarView)';
}


}

/// @nodoc
abstract mixin class $AzkarAfterSalahStateCopyWith<$Res>  {
  factory $AzkarAfterSalahStateCopyWith(AzkarAfterSalahState value, $Res Function(AzkarAfterSalahState) _then) = _$AzkarAfterSalahStateCopyWithImpl;
@useResult
$Res call({
 List<AzkarModel> azkarList, bool showAzkarView
});




}
/// @nodoc
class _$AzkarAfterSalahStateCopyWithImpl<$Res>
    implements $AzkarAfterSalahStateCopyWith<$Res> {
  _$AzkarAfterSalahStateCopyWithImpl(this._self, this._then);

  final AzkarAfterSalahState _self;
  final $Res Function(AzkarAfterSalahState) _then;

/// Create a copy of AzkarAfterSalahState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? azkarList = null,Object? showAzkarView = null,}) {
  return _then(_self.copyWith(
azkarList: null == azkarList ? _self.azkarList : azkarList // ignore: cast_nullable_to_non_nullable
as List<AzkarModel>,showAzkarView: null == showAzkarView ? _self.showAzkarView : showAzkarView // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AzkarAfterSalahState].
extension AzkarAfterSalahStatePatterns on AzkarAfterSalahState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AzkarAfterSalahState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AzkarAfterSalahState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AzkarAfterSalahState value)  $default,){
final _that = this;
switch (_that) {
case _AzkarAfterSalahState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AzkarAfterSalahState value)?  $default,){
final _that = this;
switch (_that) {
case _AzkarAfterSalahState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<AzkarModel> azkarList,  bool showAzkarView)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AzkarAfterSalahState() when $default != null:
return $default(_that.azkarList,_that.showAzkarView);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<AzkarModel> azkarList,  bool showAzkarView)  $default,) {final _that = this;
switch (_that) {
case _AzkarAfterSalahState():
return $default(_that.azkarList,_that.showAzkarView);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<AzkarModel> azkarList,  bool showAzkarView)?  $default,) {final _that = this;
switch (_that) {
case _AzkarAfterSalahState() when $default != null:
return $default(_that.azkarList,_that.showAzkarView);case _:
  return null;

}
}

}

/// @nodoc


class _AzkarAfterSalahState implements AzkarAfterSalahState {
  const _AzkarAfterSalahState({final  List<AzkarModel> azkarList = const [], this.showAzkarView = false}): _azkarList = azkarList;
  

 final  List<AzkarModel> _azkarList;
@override@JsonKey() List<AzkarModel> get azkarList {
  if (_azkarList is EqualUnmodifiableListView) return _azkarList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_azkarList);
}

@override@JsonKey() final  bool showAzkarView;

/// Create a copy of AzkarAfterSalahState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AzkarAfterSalahStateCopyWith<_AzkarAfterSalahState> get copyWith => __$AzkarAfterSalahStateCopyWithImpl<_AzkarAfterSalahState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AzkarAfterSalahState&&const DeepCollectionEquality().equals(other._azkarList, _azkarList)&&(identical(other.showAzkarView, showAzkarView) || other.showAzkarView == showAzkarView));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_azkarList),showAzkarView);

@override
String toString() {
  return 'AzkarAfterSalahState(azkarList: $azkarList, showAzkarView: $showAzkarView)';
}


}

/// @nodoc
abstract mixin class _$AzkarAfterSalahStateCopyWith<$Res> implements $AzkarAfterSalahStateCopyWith<$Res> {
  factory _$AzkarAfterSalahStateCopyWith(_AzkarAfterSalahState value, $Res Function(_AzkarAfterSalahState) _then) = __$AzkarAfterSalahStateCopyWithImpl;
@override @useResult
$Res call({
 List<AzkarModel> azkarList, bool showAzkarView
});




}
/// @nodoc
class __$AzkarAfterSalahStateCopyWithImpl<$Res>
    implements _$AzkarAfterSalahStateCopyWith<$Res> {
  __$AzkarAfterSalahStateCopyWithImpl(this._self, this._then);

  final _AzkarAfterSalahState _self;
  final $Res Function(_AzkarAfterSalahState) _then;

/// Create a copy of AzkarAfterSalahState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? azkarList = null,Object? showAzkarView = null,}) {
  return _then(_AzkarAfterSalahState(
azkarList: null == azkarList ? _self._azkarList : azkarList // ignore: cast_nullable_to_non_nullable
as List<AzkarModel>,showAzkarView: null == showAzkarView ? _self.showAzkarView : showAzkarView // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
