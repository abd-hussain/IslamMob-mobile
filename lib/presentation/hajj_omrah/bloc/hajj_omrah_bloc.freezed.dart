// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hajj_omrah_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HajjOmrahEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HajjOmrahEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HajjOmrahEvent()';
}


}

/// @nodoc
class $HajjOmrahEventCopyWith<$Res>  {
$HajjOmrahEventCopyWith(HajjOmrahEvent _, $Res Function(HajjOmrahEvent) __);
}


/// Adds pattern-matching-related methods to [HajjOmrahEvent].
extension HajjOmrahEventPatterns on HajjOmrahEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _FillInitialValue value)?  fillInitialValue,TResult Function( _LoadingState value)?  loadingState,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FillInitialValue() when fillInitialValue != null:
return fillInitialValue(_that);case _LoadingState() when loadingState != null:
return loadingState(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _FillInitialValue value)  fillInitialValue,required TResult Function( _LoadingState value)  loadingState,}){
final _that = this;
switch (_that) {
case _FillInitialValue():
return fillInitialValue(_that);case _LoadingState():
return loadingState(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _FillInitialValue value)?  fillInitialValue,TResult? Function( _LoadingState value)?  loadingState,}){
final _that = this;
switch (_that) {
case _FillInitialValue() when fillInitialValue != null:
return fillInitialValue(_that);case _LoadingState() when loadingState != null:
return loadingState(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( HajjOmrahScreenType screenType)?  fillInitialValue,TResult Function( VideoProcessState state)?  loadingState,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FillInitialValue() when fillInitialValue != null:
return fillInitialValue(_that.screenType);case _LoadingState() when loadingState != null:
return loadingState(_that.state);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( HajjOmrahScreenType screenType)  fillInitialValue,required TResult Function( VideoProcessState state)  loadingState,}) {final _that = this;
switch (_that) {
case _FillInitialValue():
return fillInitialValue(_that.screenType);case _LoadingState():
return loadingState(_that.state);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( HajjOmrahScreenType screenType)?  fillInitialValue,TResult? Function( VideoProcessState state)?  loadingState,}) {final _that = this;
switch (_that) {
case _FillInitialValue() when fillInitialValue != null:
return fillInitialValue(_that.screenType);case _LoadingState() when loadingState != null:
return loadingState(_that.state);case _:
  return null;

}
}

}

/// @nodoc


class _FillInitialValue implements HajjOmrahEvent {
  const _FillInitialValue(this.screenType);
  

 final  HajjOmrahScreenType screenType;

/// Create a copy of HajjOmrahEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FillInitialValueCopyWith<_FillInitialValue> get copyWith => __$FillInitialValueCopyWithImpl<_FillInitialValue>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FillInitialValue&&(identical(other.screenType, screenType) || other.screenType == screenType));
}


@override
int get hashCode => Object.hash(runtimeType,screenType);

@override
String toString() {
  return 'HajjOmrahEvent.fillInitialValue(screenType: $screenType)';
}


}

/// @nodoc
abstract mixin class _$FillInitialValueCopyWith<$Res> implements $HajjOmrahEventCopyWith<$Res> {
  factory _$FillInitialValueCopyWith(_FillInitialValue value, $Res Function(_FillInitialValue) _then) = __$FillInitialValueCopyWithImpl;
@useResult
$Res call({
 HajjOmrahScreenType screenType
});


$HajjOmrahScreenTypeCopyWith<$Res> get screenType;

}
/// @nodoc
class __$FillInitialValueCopyWithImpl<$Res>
    implements _$FillInitialValueCopyWith<$Res> {
  __$FillInitialValueCopyWithImpl(this._self, this._then);

  final _FillInitialValue _self;
  final $Res Function(_FillInitialValue) _then;

/// Create a copy of HajjOmrahEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? screenType = null,}) {
  return _then(_FillInitialValue(
null == screenType ? _self.screenType : screenType // ignore: cast_nullable_to_non_nullable
as HajjOmrahScreenType,
  ));
}

