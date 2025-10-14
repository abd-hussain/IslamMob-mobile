// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inboarding_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$InboardingEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InboardingEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'InboardingEvent()';
}


}

/// @nodoc
class $InboardingEventCopyWith<$Res>  {
$InboardingEventCopyWith(InboardingEvent _, $Res Function(InboardingEvent) __);
}


/// Adds pattern-matching-related methods to [InboardingEvent].
extension InboardingEventPatterns on InboardingEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _InitialInBoardingStage value)?  initialStage,TResult Function( _ChangeInBoardingStage value)?  changeInBoardingStage,TResult Function( _FinalizeInBoarding value)?  finalizeInBoarding,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InitialInBoardingStage() when initialStage != null:
return initialStage(_that);case _ChangeInBoardingStage() when changeInBoardingStage != null:
return changeInBoardingStage(_that);case _FinalizeInBoarding() when finalizeInBoarding != null:
return finalizeInBoarding(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _InitialInBoardingStage value)  initialStage,required TResult Function( _ChangeInBoardingStage value)  changeInBoardingStage,required TResult Function( _FinalizeInBoarding value)  finalizeInBoarding,}){
final _that = this;
switch (_that) {
case _InitialInBoardingStage():
return initialStage(_that);case _ChangeInBoardingStage():
return changeInBoardingStage(_that);case _FinalizeInBoarding():
return finalizeInBoarding(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _InitialInBoardingStage value)?  initialStage,TResult? Function( _ChangeInBoardingStage value)?  changeInBoardingStage,TResult? Function( _FinalizeInBoarding value)?  finalizeInBoarding,}){
final _that = this;
switch (_that) {
case _InitialInBoardingStage() when initialStage != null:
return initialStage(_that);case _ChangeInBoardingStage() when changeInBoardingStage != null:
return changeInBoardingStage(_that);case _FinalizeInBoarding() when finalizeInBoarding != null:
return finalizeInBoarding(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initialStage,TResult Function( int stage)?  changeInBoardingStage,TResult Function()?  finalizeInBoarding,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InitialInBoardingStage() when initialStage != null:
return initialStage();case _ChangeInBoardingStage() when changeInBoardingStage != null:
return changeInBoardingStage(_that.stage);case _FinalizeInBoarding() when finalizeInBoarding != null:
return finalizeInBoarding();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initialStage,required TResult Function( int stage)  changeInBoardingStage,required TResult Function()  finalizeInBoarding,}) {final _that = this;
switch (_that) {
case _InitialInBoardingStage():
return initialStage();case _ChangeInBoardingStage():
return changeInBoardingStage(_that.stage);case _FinalizeInBoarding():
return finalizeInBoarding();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initialStage,TResult? Function( int stage)?  changeInBoardingStage,TResult? Function()?  finalizeInBoarding,}) {final _that = this;
switch (_that) {
case _InitialInBoardingStage() when initialStage != null:
return initialStage();case _ChangeInBoardingStage() when changeInBoardingStage != null:
return changeInBoardingStage(_that.stage);case _FinalizeInBoarding() when finalizeInBoarding != null:
return finalizeInBoarding();case _:
  return null;

}
}

}

/// @nodoc


class _InitialInBoardingStage implements InboardingEvent {
  const _InitialInBoardingStage();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InitialInBoardingStage);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'InboardingEvent.initialStage()';
}


}




/// @nodoc


class _ChangeInBoardingStage implements InboardingEvent {
  const _ChangeInBoardingStage({required this.stage});
  

 final  int stage;

/// Create a copy of InboardingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangeInBoardingStageCopyWith<_ChangeInBoardingStage> get copyWith => __$ChangeInBoardingStageCopyWithImpl<_ChangeInBoardingStage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangeInBoardingStage&&(identical(other.stage, stage) || other.stage == stage));
}


@override
int get hashCode => Object.hash(runtimeType,stage);

@override
String toString() {
  return 'InboardingEvent.changeInBoardingStage(stage: $stage)';
}


}

/// @nodoc
abstract mixin class _$ChangeInBoardingStageCopyWith<$Res> implements $InboardingEventCopyWith<$Res> {
  factory _$ChangeInBoardingStageCopyWith(_ChangeInBoardingStage value, $Res Function(_ChangeInBoardingStage) _then) = __$ChangeInBoardingStageCopyWithImpl;
@useResult
$Res call({
 int stage
});




}
/// @nodoc
class __$ChangeInBoardingStageCopyWithImpl<$Res>
    implements _$ChangeInBoardingStageCopyWith<$Res> {
  __$ChangeInBoardingStageCopyWithImpl(this._self, this._then);

  final _ChangeInBoardingStage _self;
  final $Res Function(_ChangeInBoardingStage) _then;

/// Create a copy of InboardingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? stage = null,}) {
  return _then(_ChangeInBoardingStage(
stage: null == stage ? _self.stage : stage // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _FinalizeInBoarding implements InboardingEvent {
  const _FinalizeInBoarding();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FinalizeInBoarding);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'InboardingEvent.finalizeInBoarding()';
}


}




