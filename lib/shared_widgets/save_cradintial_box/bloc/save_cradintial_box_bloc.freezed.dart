// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_cradintial_box_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SaveCradintialBoxEvent {

 bool get value;
/// Create a copy of SaveCradintialBoxEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SaveCradintialBoxEventCopyWith<SaveCradintialBoxEvent> get copyWith => _$SaveCradintialBoxEventCopyWithImpl<SaveCradintialBoxEvent>(this as SaveCradintialBoxEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaveCradintialBoxEvent&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'SaveCradintialBoxEvent(value: $value)';
}


}

/// @nodoc
abstract mixin class $SaveCradintialBoxEventCopyWith<$Res>  {
  factory $SaveCradintialBoxEventCopyWith(SaveCradintialBoxEvent value, $Res Function(SaveCradintialBoxEvent) _then) = _$SaveCradintialBoxEventCopyWithImpl;
@useResult
$Res call({
 bool value
});




}
/// @nodoc
class _$SaveCradintialBoxEventCopyWithImpl<$Res>
    implements $SaveCradintialBoxEventCopyWith<$Res> {
  _$SaveCradintialBoxEventCopyWithImpl(this._self, this._then);

  final SaveCradintialBoxEvent _self;
  final $Res Function(SaveCradintialBoxEvent) _then;

/// Create a copy of SaveCradintialBoxEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,}) {
  return _then(_self.copyWith(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SaveCradintialBoxEvent].
extension SaveCradintialBoxEventPatterns on SaveCradintialBoxEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _SaveCradintialsChanged value)?  saveCradintialsChanged,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SaveCradintialsChanged() when saveCradintialsChanged != null:
return saveCradintialsChanged(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _SaveCradintialsChanged value)  saveCradintialsChanged,}){
final _that = this;
switch (_that) {
case _SaveCradintialsChanged():
return saveCradintialsChanged(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _SaveCradintialsChanged value)?  saveCradintialsChanged,}){
final _that = this;
switch (_that) {
case _SaveCradintialsChanged() when saveCradintialsChanged != null:
return saveCradintialsChanged(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( bool value)?  saveCradintialsChanged,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SaveCradintialsChanged() when saveCradintialsChanged != null:
return saveCradintialsChanged(_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( bool value)  saveCradintialsChanged,}) {final _that = this;
switch (_that) {
case _SaveCradintialsChanged():
return saveCradintialsChanged(_that.value);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( bool value)?  saveCradintialsChanged,}) {final _that = this;
switch (_that) {
case _SaveCradintialsChanged() when saveCradintialsChanged != null:
return saveCradintialsChanged(_that.value);case _:
  return null;

}
}

}

/// @nodoc


class _SaveCradintialsChanged implements SaveCradintialBoxEvent {
  const _SaveCradintialsChanged({required this.value});
  

@override final  bool value;

/// Create a copy of SaveCradintialBoxEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SaveCradintialsChangedCopyWith<_SaveCradintialsChanged> get copyWith => __$SaveCradintialsChangedCopyWithImpl<_SaveCradintialsChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SaveCradintialsChanged&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'SaveCradintialBoxEvent.saveCradintialsChanged(value: $value)';
}


}

/// @nodoc
abstract mixin class _$SaveCradintialsChangedCopyWith<$Res> implements $SaveCradintialBoxEventCopyWith<$Res> {
  factory _$SaveCradintialsChangedCopyWith(_SaveCradintialsChanged value, $Res Function(_SaveCradintialsChanged) _then) = __$SaveCradintialsChangedCopyWithImpl;
@override @useResult
$Res call({
 bool value
});




}
/// @nodoc
class __$SaveCradintialsChangedCopyWithImpl<$Res>
    implements _$SaveCradintialsChangedCopyWith<$Res> {
  __$SaveCradintialsChangedCopyWithImpl(this._self, this._then);

  final _SaveCradintialsChanged _self;
  final $Res Function(_SaveCradintialsChanged) _then;

/// Create a copy of SaveCradintialBoxEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_SaveCradintialsChanged(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$SaveCradintialBoxState {

 bool get saveCraditialEnabled;
/// Create a copy of SaveCradintialBoxState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SaveCradintialBoxStateCopyWith<SaveCradintialBoxState> get copyWith => _$SaveCradintialBoxStateCopyWithImpl<SaveCradintialBoxState>(this as SaveCradintialBoxState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaveCradintialBoxState&&(identical(other.saveCraditialEnabled, saveCraditialEnabled) || other.saveCraditialEnabled == saveCraditialEnabled));
}