/// Create a copy of HajjOmrahEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HajjOmrahScreenTypeCopyWith<$Res> get screenType {
  
  return $HajjOmrahScreenTypeCopyWith<$Res>(_self.screenType, (value) {
    return _then(_self.copyWith(screenType: value));
  });
}
}

/// @nodoc


class _LoadingState implements HajjOmrahEvent {
  const _LoadingState(this.state);
  

 final  VideoProcessState state;

/// Create a copy of HajjOmrahEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadingStateCopyWith<_LoadingState> get copyWith => __$LoadingStateCopyWithImpl<_LoadingState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadingState&&(identical(other.state, state) || other.state == state));
}


@override
int get hashCode => Object.hash(runtimeType,state);

@override
String toString() {
  return 'HajjOmrahEvent.loadingState(state: $state)';
}


}

/// @nodoc
abstract mixin class _$LoadingStateCopyWith<$Res> implements $HajjOmrahEventCopyWith<$Res> {
  factory _$LoadingStateCopyWith(_LoadingState value, $Res Function(_LoadingState) _then) = __$LoadingStateCopyWithImpl;
@useResult
$Res call({
 VideoProcessState state
});


$VideoProcessStateCopyWith<$Res> get state;

}
/// @nodoc
class __$LoadingStateCopyWithImpl<$Res>
    implements _$LoadingStateCopyWith<$Res> {
  __$LoadingStateCopyWithImpl(this._self, this._then);

  final _LoadingState _self;
  final $Res Function(_LoadingState) _then;

/// Create a copy of HajjOmrahEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? state = null,}) {
  return _then(_LoadingState(
null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as VideoProcessState,
  ));
}

/// Create a copy of HajjOmrahEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VideoProcessStateCopyWith<$Res> get state {
  
  return $VideoProcessStateCopyWith<$Res>(_self.state, (value) {
    return _then(_self.copyWith(state: value));
  });
}
}

/// @nodoc
mixin _$HajjOmrahState {

 List<HajjOmrahData> get listOfItems; bool get isRtlLanguage; VideoProcessState get processState;
/// Create a copy of HajjOmrahState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HajjOmrahStateCopyWith<HajjOmrahState> get copyWith => _$HajjOmrahStateCopyWithImpl<HajjOmrahState>(this as HajjOmrahState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HajjOmrahState&&const DeepCollectionEquality().equals(other.listOfItems, listOfItems)&&(identical(other.isRtlLanguage, isRtlLanguage) || other.isRtlLanguage == isRtlLanguage)&&(identical(other.processState, processState) || other.processState == processState));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(listOfItems),isRtlLanguage,processState);

@override
String toString() {
  return 'HajjOmrahState(listOfItems: $listOfItems, isRtlLanguage: $isRtlLanguage, processState: $processState)';
}


}

/// @nodoc
abstract mixin class $HajjOmrahStateCopyWith<$Res>  {
  factory $HajjOmrahStateCopyWith(HajjOmrahState value, $Res Function(HajjOmrahState) _then) = _$HajjOmrahStateCopyWithImpl;
@useResult
$Res call({
 List<HajjOmrahData> listOfItems, bool isRtlLanguage, VideoProcessState processState
});


$VideoProcessStateCopyWith<$Res> get processState;

}
/// @nodoc
class _$HajjOmrahStateCopyWithImpl<$Res>
    implements $HajjOmrahStateCopyWith<$Res> {
  _$HajjOmrahStateCopyWithImpl(this._self, this._then);

  final HajjOmrahState _self;
  final $Res Function(HajjOmrahState) _then;

/// Create a copy of HajjOmrahState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? listOfItems = null,Object? isRtlLanguage = null,Object? processState = null,}) {
  return _then(_self.copyWith(
listOfItems: null == listOfItems ? _self.listOfItems : listOfItems // ignore: cast_nullable_to_non_nullable
as List<HajjOmrahData>,isRtlLanguage: null == isRtlLanguage ? _self.isRtlLanguage : isRtlLanguage // ignore: cast_nullable_to_non_nullable
as bool,processState: null == processState ? _self.processState : processState // ignore: cast_nullable_to_non_nullable
as VideoProcessState,
  ));
}
/// Create a copy of HajjOmrahState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VideoProcessStateCopyWith<$Res> get processState {
  
  return $VideoProcessStateCopyWith<$Res>(_self.processState, (value) {
    return _then(_self.copyWith(processState: value));
  });
}
}


