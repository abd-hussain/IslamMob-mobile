// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'support_us_dialog_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SupportUsDialogEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SupportUsDialogEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SupportUsDialogEvent()';
}


}

/// @nodoc
class $SupportUsDialogEventCopyWith<$Res>  {
$SupportUsDialogEventCopyWith(SupportUsDialogEvent _, $Res Function(SupportUsDialogEvent) __);
}


/// Adds pattern-matching-related methods to [SupportUsDialogEvent].
extension SupportUsDialogEventPatterns on SupportUsDialogEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _InitializeRewardedAd value)?  initializeRewardedAd,TResult Function( _UpdateRewardedAd value)?  updateRewardedAd,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InitializeRewardedAd() when initializeRewardedAd != null:
return initializeRewardedAd(_that);case _UpdateRewardedAd() when updateRewardedAd != null:
return updateRewardedAd(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _InitializeRewardedAd value)  initializeRewardedAd,required TResult Function( _UpdateRewardedAd value)  updateRewardedAd,}){
final _that = this;
switch (_that) {
case _InitializeRewardedAd():
return initializeRewardedAd(_that);case _UpdateRewardedAd():
return updateRewardedAd(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _InitializeRewardedAd value)?  initializeRewardedAd,TResult? Function( _UpdateRewardedAd value)?  updateRewardedAd,}){
final _that = this;
switch (_that) {
case _InitializeRewardedAd() when initializeRewardedAd != null:
return initializeRewardedAd(_that);case _UpdateRewardedAd() when updateRewardedAd != null:
return updateRewardedAd(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initializeRewardedAd,TResult Function( bool value)?  updateRewardedAd,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InitializeRewardedAd() when initializeRewardedAd != null:
return initializeRewardedAd();case _UpdateRewardedAd() when updateRewardedAd != null:
return updateRewardedAd(_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initializeRewardedAd,required TResult Function( bool value)  updateRewardedAd,}) {final _that = this;
switch (_that) {
case _InitializeRewardedAd():
return initializeRewardedAd();case _UpdateRewardedAd():
return updateRewardedAd(_that.value);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initializeRewardedAd,TResult? Function( bool value)?  updateRewardedAd,}) {final _that = this;
switch (_that) {
case _InitializeRewardedAd() when initializeRewardedAd != null:
return initializeRewardedAd();case _UpdateRewardedAd() when updateRewardedAd != null:
return updateRewardedAd(_that.value);case _:
  return null;

}
}

}

/// @nodoc


class _InitializeRewardedAd implements SupportUsDialogEvent {
   _InitializeRewardedAd();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InitializeRewardedAd);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SupportUsDialogEvent.initializeRewardedAd()';
}


}




/// @nodoc


class _UpdateRewardedAd implements SupportUsDialogEvent {
   _UpdateRewardedAd(this.value);
  

 final  bool value;

/// Create a copy of SupportUsDialogEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateRewardedAdCopyWith<_UpdateRewardedAd> get copyWith => __$UpdateRewardedAdCopyWithImpl<_UpdateRewardedAd>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateRewardedAd&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'SupportUsDialogEvent.updateRewardedAd(value: $value)';
}


}

/// @nodoc
abstract mixin class _$UpdateRewardedAdCopyWith<$Res> implements $SupportUsDialogEventCopyWith<$Res> {
  factory _$UpdateRewardedAdCopyWith(_UpdateRewardedAd value, $Res Function(_UpdateRewardedAd) _then) = __$UpdateRewardedAdCopyWithImpl;
@useResult
$Res call({
 bool value
});




}
/// @nodoc
class __$UpdateRewardedAdCopyWithImpl<$Res>
    implements _$UpdateRewardedAdCopyWith<$Res> {
  __$UpdateRewardedAdCopyWithImpl(this._self, this._then);

  final _UpdateRewardedAd _self;
  final $Res Function(_UpdateRewardedAd) _then;

/// Create a copy of SupportUsDialogEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_UpdateRewardedAd(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$SupportUsDialogState {

 bool get rewardedAdExsist;
/// Create a copy of SupportUsDialogState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SupportUsDialogStateCopyWith<SupportUsDialogState> get copyWith => _$SupportUsDialogStateCopyWithImpl<SupportUsDialogState>(this as SupportUsDialogState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SupportUsDialogState&&(identical(other.rewardedAdExsist, rewardedAdExsist) || other.rewardedAdExsist == rewardedAdExsist));
}


