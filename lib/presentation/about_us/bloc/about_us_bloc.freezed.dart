// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'about_us_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AboutUsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AboutUsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AboutUsEvent()';
}


}

/// @nodoc
class $AboutUsEventCopyWith<$Res>  {
$AboutUsEventCopyWith(AboutUsEvent _, $Res Function(AboutUsEvent) __);
}


/// Adds pattern-matching-related methods to [AboutUsEvent].
extension AboutUsEventPatterns on AboutUsEvent {
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


class _InitializeRewardedAd implements AboutUsEvent {
   _InitializeRewardedAd();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InitializeRewardedAd);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AboutUsEvent.initializeRewardedAd()';
}


}




/// @nodoc


class _UpdateRewardedAd implements AboutUsEvent {
   _UpdateRewardedAd(this.value);
  

 final  bool value;

/// Create a copy of AboutUsEvent
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
  return 'AboutUsEvent.updateRewardedAd(value: $value)';
}


}

/// @nodoc
abstract mixin class _$UpdateRewardedAdCopyWith<$Res> implements $AboutUsEventCopyWith<$Res> {
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

/// Create a copy of AboutUsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_UpdateRewardedAd(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$AboutUsState {

 bool get rewardedAdExsist;
/// Create a copy of AboutUsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AboutUsStateCopyWith<AboutUsState> get copyWith => _$AboutUsStateCopyWithImpl<AboutUsState>(this as AboutUsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AboutUsState&&(identical(other.rewardedAdExsist, rewardedAdExsist) || other.rewardedAdExsist == rewardedAdExsist));
}


@override
int get hashCode => Object.hash(runtimeType,rewardedAdExsist);

@override
String toString() {
  return 'AboutUsState(rewardedAdExsist: $rewardedAdExsist)';
}


}

/// @nodoc
abstract mixin class $AboutUsStateCopyWith<$Res>  {
  factory $AboutUsStateCopyWith(AboutUsState value, $Res Function(AboutUsState) _then) = _$AboutUsStateCopyWithImpl;
@useResult
$Res call({
 bool rewardedAdExsist
});




}
/// @nodoc
class _$AboutUsStateCopyWithImpl<$Res>
    implements $AboutUsStateCopyWith<$Res> {
  _$AboutUsStateCopyWithImpl(this._self, this._then);

  final AboutUsState _self;
  final $Res Function(AboutUsState) _then;

/// Create a copy of AboutUsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rewardedAdExsist = null,}) {
  return _then(_self.copyWith(
rewardedAdExsist: null == rewardedAdExsist ? _self.rewardedAdExsist : rewardedAdExsist // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AboutUsState].
extension AboutUsStatePatterns on AboutUsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AboutUsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AboutUsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AboutUsState value)  $default,){
final _that = this;
switch (_that) {
case _AboutUsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AboutUsState value)?  $default,){
final _that = this;
switch (_that) {
case _AboutUsState() when $default != null:
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
case _AboutUsState() when $default != null:
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
case _AboutUsState():
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
case _AboutUsState() when $default != null:
return $default(_that.rewardedAdExsist);case _:
  return null;

}
}

}

/// @nodoc


class _AboutUsState implements AboutUsState {
  const _AboutUsState({this.rewardedAdExsist = false});
  

@override@JsonKey() final  bool rewardedAdExsist;

/// Create a copy of AboutUsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AboutUsStateCopyWith<_AboutUsState> get copyWith => __$AboutUsStateCopyWithImpl<_AboutUsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AboutUsState&&(identical(other.rewardedAdExsist, rewardedAdExsist) || other.rewardedAdExsist == rewardedAdExsist));
}


@override
int get hashCode => Object.hash(runtimeType,rewardedAdExsist);

@override
String toString() {
  return 'AboutUsState(rewardedAdExsist: $rewardedAdExsist)';
}


}

/// @nodoc
abstract mixin class _$AboutUsStateCopyWith<$Res> implements $AboutUsStateCopyWith<$Res> {
  factory _$AboutUsStateCopyWith(_AboutUsState value, $Res Function(_AboutUsState) _then) = __$AboutUsStateCopyWithImpl;
@override @useResult
$Res call({
 bool rewardedAdExsist
});




}
/// @nodoc
class __$AboutUsStateCopyWithImpl<$Res>
    implements _$AboutUsStateCopyWith<$Res> {
  __$AboutUsStateCopyWithImpl(this._self, this._then);

  final _AboutUsState _self;
  final $Res Function(_AboutUsState) _then;

/// Create a copy of AboutUsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rewardedAdExsist = null,}) {
  return _then(_AboutUsState(
rewardedAdExsist: null == rewardedAdExsist ? _self.rewardedAdExsist : rewardedAdExsist // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
