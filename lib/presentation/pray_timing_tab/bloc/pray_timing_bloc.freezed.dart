// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pray_timing_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PrayTimingEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PrayTimingEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PrayTimingEvent()';
}


}

/// @nodoc
class $PrayTimingEventCopyWith<$Res>  {
$PrayTimingEventCopyWith(PrayTimingEvent _, $Res Function(PrayTimingEvent) __);
}


/// Adds pattern-matching-related methods to [PrayTimingEvent].
extension PrayTimingEventPatterns on PrayTimingEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initialize value)?  initialize,TResult Function( _UpdateExpandedStatus value)?  updateExpandedStatus,TResult Function( _UpdateNextPrayType value)?  updateNextPrayType,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initialize() when initialize != null:
return initialize(_that);case _UpdateExpandedStatus() when updateExpandedStatus != null:
return updateExpandedStatus(_that);case _UpdateNextPrayType() when updateNextPrayType != null:
return updateNextPrayType(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initialize value)  initialize,required TResult Function( _UpdateExpandedStatus value)  updateExpandedStatus,required TResult Function( _UpdateNextPrayType value)  updateNextPrayType,}){
final _that = this;
switch (_that) {
case _Initialize():
return initialize(_that);case _UpdateExpandedStatus():
return updateExpandedStatus(_that);case _UpdateNextPrayType():
return updateNextPrayType(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initialize value)?  initialize,TResult? Function( _UpdateExpandedStatus value)?  updateExpandedStatus,TResult? Function( _UpdateNextPrayType value)?  updateNextPrayType,}){
final _that = this;
switch (_that) {
case _Initialize() when initialize != null:
return initialize(_that);case _UpdateExpandedStatus() when updateExpandedStatus != null:
return updateExpandedStatus(_that);case _UpdateNextPrayType() when updateNextPrayType != null:
return updateNextPrayType(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( BuildContext context)?  initialize,TResult Function( bool status)?  updateExpandedStatus,TResult Function( SalahTimeState nextPrayType)?  updateNextPrayType,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initialize() when initialize != null:
return initialize(_that.context);case _UpdateExpandedStatus() when updateExpandedStatus != null:
return updateExpandedStatus(_that.status);case _UpdateNextPrayType() when updateNextPrayType != null:
return updateNextPrayType(_that.nextPrayType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( BuildContext context)  initialize,required TResult Function( bool status)  updateExpandedStatus,required TResult Function( SalahTimeState nextPrayType)  updateNextPrayType,}) {final _that = this;
switch (_that) {
case _Initialize():
return initialize(_that.context);case _UpdateExpandedStatus():
return updateExpandedStatus(_that.status);case _UpdateNextPrayType():
return updateNextPrayType(_that.nextPrayType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( BuildContext context)?  initialize,TResult? Function( bool status)?  updateExpandedStatus,TResult? Function( SalahTimeState nextPrayType)?  updateNextPrayType,}) {final _that = this;
switch (_that) {
case _Initialize() when initialize != null:
return initialize(_that.context);case _UpdateExpandedStatus() when updateExpandedStatus != null:
return updateExpandedStatus(_that.status);case _UpdateNextPrayType() when updateNextPrayType != null:
return updateNextPrayType(_that.nextPrayType);case _:
  return null;

}
}

}

/// @nodoc


class _Initialize implements PrayTimingEvent {
   _Initialize(this.context);
  

 final  BuildContext context;

/// Create a copy of PrayTimingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitializeCopyWith<_Initialize> get copyWith => __$InitializeCopyWithImpl<_Initialize>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initialize&&(identical(other.context, context) || other.context == context));
}


@override
int get hashCode => Object.hash(runtimeType,context);

@override
String toString() {
  return 'PrayTimingEvent.initialize(context: $context)';
}


}

/// @nodoc
abstract mixin class _$InitializeCopyWith<$Res> implements $PrayTimingEventCopyWith<$Res> {
  factory _$InitializeCopyWith(_Initialize value, $Res Function(_Initialize) _then) = __$InitializeCopyWithImpl;
@useResult
$Res call({
 BuildContext context
});




}
/// @nodoc
class __$InitializeCopyWithImpl<$Res>
    implements _$InitializeCopyWith<$Res> {
  __$InitializeCopyWithImpl(this._self, this._then);

  final _Initialize _self;
  final $Res Function(_Initialize) _then;

/// Create a copy of PrayTimingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? context = null,}) {
  return _then(_Initialize(
null == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as BuildContext,
  ));
}


}