/// Adds pattern-matching-related methods to [HajjOmrahState].
extension HajjOmrahStatePatterns on HajjOmrahState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HajjOmrahState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HajjOmrahState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HajjOmrahState value)  $default,){
final _that = this;
switch (_that) {
case _HajjOmrahState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HajjOmrahState value)?  $default,){
final _that = this;
switch (_that) {
case _HajjOmrahState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<HajjOmrahData> listOfItems,  bool isRtlLanguage,  VideoProcessState processState)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HajjOmrahState() when $default != null:
return $default(_that.listOfItems,_that.isRtlLanguage,_that.processState);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<HajjOmrahData> listOfItems,  bool isRtlLanguage,  VideoProcessState processState)  $default,) {final _that = this;
switch (_that) {
case _HajjOmrahState():
return $default(_that.listOfItems,_that.isRtlLanguage,_that.processState);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<HajjOmrahData> listOfItems,  bool isRtlLanguage,  VideoProcessState processState)?  $default,) {final _that = this;
switch (_that) {
case _HajjOmrahState() when $default != null:
return $default(_that.listOfItems,_that.isRtlLanguage,_that.processState);case _:
  return null;

}
}

}

/// @nodoc


class _HajjOmrahState implements HajjOmrahState {
  const _HajjOmrahState({final  List<HajjOmrahData> listOfItems = const [], this.isRtlLanguage = false, this.processState = const VideoProcessState.loading()}): _listOfItems = listOfItems;
  

 final  List<HajjOmrahData> _listOfItems;
@override@JsonKey() List<HajjOmrahData> get listOfItems {
  if (_listOfItems is EqualUnmodifiableListView) return _listOfItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_listOfItems);
}

@override@JsonKey() final  bool isRtlLanguage;
@override@JsonKey() final  VideoProcessState processState;

/// Create a copy of HajjOmrahState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HajjOmrahStateCopyWith<_HajjOmrahState> get copyWith => __$HajjOmrahStateCopyWithImpl<_HajjOmrahState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HajjOmrahState&&const DeepCollectionEquality().equals(other._listOfItems, _listOfItems)&&(identical(other.isRtlLanguage, isRtlLanguage) || other.isRtlLanguage == isRtlLanguage)&&(identical(other.processState, processState) || other.processState == processState));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_listOfItems),isRtlLanguage,processState);

@override
String toString() {
  return 'HajjOmrahState(listOfItems: $listOfItems, isRtlLanguage: $isRtlLanguage, processState: $processState)';
}


}

/// @nodoc
abstract mixin class _$HajjOmrahStateCopyWith<$Res> implements $HajjOmrahStateCopyWith<$Res> {
  factory _$HajjOmrahStateCopyWith(_HajjOmrahState value, $Res Function(_HajjOmrahState) _then) = __$HajjOmrahStateCopyWithImpl;
@override @useResult
$Res call({
 List<HajjOmrahData> listOfItems, bool isRtlLanguage, VideoProcessState processState
});


@override $VideoProcessStateCopyWith<$Res> get processState;

}
/// @nodoc
class __$HajjOmrahStateCopyWithImpl<$Res>
    implements _$HajjOmrahStateCopyWith<$Res> {
  __$HajjOmrahStateCopyWithImpl(this._self, this._then);

  final _HajjOmrahState _self;
  final $Res Function(_HajjOmrahState) _then;

/// Create a copy of HajjOmrahState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? listOfItems = null,Object? isRtlLanguage = null,Object? processState = null,}) {
  return _then(_HajjOmrahState(
listOfItems: null == listOfItems ? _self._listOfItems : listOfItems // ignore: cast_nullable_to_non_nullable
as List<HajjOmrahData>,isRtlLanguage: null == isRtlLanguage ? _self.isRtlLanguage : isRtlLanguage // ignore: cast_nullable_to_non_nullable
as bool,processState: null == processState ? _self.processState : processState // ignore: cast_nullable_to_non_nullable
as VideoProcessState,
  ));
}