@override
int get hashCode => Object.hash(runtimeType,rewardedAdExsist);

@override
String toString() {
  return 'SupportUsDialogState(rewardedAdExsist: $rewardedAdExsist)';
}


}

/// @nodoc
abstract mixin class $SupportUsDialogStateCopyWith<$Res>  {
  factory $SupportUsDialogStateCopyWith(SupportUsDialogState value, $Res Function(SupportUsDialogState) _then) = _$SupportUsDialogStateCopyWithImpl;
@useResult
$Res call({
 bool rewardedAdExsist
});




}
/// @nodoc
class _$SupportUsDialogStateCopyWithImpl<$Res>
    implements $SupportUsDialogStateCopyWith<$Res> {
  _$SupportUsDialogStateCopyWithImpl(this._self, this._then);

  final SupportUsDialogState _self;
  final $Res Function(SupportUsDialogState) _then;

/// Create a copy of SupportUsDialogState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rewardedAdExsist = null,}) {
  return _then(_self.copyWith(
rewardedAdExsist: null == rewardedAdExsist ? _self.rewardedAdExsist : rewardedAdExsist // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SupportUsDialogState].
extension SupportUsDialogStatePatterns on SupportUsDialogState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SupportUsDialogState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SupportUsDialogState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SupportUsDialogState value)  $default,){
final _that = this;
switch (_that) {
case _SupportUsDialogState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SupportUsDialogState value)?  $default,){
final _that = this;
switch (_that) {
case _SupportUsDialogState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool rewardedAdExsist)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SupportUsDialogState() when $default != null:
return $default(_that.rewardedAdExsist);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool rewardedAdExsist)  $default,) {final _that = this;
switch (_that) {
case _SupportUsDialogState():
return $default(_that.rewardedAdExsist);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool rewardedAdExsist)?  $default,) {final _that = this;
switch (_that) {
case _SupportUsDialogState() when $default != null:
return $default(_that.rewardedAdExsist);case _:
  return null;

}
}

}

/// @nodoc


class _SupportUsDialogState implements SupportUsDialogState {
  const _SupportUsDialogState({this.rewardedAdExsist = false});
  

@override@JsonKey() final  bool rewardedAdExsist;

/// Create a copy of SupportUsDialogState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SupportUsDialogStateCopyWith<_SupportUsDialogState> get copyWith => __$SupportUsDialogStateCopyWithImpl<_SupportUsDialogState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SupportUsDialogState&&(identical(other.rewardedAdExsist, rewardedAdExsist) || other.rewardedAdExsist == rewardedAdExsist));
}


@override
int get hashCode => Object.hash(runtimeType,rewardedAdExsist);

@override
String toString() {
  return 'SupportUsDialogState(rewardedAdExsist: $rewardedAdExsist)';
}


}

/// @nodoc
abstract mixin class _$SupportUsDialogStateCopyWith<$Res> implements $SupportUsDialogStateCopyWith<$Res> {
  factory _$SupportUsDialogStateCopyWith(_SupportUsDialogState value, $Res Function(_SupportUsDialogState) _then) = __$SupportUsDialogStateCopyWithImpl;
@override @useResult
$Res call({
 bool rewardedAdExsist
});




}
/// @nodoc
class __$SupportUsDialogStateCopyWithImpl<$Res>
    implements _$SupportUsDialogStateCopyWith<$Res> {
  __$SupportUsDialogStateCopyWithImpl(this._self, this._then);

  final _SupportUsDialogState _self;
  final $Res Function(_SupportUsDialogState) _then;

/// Create a copy of SupportUsDialogState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rewardedAdExsist = null,}) {
  return _then(_SupportUsDialogState(
rewardedAdExsist: null == rewardedAdExsist ? _self.rewardedAdExsist : rewardedAdExsist // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