/// @nodoc


class _UpdateExpandedStatus implements PrayTimingEvent {
   _UpdateExpandedStatus(this.status);
  

 final  bool status;

/// Create a copy of PrayTimingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateExpandedStatusCopyWith<_UpdateExpandedStatus> get copyWith => __$UpdateExpandedStatusCopyWithImpl<_UpdateExpandedStatus>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateExpandedStatus&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,status);

@override
String toString() {
  return 'PrayTimingEvent.updateExpandedStatus(status: $status)';
}


}

/// @nodoc
abstract mixin class _$UpdateExpandedStatusCopyWith<$Res> implements $PrayTimingEventCopyWith<$Res> {
  factory _$UpdateExpandedStatusCopyWith(_UpdateExpandedStatus value, $Res Function(_UpdateExpandedStatus) _then) = __$UpdateExpandedStatusCopyWithImpl;
@useResult
$Res call({
 bool status
});




}
/// @nodoc
class __$UpdateExpandedStatusCopyWithImpl<$Res>
    implements _$UpdateExpandedStatusCopyWith<$Res> {
  __$UpdateExpandedStatusCopyWithImpl(this._self, this._then);

  final _UpdateExpandedStatus _self;
  final $Res Function(_UpdateExpandedStatus) _then;

/// Create a copy of PrayTimingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? status = null,}) {
  return _then(_UpdateExpandedStatus(
null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _UpdateNextPrayType implements PrayTimingEvent {
   _UpdateNextPrayType(this.nextPrayType);
  

 final  SalahTimeState nextPrayType;

/// Create a copy of PrayTimingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateNextPrayTypeCopyWith<_UpdateNextPrayType> get copyWith => __$UpdateNextPrayTypeCopyWithImpl<_UpdateNextPrayType>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateNextPrayType&&(identical(other.nextPrayType, nextPrayType) || other.nextPrayType == nextPrayType));
}


@override
int get hashCode => Object.hash(runtimeType,nextPrayType);

@override
String toString() {
  return 'PrayTimingEvent.updateNextPrayType(nextPrayType: $nextPrayType)';
}


}

/// @nodoc
abstract mixin class _$UpdateNextPrayTypeCopyWith<$Res> implements $PrayTimingEventCopyWith<$Res> {
  factory _$UpdateNextPrayTypeCopyWith(_UpdateNextPrayType value, $Res Function(_UpdateNextPrayType) _then) = __$UpdateNextPrayTypeCopyWithImpl;
@useResult
$Res call({
 SalahTimeState nextPrayType
});


$SalahTimeStateCopyWith<$Res> get nextPrayType;

}
/// @nodoc
class __$UpdateNextPrayTypeCopyWithImpl<$Res>
    implements _$UpdateNextPrayTypeCopyWith<$Res> {
  __$UpdateNextPrayTypeCopyWithImpl(this._self, this._then);

  final _UpdateNextPrayType _self;
  final $Res Function(_UpdateNextPrayType) _then;

/// Create a copy of PrayTimingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? nextPrayType = null,}) {
  return _then(_UpdateNextPrayType(
null == nextPrayType ? _self.nextPrayType : nextPrayType // ignore: cast_nullable_to_non_nullable
as SalahTimeState,
  ));
}

/// Create a copy of PrayTimingEvent
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
mixin _$PrayTimingState {

 bool get isBarExpanded; SalahTimeState get nextPrayType; dynamic get loadingStatus;
/// Create a copy of PrayTimingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PrayTimingStateCopyWith<PrayTimingState> get copyWith => _$PrayTimingStateCopyWithImpl<PrayTimingState>(this as PrayTimingState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PrayTimingState&&(identical(other.isBarExpanded, isBarExpanded) || other.isBarExpanded == isBarExpanded)&&(identical(other.nextPrayType, nextPrayType) || other.nextPrayType == nextPrayType)&&const DeepCollectionEquality().equals(other.loadingStatus, loadingStatus));
}


@override
int get hashCode => Object.hash(runtimeType,isBarExpanded,nextPrayType,const DeepCollectionEquality().hash(loadingStatus));

@override
String toString() {
  return 'PrayTimingState(isBarExpanded: $isBarExpanded, nextPrayType: $nextPrayType, loadingStatus: $loadingStatus)';
}


}

/// @nodoc
abstract mixin class $PrayTimingStateCopyWith<$Res>  {
  factory $PrayTimingStateCopyWith(PrayTimingState value, $Res Function(PrayTimingState) _then) = _$PrayTimingStateCopyWithImpl;
@useResult
$Res call({
 bool isBarExpanded, SalahTimeState nextPrayType, dynamic loadingStatus
});


$SalahTimeStateCopyWith<$Res> get nextPrayType;

}
/// @nodoc
class _$PrayTimingStateCopyWithImpl<$Res>
    implements $PrayTimingStateCopyWith<$Res> {
  _$PrayTimingStateCopyWithImpl(this._self, this._then);

  final PrayTimingState _self;
  final $Res Function(PrayTimingState) _then;

/// Create a copy of PrayTimingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isBarExpanded = null,Object? nextPrayType = null,Object? loadingStatus = freezed,}) {
  return _then(_self.copyWith(
isBarExpanded: null == isBarExpanded ? _self.isBarExpanded : isBarExpanded // ignore: cast_nullable_to_non_nullable
as bool,nextPrayType: null == nextPrayType ? _self.nextPrayType : nextPrayType // ignore: cast_nullable_to_non_nullable
as SalahTimeState,loadingStatus: freezed == loadingStatus ? _self.loadingStatus : loadingStatus // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}
/// Create a copy of PrayTimingState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SalahTimeStateCopyWith<$Res> get nextPrayType {
  
  return $SalahTimeStateCopyWith<$Res>(_self.nextPrayType, (value) {
    return _then(_self.copyWith(nextPrayType: value));
  });
}
}


/// Adds pattern-matching-related methods to [PrayTimingState].
extension PrayTimingStatePatterns on PrayTimingState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PrayTimingState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PrayTimingState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PrayTimingState value)  $default,){
final _that = this;
switch (_that) {
case _PrayTimingState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PrayTimingState value)?  $default,){
final _that = this;
switch (_that) {
case _PrayTimingState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isBarExpanded,  SalahTimeState nextPrayType,  dynamic loadingStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PrayTimingState() when $default != null:
return $default(_that.isBarExpanded,_that.nextPrayType,_that.loadingStatus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isBarExpanded,  SalahTimeState nextPrayType,  dynamic loadingStatus)  $default,) {final _that = this;
switch (_that) {
case _PrayTimingState():
return $default(_that.isBarExpanded,_that.nextPrayType,_that.loadingStatus);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isBarExpanded,  SalahTimeState nextPrayType,  dynamic loadingStatus)?  $default,) {final _that = this;
switch (_that) {
case _PrayTimingState() when $default != null:
return $default(_that.isBarExpanded,_that.nextPrayType,_that.loadingStatus);case _:
  return null;

}
}

}

