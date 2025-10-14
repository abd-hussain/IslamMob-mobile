// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'estekara_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EstekaraEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EstekaraEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EstekaraEvent()';
}


}

/// @nodoc
class $EstekaraEventCopyWith<$Res>  {
$EstekaraEventCopyWith(EstekaraEvent _, $Res Function(EstekaraEvent) __);
}


/// Adds pattern-matching-related methods to [EstekaraEvent].
extension EstekaraEventPatterns on EstekaraEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _FillInitialValue value)?  fillInitialValue,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FillInitialValue() when fillInitialValue != null:
return fillInitialValue(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _FillInitialValue value)  fillInitialValue,}){
final _that = this;
switch (_that) {
case _FillInitialValue():
return fillInitialValue(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _FillInitialValue value)?  fillInitialValue,}){
final _that = this;
switch (_that) {
case _FillInitialValue() when fillInitialValue != null:
return fillInitialValue(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  fillInitialValue,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FillInitialValue() when fillInitialValue != null:
return fillInitialValue();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  fillInitialValue,}) {final _that = this;
switch (_that) {
case _FillInitialValue():
return fillInitialValue();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  fillInitialValue,}) {final _that = this;
switch (_that) {
case _FillInitialValue() when fillInitialValue != null:
return fillInitialValue();case _:
  return null;

}
}

}

/// @nodoc


class _FillInitialValue implements EstekaraEvent {
  const _FillInitialValue();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FillInitialValue);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EstekaraEvent.fillInitialValue()';
}


}




/// @nodoc
mixin _$EstekaraState {

 List<EstekaraData> get listOfItems; bool get isRtlLanguage;
/// Create a copy of EstekaraState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EstekaraStateCopyWith<EstekaraState> get copyWith => _$EstekaraStateCopyWithImpl<EstekaraState>(this as EstekaraState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EstekaraState&&const DeepCollectionEquality().equals(other.listOfItems, listOfItems)&&(identical(other.isRtlLanguage, isRtlLanguage) || other.isRtlLanguage == isRtlLanguage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(listOfItems),isRtlLanguage);

@override
String toString() {
  return 'EstekaraState(listOfItems: $listOfItems, isRtlLanguage: $isRtlLanguage)';
}


}

/// @nodoc
abstract mixin class $EstekaraStateCopyWith<$Res>  {
  factory $EstekaraStateCopyWith(EstekaraState value, $Res Function(EstekaraState) _then) = _$EstekaraStateCopyWithImpl;
@useResult
$Res call({
 List<EstekaraData> listOfItems, bool isRtlLanguage
});




}
/// @nodoc
class _$EstekaraStateCopyWithImpl<$Res>
    implements $EstekaraStateCopyWith<$Res> {
  _$EstekaraStateCopyWithImpl(this._self, this._then);

  final EstekaraState _self;
  final $Res Function(EstekaraState) _then;

/// Create a copy of EstekaraState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? listOfItems = null,Object? isRtlLanguage = null,}) {
  return _then(_self.copyWith(
listOfItems: null == listOfItems ? _self.listOfItems : listOfItems // ignore: cast_nullable_to_non_nullable
as List<EstekaraData>,isRtlLanguage: null == isRtlLanguage ? _self.isRtlLanguage : isRtlLanguage // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [EstekaraState].
extension EstekaraStatePatterns on EstekaraState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EstekaraState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EstekaraState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EstekaraState value)  $default,){
final _that = this;
switch (_that) {
case _EstekaraState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EstekaraState value)?  $default,){
final _that = this;
switch (_that) {
case _EstekaraState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<EstekaraData> listOfItems,  bool isRtlLanguage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EstekaraState() when $default != null:
return $default(_that.listOfItems,_that.isRtlLanguage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<EstekaraData> listOfItems,  bool isRtlLanguage)  $default,) {final _that = this;
switch (_that) {
case _EstekaraState():
return $default(_that.listOfItems,_that.isRtlLanguage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<EstekaraData> listOfItems,  bool isRtlLanguage)?  $default,) {final _that = this;
switch (_that) {
case _EstekaraState() when $default != null:
return $default(_that.listOfItems,_that.isRtlLanguage);case _:
  return null;

}
}

}

/// @nodoc


class _EstekaraState implements EstekaraState {
  const _EstekaraState({final  List<EstekaraData> listOfItems = const [], this.isRtlLanguage = false}): _listOfItems = listOfItems;
  

 final  List<EstekaraData> _listOfItems;
@override@JsonKey() List<EstekaraData> get listOfItems {
  if (_listOfItems is EqualUnmodifiableListView) return _listOfItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_listOfItems);
}

@override@JsonKey() final  bool isRtlLanguage;

/// Create a copy of EstekaraState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EstekaraStateCopyWith<_EstekaraState> get copyWith => __$EstekaraStateCopyWithImpl<_EstekaraState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EstekaraState&&const DeepCollectionEquality().equals(other._listOfItems, _listOfItems)&&(identical(other.isRtlLanguage, isRtlLanguage) || other.isRtlLanguage == isRtlLanguage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_listOfItems),isRtlLanguage);

@override
String toString() {
  return 'EstekaraState(listOfItems: $listOfItems, isRtlLanguage: $isRtlLanguage)';
}


}

/// @nodoc
abstract mixin class _$EstekaraStateCopyWith<$Res> implements $EstekaraStateCopyWith<$Res> {
  factory _$EstekaraStateCopyWith(_EstekaraState value, $Res Function(_EstekaraState) _then) = __$EstekaraStateCopyWithImpl;
@override @useResult
$Res call({
 List<EstekaraData> listOfItems, bool isRtlLanguage
});




}
/// @nodoc
class __$EstekaraStateCopyWithImpl<$Res>
    implements _$EstekaraStateCopyWith<$Res> {
  __$EstekaraStateCopyWithImpl(this._self, this._then);

  final _EstekaraState _self;
  final $Res Function(_EstekaraState) _then;

/// Create a copy of EstekaraState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? listOfItems = null,Object? isRtlLanguage = null,}) {
  return _then(_EstekaraState(
listOfItems: null == listOfItems ? _self._listOfItems : listOfItems // ignore: cast_nullable_to_non_nullable
as List<EstekaraData>,isRtlLanguage: null == isRtlLanguage ? _self.isRtlLanguage : isRtlLanguage // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
