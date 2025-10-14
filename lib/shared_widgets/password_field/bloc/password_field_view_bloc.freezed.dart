// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_field_view_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PasswordFieldViewEvent {

 bool get value;
/// Create a copy of PasswordFieldViewEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PasswordFieldViewEventCopyWith<PasswordFieldViewEvent> get copyWith => _$PasswordFieldViewEventCopyWithImpl<PasswordFieldViewEvent>(this as PasswordFieldViewEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PasswordFieldViewEvent&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'PasswordFieldViewEvent(value: $value)';
}


}

/// @nodoc
abstract mixin class $PasswordFieldViewEventCopyWith<$Res>  {
  factory $PasswordFieldViewEventCopyWith(PasswordFieldViewEvent value, $Res Function(PasswordFieldViewEvent) _then) = _$PasswordFieldViewEventCopyWithImpl;
@useResult
$Res call({
 bool value
});




}
/// @nodoc
class _$PasswordFieldViewEventCopyWithImpl<$Res>
    implements $PasswordFieldViewEventCopyWith<$Res> {
  _$PasswordFieldViewEventCopyWithImpl(this._self, this._then);

  final PasswordFieldViewEvent _self;
  final $Res Function(PasswordFieldViewEvent) _then;

/// Create a copy of PasswordFieldViewEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,}) {
  return _then(_self.copyWith(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [PasswordFieldViewEvent].
extension PasswordFieldViewEventPatterns on PasswordFieldViewEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _UpdatePasswordVisability value)?  updatePasswordVisability,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdatePasswordVisability() when updatePasswordVisability != null:
return updatePasswordVisability(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _UpdatePasswordVisability value)  updatePasswordVisability,}){
final _that = this;
switch (_that) {
case _UpdatePasswordVisability():
return updatePasswordVisability(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _UpdatePasswordVisability value)?  updatePasswordVisability,}){
final _that = this;
switch (_that) {
case _UpdatePasswordVisability() when updatePasswordVisability != null:
return updatePasswordVisability(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( bool value)?  updatePasswordVisability,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdatePasswordVisability() when updatePasswordVisability != null:
return updatePasswordVisability(_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( bool value)  updatePasswordVisability,}) {final _that = this;
switch (_that) {
case _UpdatePasswordVisability():
return updatePasswordVisability(_that.value);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( bool value)?  updatePasswordVisability,}) {final _that = this;
switch (_that) {
case _UpdatePasswordVisability() when updatePasswordVisability != null:
return updatePasswordVisability(_that.value);case _:
  return null;

}
}

}

/// @nodoc


class _UpdatePasswordVisability implements PasswordFieldViewEvent {
  const _UpdatePasswordVisability(this.value);
  

@override final  bool value;

/// Create a copy of PasswordFieldViewEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdatePasswordVisabilityCopyWith<_UpdatePasswordVisability> get copyWith => __$UpdatePasswordVisabilityCopyWithImpl<_UpdatePasswordVisability>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdatePasswordVisability&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'PasswordFieldViewEvent.updatePasswordVisability(value: $value)';
}


}

/// @nodoc
abstract mixin class _$UpdatePasswordVisabilityCopyWith<$Res> implements $PasswordFieldViewEventCopyWith<$Res> {
  factory _$UpdatePasswordVisabilityCopyWith(_UpdatePasswordVisability value, $Res Function(_UpdatePasswordVisability) _then) = __$UpdatePasswordVisabilityCopyWithImpl;
@override @useResult
$Res call({
 bool value
});




}
/// @nodoc
class __$UpdatePasswordVisabilityCopyWithImpl<$Res>
    implements _$UpdatePasswordVisabilityCopyWith<$Res> {
  __$UpdatePasswordVisabilityCopyWithImpl(this._self, this._then);

  final _UpdatePasswordVisability _self;
  final $Res Function(_UpdatePasswordVisability) _then;

/// Create a copy of PasswordFieldViewEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_UpdatePasswordVisability(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$PasswordFieldViewState {

 bool get showPasswordTextInTheField;
/// Create a copy of PasswordFieldViewState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PasswordFieldViewStateCopyWith<PasswordFieldViewState> get copyWith => _$PasswordFieldViewStateCopyWithImpl<PasswordFieldViewState>(this as PasswordFieldViewState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PasswordFieldViewState&&(identical(other.showPasswordTextInTheField, showPasswordTextInTheField) || other.showPasswordTextInTheField == showPasswordTextInTheField));
}


