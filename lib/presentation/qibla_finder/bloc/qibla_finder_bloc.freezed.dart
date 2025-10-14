// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qibla_finder_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$QiblaFinderEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QiblaFinderEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'QiblaFinderEvent()';
}


}

/// @nodoc
class $QiblaFinderEventCopyWith<$Res>  {
$QiblaFinderEventCopyWith(QiblaFinderEvent _, $Res Function(QiblaFinderEvent) __);
}


/// Adds pattern-matching-related methods to [QiblaFinderEvent].
extension QiblaFinderEventPatterns on QiblaFinderEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _QiblaFinderSetup value)?  setup,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QiblaFinderSetup() when setup != null:
return setup(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _QiblaFinderSetup value)  setup,}){
final _that = this;
switch (_that) {
case _QiblaFinderSetup():
return setup(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _QiblaFinderSetup value)?  setup,}){
final _that = this;
switch (_that) {
case _QiblaFinderSetup() when setup != null:
return setup(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  setup,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QiblaFinderSetup() when setup != null:
return setup();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  setup,}) {final _that = this;
switch (_that) {
case _QiblaFinderSetup():
return setup();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  setup,}) {final _that = this;
switch (_that) {
case _QiblaFinderSetup() when setup != null:
return setup();case _:
  return null;

}
}

}

/// @nodoc


class _QiblaFinderSetup implements QiblaFinderEvent {
  const _QiblaFinderSetup();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QiblaFinderSetup);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'QiblaFinderEvent.setup()';
}


}




/// @nodoc
mixin _$QiblaFinderState {

 QiblaFinderProcessState get status;
/// Create a copy of QiblaFinderState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QiblaFinderStateCopyWith<QiblaFinderState> get copyWith => _$QiblaFinderStateCopyWithImpl<QiblaFinderState>(this as QiblaFinderState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QiblaFinderState&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,status);

@override
String toString() {
  return 'QiblaFinderState(status: $status)';
}


}

/// @nodoc
abstract mixin class $QiblaFinderStateCopyWith<$Res>  {
  factory $QiblaFinderStateCopyWith(QiblaFinderState value, $Res Function(QiblaFinderState) _then) = _$QiblaFinderStateCopyWithImpl;
@useResult
$Res call({
 QiblaFinderProcessState status
});


$QiblaFinderProcessStateCopyWith<$Res> get status;

}
/// @nodoc
class _$QiblaFinderStateCopyWithImpl<$Res>
    implements $QiblaFinderStateCopyWith<$Res> {
  _$QiblaFinderStateCopyWithImpl(this._self, this._then);

  final QiblaFinderState _self;
  final $Res Function(QiblaFinderState) _then;

/// Create a copy of QiblaFinderState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as QiblaFinderProcessState,
  ));
}
/// Create a copy of QiblaFinderState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$QiblaFinderProcessStateCopyWith<$Res> get status {
  
  return $QiblaFinderProcessStateCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}


/// Adds pattern-matching-related methods to [QiblaFinderState].
extension QiblaFinderStatePatterns on QiblaFinderState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QiblaFinderState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QiblaFinderState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QiblaFinderState value)  $default,){
final _that = this;
switch (_that) {
case _QiblaFinderState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QiblaFinderState value)?  $default,){
final _that = this;
switch (_that) {
case _QiblaFinderState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( QiblaFinderProcessState status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QiblaFinderState() when $default != null:
return $default(_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( QiblaFinderProcessState status)  $default,) {final _that = this;
switch (_that) {
case _QiblaFinderState():
return $default(_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( QiblaFinderProcessState status)?  $default,) {final _that = this;
switch (_that) {
case _QiblaFinderState() when $default != null:
return $default(_that.status);case _:
  return null;

}
}

}

/// @nodoc


class _QiblaFinderState implements QiblaFinderState {
  const _QiblaFinderState({this.status = const QiblaFinderProcessState.loading()});
  

@override@JsonKey() final  QiblaFinderProcessState status;

/// Create a copy of QiblaFinderState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QiblaFinderStateCopyWith<_QiblaFinderState> get copyWith => __$QiblaFinderStateCopyWithImpl<_QiblaFinderState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QiblaFinderState&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,status);

@override
String toString() {
  return 'QiblaFinderState(status: $status)';
}


}

/// @nodoc
abstract mixin class _$QiblaFinderStateCopyWith<$Res> implements $QiblaFinderStateCopyWith<$Res> {
  factory _$QiblaFinderStateCopyWith(_QiblaFinderState value, $Res Function(_QiblaFinderState) _then) = __$QiblaFinderStateCopyWithImpl;
@override @useResult
$Res call({
 QiblaFinderProcessState status
});


@override $QiblaFinderProcessStateCopyWith<$Res> get status;

}
/// @nodoc
class __$QiblaFinderStateCopyWithImpl<$Res>
    implements _$QiblaFinderStateCopyWith<$Res> {
  __$QiblaFinderStateCopyWithImpl(this._self, this._then);

  final _QiblaFinderState _self;
  final $Res Function(_QiblaFinderState) _then;

/// Create a copy of QiblaFinderState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,}) {
  return _then(_QiblaFinderState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as QiblaFinderProcessState,
  ));
}

/// Create a copy of QiblaFinderState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$QiblaFinderProcessStateCopyWith<$Res> get status {
  
  return $QiblaFinderProcessStateCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}

/// @nodoc
mixin _$QiblaFinderProcessState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QiblaFinderProcessState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'QiblaFinderProcessState()';
}


}