/// Create a copy of HajjOmrahState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VideoProcessStateCopyWith<$Res> get processState {
  
  return $VideoProcessStateCopyWith<$Res>(_self.processState, (value) {
    return _then(_self.copyWith(processState: value));
  });
}
}

/// @nodoc
mixin _$VideoProcessState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoProcessState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VideoProcessState()';
}


}

/// @nodoc
class $VideoProcessStateCopyWith<$Res>  {
$VideoProcessStateCopyWith(VideoProcessState _, $Res Function(VideoProcessState) __);
}


/// Adds pattern-matching-related methods to [VideoProcessState].
extension VideoProcessStatePatterns on VideoProcessState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Loading value)?  loading,TResult Function( _Success value)?  success,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading(_that);case _Success() when success != null:
return success(_that);case _Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Loading value)  loading,required TResult Function( _Success value)  success,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Loading():
return loading(_that);case _Success():
return success(_that);case _Error():
return error(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Loading value)?  loading,TResult? Function( _Success value)?  success,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading(_that);case _Success() when success != null:
return success(_that);case _Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function()?  success,TResult Function()?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading();case _Success() when success != null:
return success();case _Error() when error != null:
return error();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function()  success,required TResult Function()  error,}) {final _that = this;
switch (_that) {
case _Loading():
return loading();case _Success():
return success();case _Error():
return error();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function()?  success,TResult? Function()?  error,}) {final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading();case _Success() when success != null:
return success();case _Error() when error != null:
return error();case _:
  return null;

}
}

}

/// @nodoc


class _Loading implements VideoProcessState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VideoProcessState.loading()';
}


}




/// @nodoc


class _Success implements VideoProcessState {
  const _Success();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Success);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VideoProcessState.success()';
}


}




/// @nodoc


class _Error implements VideoProcessState {
  const _Error();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VideoProcessState.error()';
}


}




/// @nodoc
mixin _$HajjOmrahScreenType {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HajjOmrahScreenType);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HajjOmrahScreenType()';
}


}

/// @nodoc
class $HajjOmrahScreenTypeCopyWith<$Res>  {
$HajjOmrahScreenTypeCopyWith(HajjOmrahScreenType _, $Res Function(HajjOmrahScreenType) __);
}


/// Adds pattern-matching-related methods to [HajjOmrahScreenType].
extension HajjOmrahScreenTypePatterns on HajjOmrahScreenType {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Hajj value)?  hajj,TResult Function( _Omrah value)?  omrah,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Hajj() when hajj != null:
return hajj(_that);case _Omrah() when omrah != null:
return omrah(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Hajj value)  hajj,required TResult Function( _Omrah value)  omrah,}){
final _that = this;
switch (_that) {
case _Hajj():
return hajj(_that);case _Omrah():
return omrah(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Hajj value)?  hajj,TResult? Function( _Omrah value)?  omrah,}){
final _that = this;
switch (_that) {
case _Hajj() when hajj != null:
return hajj(_that);case _Omrah() when omrah != null:
return omrah(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  hajj,TResult Function()?  omrah,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Hajj() when hajj != null:
return hajj();case _Omrah() when omrah != null:
return omrah();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  hajj,required TResult Function()  omrah,}) {final _that = this;
switch (_that) {
case _Hajj():
return hajj();case _Omrah():
return omrah();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  hajj,TResult? Function()?  omrah,}) {final _that = this;
switch (_that) {
case _Hajj() when hajj != null:
return hajj();case _Omrah() when omrah != null:
return omrah();case _:
  return null;

}
}

}

/// @nodoc


class _Hajj implements HajjOmrahScreenType {
  const _Hajj();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Hajj);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HajjOmrahScreenType.hajj()';
}


}




/// @nodoc


class _Omrah implements HajjOmrahScreenType {
  const _Omrah();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Omrah);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HajjOmrahScreenType.omrah()';
}


}




// dart format on