@override
int get hashCode => Object.hash(runtimeType,showPasswordTextInTheField);

@override
String toString() {
  return 'PasswordFieldViewState(showPasswordTextInTheField: $showPasswordTextInTheField)';
}


}

/// @nodoc
abstract mixin class $PasswordFieldViewStateCopyWith<$Res>  {
  factory $PasswordFieldViewStateCopyWith(PasswordFieldViewState value, $Res Function(PasswordFieldViewState) _then) = _$PasswordFieldViewStateCopyWithImpl;
@useResult
$Res call({
 bool showPasswordTextInTheField
});




}
/// @nodoc
class _$PasswordFieldViewStateCopyWithImpl<$Res>
    implements $PasswordFieldViewStateCopyWith<$Res> {
  _$PasswordFieldViewStateCopyWithImpl(this._self, this._then);

  final PasswordFieldViewState _self;
  final $Res Function(PasswordFieldViewState) _then;

/// Create a copy of PasswordFieldViewState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? showPasswordTextInTheField = null,}) {
  return _then(_self.copyWith(
showPasswordTextInTheField: null == showPasswordTextInTheField ? _self.showPasswordTextInTheField : showPasswordTextInTheField // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [PasswordFieldViewState].
extension PasswordFieldViewStatePatterns on PasswordFieldViewState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PasswordFieldViewState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PasswordFieldViewState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PasswordFieldViewState value)  $default,){
final _that = this;
switch (_that) {
case _PasswordFieldViewState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PasswordFieldViewState value)?  $default,){
final _that = this;
switch (_that) {
case _PasswordFieldViewState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool showPasswordTextInTheField)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PasswordFieldViewState() when $default != null:
return $default(_that.showPasswordTextInTheField);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool showPasswordTextInTheField)  $default,) {final _that = this;
switch (_that) {
case _PasswordFieldViewState():
return $default(_that.showPasswordTextInTheField);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool showPasswordTextInTheField)?  $default,) {final _that = this;
switch (_that) {
case _PasswordFieldViewState() when $default != null:
return $default(_that.showPasswordTextInTheField);case _:
  return null;

}
}

}

/// @nodoc


class _PasswordFieldViewState implements PasswordFieldViewState {
  const _PasswordFieldViewState({this.showPasswordTextInTheField = false});
  

@override@JsonKey() final  bool showPasswordTextInTheField;

/// Create a copy of PasswordFieldViewState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PasswordFieldViewStateCopyWith<_PasswordFieldViewState> get copyWith => __$PasswordFieldViewStateCopyWithImpl<_PasswordFieldViewState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PasswordFieldViewState&&(identical(other.showPasswordTextInTheField, showPasswordTextInTheField) || other.showPasswordTextInTheField == showPasswordTextInTheField));
}


@override
int get hashCode => Object.hash(runtimeType,showPasswordTextInTheField);

@override
String toString() {
  return 'PasswordFieldViewState(showPasswordTextInTheField: $showPasswordTextInTheField)';
}


}

/// @nodoc
abstract mixin class _$PasswordFieldViewStateCopyWith<$Res> implements $PasswordFieldViewStateCopyWith<$Res> {
  factory _$PasswordFieldViewStateCopyWith(_PasswordFieldViewState value, $Res Function(_PasswordFieldViewState) _then) = __$PasswordFieldViewStateCopyWithImpl;
@override @useResult
$Res call({
 bool showPasswordTextInTheField
});




}
/// @nodoc
class __$PasswordFieldViewStateCopyWithImpl<$Res>
    implements _$PasswordFieldViewStateCopyWith<$Res> {
  __$PasswordFieldViewStateCopyWithImpl(this._self, this._then);

  final _PasswordFieldViewState _self;
  final $Res Function(_PasswordFieldViewState) _then;

/// Create a copy of PasswordFieldViewState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? showPasswordTextInTheField = null,}) {
  return _then(_PasswordFieldViewState(
showPasswordTextInTheField: null == showPasswordTextInTheField ? _self.showPasswordTextInTheField : showPasswordTextInTheField // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