/// @nodoc


class _PrayTimingState implements PrayTimingState {
  const _PrayTimingState({this.isBarExpanded = true, this.nextPrayType = const SalahTimeState.none(), this.loadingStatus = const PrayTimingProcessState.loading()});
  

@override@JsonKey() final  bool isBarExpanded;
@override@JsonKey() final  SalahTimeState nextPrayType;
@override@JsonKey() final  dynamic loadingStatus;

/// Create a copy of PrayTimingState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PrayTimingStateCopyWith<_PrayTimingState> get copyWith => __$PrayTimingStateCopyWithImpl<_PrayTimingState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PrayTimingState&&(identical(other.isBarExpanded, isBarExpanded) || other.isBarExpanded == isBarExpanded)&&(identical(other.nextPrayType, nextPrayType) || other.nextPrayType == nextPrayType)&&const DeepCollectionEquality().equals(other.loadingStatus, loadingStatus));
}


@override
int get hashCode => Object.hash(runtimeType,isBarExpanded,nextPrayType,const DeepCollectionEquality().hash(loadingStatus));

@override
String toString() {
  return 'PrayTimingState(isBarExpanded: $isBarExpanded, nextPrayType: $nextPrayType, loadingStatus: $loadingStatus)';
}


}

/// @nodoc
abstract mixin class _$PrayTimingStateCopyWith<$Res> implements $PrayTimingStateCopyWith<$Res> {
  factory _$PrayTimingStateCopyWith(_PrayTimingState value, $Res Function(_PrayTimingState) _then) = __$PrayTimingStateCopyWithImpl;
@override @useResult
$Res call({
 bool isBarExpanded, SalahTimeState nextPrayType, dynamic loadingStatus
});


@override $SalahTimeStateCopyWith<$Res> get nextPrayType;

}
/// @nodoc
class __$PrayTimingStateCopyWithImpl<$Res>
    implements _$PrayTimingStateCopyWith<$Res> {
  __$PrayTimingStateCopyWithImpl(this._self, this._then);

  final _PrayTimingState _self;
  final $Res Function(_PrayTimingState) _then;

/// Create a copy of PrayTimingState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isBarExpanded = null,Object? nextPrayType = null,Object? loadingStatus = freezed,}) {
  return _then(_PrayTimingState(
isBarExpanded: null == isBarExpanded ? _self.isBarExpanded : isBarExpanded // ignore: cast_nullable_to_non_nullable
as bool,nextPrayType: null == nextPrayType ? _self.nextPrayType : nextPrayType // ignore: cast_nullable_to_non_nullable
as SalahTimeState,loadingStatus: freezed == loadingStatus ? _self.loadingStatus : loadingStatus // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

/// Create a copy of PrayTimingState
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
mixin _$PrayTimingProcessState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PrayTimingProcessState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PrayTimingProcessState()';
}


}

/// @nodoc
class $PrayTimingProcessStateCopyWith<$Res>  {
$PrayTimingProcessStateCopyWith(PrayTimingProcessState _, $Res Function(PrayTimingProcessState) __);
}


/// Adds pattern-matching-related methods to [PrayTimingProcessState].
extension PrayTimingProcessStatePatterns on PrayTimingProcessState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( PrayTimingProcessStateLoading value)?  loading,TResult Function( PrayTimingProcessStateDone value)?  done,required TResult orElse(),}){
final _that = this;
switch (_that) {
case PrayTimingProcessStateLoading() when loading != null:
return loading(_that);case PrayTimingProcessStateDone() when done != null:
return done(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( PrayTimingProcessStateLoading value)  loading,required TResult Function( PrayTimingProcessStateDone value)  done,}){
final _that = this;
switch (_that) {
case PrayTimingProcessStateLoading():
return loading(_that);case PrayTimingProcessStateDone():
return done(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( PrayTimingProcessStateLoading value)?  loading,TResult? Function( PrayTimingProcessStateDone value)?  done,}){
final _that = this;
switch (_that) {
case PrayTimingProcessStateLoading() when loading != null:
return loading(_that);case PrayTimingProcessStateDone() when done != null:
return done(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function()?  done,required TResult orElse(),}) {final _that = this;
switch (_that) {
case PrayTimingProcessStateLoading() when loading != null:
return loading();case PrayTimingProcessStateDone() when done != null:
return done();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function()  done,}) {final _that = this;
switch (_that) {
case PrayTimingProcessStateLoading():
return loading();case PrayTimingProcessStateDone():
return done();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function()?  done,}) {final _that = this;
switch (_that) {
case PrayTimingProcessStateLoading() when loading != null:
return loading();case PrayTimingProcessStateDone() when done != null:
return done();case _:
  return null;

}
}

}

/// @nodoc


class PrayTimingProcessStateLoading implements PrayTimingProcessState {
  const PrayTimingProcessStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PrayTimingProcessStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PrayTimingProcessState.loading()';
}


}




/// @nodoc


class PrayTimingProcessStateDone implements PrayTimingProcessState {
  const PrayTimingProcessStateDone();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PrayTimingProcessStateDone);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PrayTimingProcessState.done()';
}


}




// dart format on