/// @nodoc
class $QiblaFinderProcessStateCopyWith<$Res>  {
$QiblaFinderProcessStateCopyWith(QiblaFinderProcessState _, $Res Function(QiblaFinderProcessState) __);
}


/// Adds pattern-matching-related methods to [QiblaFinderProcessState].
extension QiblaFinderProcessStatePatterns on QiblaFinderProcessState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( QiblaFinderProcessStateLoading value)?  loading,TResult Function( QiblaFinderProcessStateError value)?  error,TResult Function( QiblaFinderProcessStateSuccss value)?  succss,required TResult orElse(),}){
final _that = this;
switch (_that) {
case QiblaFinderProcessStateLoading() when loading != null:
return loading(_that);case QiblaFinderProcessStateError() when error != null:
return error(_that);case QiblaFinderProcessStateSuccss() when succss != null:
return succss(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( QiblaFinderProcessStateLoading value)  loading,required TResult Function( QiblaFinderProcessStateError value)  error,required TResult Function( QiblaFinderProcessStateSuccss value)  succss,}){
final _that = this;
switch (_that) {
case QiblaFinderProcessStateLoading():
return loading(_that);case QiblaFinderProcessStateError():
return error(_that);case QiblaFinderProcessStateSuccss():
return succss(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( QiblaFinderProcessStateLoading value)?  loading,TResult? Function( QiblaFinderProcessStateError value)?  error,TResult? Function( QiblaFinderProcessStateSuccss value)?  succss,}){
final _that = this;
switch (_that) {
case QiblaFinderProcessStateLoading() when loading != null:
return loading(_that);case QiblaFinderProcessStateError() when error != null:
return error(_that);case QiblaFinderProcessStateSuccss() when succss != null:
return succss(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function()?  error,TResult Function()?  succss,required TResult orElse(),}) {final _that = this;
switch (_that) {
case QiblaFinderProcessStateLoading() when loading != null:
return loading();case QiblaFinderProcessStateError() when error != null:
return error();case QiblaFinderProcessStateSuccss() when succss != null:
return succss();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function()  error,required TResult Function()  succss,}) {final _that = this;
switch (_that) {
case QiblaFinderProcessStateLoading():
return loading();case QiblaFinderProcessStateError():
return error();case QiblaFinderProcessStateSuccss():
return succss();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function()?  error,TResult? Function()?  succss,}) {final _that = this;
switch (_that) {
case QiblaFinderProcessStateLoading() when loading != null:
return loading();case QiblaFinderProcessStateError() when error != null:
return error();case QiblaFinderProcessStateSuccss() when succss != null:
return succss();case _:
  return null;

}
}

}

/// @nodoc


class QiblaFinderProcessStateLoading implements QiblaFinderProcessState {
  const QiblaFinderProcessStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QiblaFinderProcessStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'QiblaFinderProcessState.loading()';
}


}




/// @nodoc


class QiblaFinderProcessStateError implements QiblaFinderProcessState {
  const QiblaFinderProcessStateError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QiblaFinderProcessStateError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'QiblaFinderProcessState.error()';
}


}




/// @nodoc


class QiblaFinderProcessStateSuccss implements QiblaFinderProcessState {
  const QiblaFinderProcessStateSuccss();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QiblaFinderProcessStateSuccss);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'QiblaFinderProcessState.succss()';
}


}




// dart format on