/// @nodoc
mixin _$InboardingState {

 int get inBoardingStage; bool get finalizedInBoarding;
/// Create a copy of InboardingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InboardingStateCopyWith<InboardingState> get copyWith => _$InboardingStateCopyWithImpl<InboardingState>(this as InboardingState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InboardingState&&(identical(other.inBoardingStage, inBoardingStage) || other.inBoardingStage == inBoardingStage)&&(identical(other.finalizedInBoarding, finalizedInBoarding) || other.finalizedInBoarding == finalizedInBoarding));
}


@override
int get hashCode => Object.hash(runtimeType,inBoardingStage,finalizedInBoarding);

@override
String toString() {
  return 'InboardingState(inBoardingStage: $inBoardingStage, finalizedInBoarding: $finalizedInBoarding)';
}


}

/// @nodoc
abstract mixin class $InboardingStateCopyWith<$Res>  {
  factory $InboardingStateCopyWith(InboardingState value, $Res Function(InboardingState) _then) = _$InboardingStateCopyWithImpl;
@useResult
$Res call({
 int inBoardingStage, bool finalizedInBoarding
});




}
/// @nodoc
class _$InboardingStateCopyWithImpl<$Res>
    implements $InboardingStateCopyWith<$Res> {
  _$InboardingStateCopyWithImpl(this._self, this._then);

  final InboardingState _self;
  final $Res Function(InboardingState) _then;

/// Create a copy of InboardingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? inBoardingStage = null,Object? finalizedInBoarding = null,}) {
  return _then(_self.copyWith(
inBoardingStage: null == inBoardingStage ? _self.inBoardingStage : inBoardingStage // ignore: cast_nullable_to_non_nullable
as int,finalizedInBoarding: null == finalizedInBoarding ? _self.finalizedInBoarding : finalizedInBoarding // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [InboardingState].
extension InboardingStatePatterns on InboardingState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InboardingState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InboardingState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InboardingState value)  $default,){
final _that = this;
switch (_that) {
case _InboardingState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InboardingState value)?  $default,){
final _that = this;
switch (_that) {
case _InboardingState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int inBoardingStage,  bool finalizedInBoarding)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InboardingState() when $default != null:
return $default(_that.inBoardingStage,_that.finalizedInBoarding);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int inBoardingStage,  bool finalizedInBoarding)  $default,) {final _that = this;
switch (_that) {
case _InboardingState():
return $default(_that.inBoardingStage,_that.finalizedInBoarding);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int inBoardingStage,  bool finalizedInBoarding)?  $default,) {final _that = this;
switch (_that) {
case _InboardingState() when $default != null:
return $default(_that.inBoardingStage,_that.finalizedInBoarding);case _:
  return null;

}
}

}

/// @nodoc


class _InboardingState implements InboardingState {
  const _InboardingState({this.inBoardingStage = 10, this.finalizedInBoarding = false});
  

@override@JsonKey() final  int inBoardingStage;
@override@JsonKey() final  bool finalizedInBoarding;

/// Create a copy of InboardingState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InboardingStateCopyWith<_InboardingState> get copyWith => __$InboardingStateCopyWithImpl<_InboardingState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InboardingState&&(identical(other.inBoardingStage, inBoardingStage) || other.inBoardingStage == inBoardingStage)&&(identical(other.finalizedInBoarding, finalizedInBoarding) || other.finalizedInBoarding == finalizedInBoarding));
}


@override
int get hashCode => Object.hash(runtimeType,inBoardingStage,finalizedInBoarding);

@override
String toString() {
  return 'InboardingState(inBoardingStage: $inBoardingStage, finalizedInBoarding: $finalizedInBoarding)';
}


}

/// @nodoc
abstract mixin class _$InboardingStateCopyWith<$Res> implements $InboardingStateCopyWith<$Res> {
  factory _$InboardingStateCopyWith(_InboardingState value, $Res Function(_InboardingState) _then) = __$InboardingStateCopyWithImpl;
@override @useResult
$Res call({
 int inBoardingStage, bool finalizedInBoarding
});




}
/// @nodoc
class __$InboardingStateCopyWithImpl<$Res>
    implements _$InboardingStateCopyWith<$Res> {
  __$InboardingStateCopyWithImpl(this._self, this._then);

  final _InboardingState _self;
  final $Res Function(_InboardingState) _then;

/// Create a copy of InboardingState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? inBoardingStage = null,Object? finalizedInBoarding = null,}) {
  return _then(_InboardingState(
inBoardingStage: null == inBoardingStage ? _self.inBoardingStage : inBoardingStage // ignore: cast_nullable_to_non_nullable
as int,finalizedInBoarding: null == finalizedInBoarding ? _self.finalizedInBoarding : finalizedInBoarding // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