@override
int get hashCode => Object.hash(runtimeType,saveCraditialEnabled);

@override
String toString() {
  return 'SaveCradintialBoxState(saveCraditialEnabled: $saveCraditialEnabled)';
}


}

/// @nodoc
abstract mixin class $SaveCradintialBoxStateCopyWith<$Res>  {
  factory $SaveCradintialBoxStateCopyWith(SaveCradintialBoxState value, $Res Function(SaveCradintialBoxState) _then) = _$SaveCradintialBoxStateCopyWithImpl;
@useResult
$Res call({
 bool saveCraditialEnabled
});




}
/// @nodoc
class _$SaveCradintialBoxStateCopyWithImpl<$Res>
    implements $SaveCradintialBoxStateCopyWith<$Res> {
  _$SaveCradintialBoxStateCopyWithImpl(this._self, this._then);

  final SaveCradintialBoxState _self;
  final $Res Function(SaveCradintialBoxState) _then;

/// Create a copy of SaveCradintialBoxState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? saveCraditialEnabled = null,}) {
  return _then(_self.copyWith(
saveCraditialEnabled: null == saveCraditialEnabled ? _self.saveCraditialEnabled : saveCraditialEnabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SaveCradintialBoxState].
extension SaveCradintialBoxStatePatterns on SaveCradintialBoxState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SaveCradintialBoxState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SaveCradintialBoxState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SaveCradintialBoxState value)  $default,){
final _that = this;
switch (_that) {
case _SaveCradintialBoxState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SaveCradintialBoxState value)?  $default,){
final _that = this;
switch (_that) {
case _SaveCradintialBoxState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool saveCraditialEnabled)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SaveCradintialBoxState() when $default != null:
return $default(_that.saveCraditialEnabled);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool saveCraditialEnabled)  $default,) {final _that = this;
switch (_that) {
case _SaveCradintialBoxState():
return $default(_that.saveCraditialEnabled);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool saveCraditialEnabled)?  $default,) {final _that = this;
switch (_that) {
case _SaveCradintialBoxState() when $default != null:
return $default(_that.saveCraditialEnabled);case _:
  return null;

}
}

}

/// @nodoc


class _SaveCradintialBoxState implements SaveCradintialBoxState {
  const _SaveCradintialBoxState({this.saveCraditialEnabled = false});
  

@override@JsonKey() final  bool saveCraditialEnabled;

/// Create a copy of SaveCradintialBoxState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SaveCradintialBoxStateCopyWith<_SaveCradintialBoxState> get copyWith => __$SaveCradintialBoxStateCopyWithImpl<_SaveCradintialBoxState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SaveCradintialBoxState&&(identical(other.saveCraditialEnabled, saveCraditialEnabled) || other.saveCraditialEnabled == saveCraditialEnabled));
}


@override
int get hashCode => Object.hash(runtimeType,saveCraditialEnabled);

@override
String toString() {
  return 'SaveCradintialBoxState(saveCraditialEnabled: $saveCraditialEnabled)';
}


}

/// @nodoc
abstract mixin class _$SaveCradintialBoxStateCopyWith<$Res> implements $SaveCradintialBoxStateCopyWith<$Res> {
  factory _$SaveCradintialBoxStateCopyWith(_SaveCradintialBoxState value, $Res Function(_SaveCradintialBoxState) _then) = __$SaveCradintialBoxStateCopyWithImpl;
@override @useResult
$Res call({
 bool saveCraditialEnabled
});




}
/// @nodoc
class __$SaveCradintialBoxStateCopyWithImpl<$Res>
    implements _$SaveCradintialBoxStateCopyWith<$Res> {
  __$SaveCradintialBoxStateCopyWithImpl(this._self, this._then);

  final _SaveCradintialBoxState _self;
  final $Res Function(_SaveCradintialBoxState) _then;

/// Create a copy of SaveCradintialBoxState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? saveCraditialEnabled = null,}) {
  return _then(_SaveCradintialBoxState(
saveCraditialEnabled: null == saveCraditialEnabled ? _self.saveCraditialEnabled : saveCraditialEnabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
