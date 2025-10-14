// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_container_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MainContainerEvent {

 int get tabIndex;
/// Create a copy of MainContainerEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MainContainerEventCopyWith<MainContainerEvent> get copyWith => _$MainContainerEventCopyWithImpl<MainContainerEvent>(this as MainContainerEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MainContainerEvent&&(identical(other.tabIndex, tabIndex) || other.tabIndex == tabIndex));
}


@override
int get hashCode => Object.hash(runtimeType,tabIndex);

@override
String toString() {
  return 'MainContainerEvent(tabIndex: $tabIndex)';
}


}

/// @nodoc
abstract mixin class $MainContainerEventCopyWith<$Res>  {
  factory $MainContainerEventCopyWith(MainContainerEvent value, $Res Function(MainContainerEvent) _then) = _$MainContainerEventCopyWithImpl;
@useResult
$Res call({
 int tabIndex
});




}
/// @nodoc
class _$MainContainerEventCopyWithImpl<$Res>
    implements $MainContainerEventCopyWith<$Res> {
  _$MainContainerEventCopyWithImpl(this._self, this._then);

  final MainContainerEvent _self;
  final $Res Function(MainContainerEvent) _then;

/// Create a copy of MainContainerEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tabIndex = null,}) {
  return _then(_self.copyWith(
tabIndex: null == tabIndex ? _self.tabIndex : tabIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [MainContainerEvent].
extension MainContainerEventPatterns on MainContainerEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ChangeSelectedIndex value)?  changeSelectedIndex,TResult Function( _ChangeScreenAwakness value)?  changeScreenAwakness,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChangeSelectedIndex() when changeSelectedIndex != null:
return changeSelectedIndex(_that);case _ChangeScreenAwakness() when changeScreenAwakness != null:
return changeScreenAwakness(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ChangeSelectedIndex value)  changeSelectedIndex,required TResult Function( _ChangeScreenAwakness value)  changeScreenAwakness,}){
final _that = this;
switch (_that) {
case _ChangeSelectedIndex():
return changeSelectedIndex(_that);case _ChangeScreenAwakness():
return changeScreenAwakness(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ChangeSelectedIndex value)?  changeSelectedIndex,TResult? Function( _ChangeScreenAwakness value)?  changeScreenAwakness,}){
final _that = this;
switch (_that) {
case _ChangeSelectedIndex() when changeSelectedIndex != null:
return changeSelectedIndex(_that);case _ChangeScreenAwakness() when changeScreenAwakness != null:
return changeScreenAwakness(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int tabIndex)?  changeSelectedIndex,TResult Function( int tabIndex)?  changeScreenAwakness,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChangeSelectedIndex() when changeSelectedIndex != null:
return changeSelectedIndex(_that.tabIndex);case _ChangeScreenAwakness() when changeScreenAwakness != null:
return changeScreenAwakness(_that.tabIndex);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int tabIndex)  changeSelectedIndex,required TResult Function( int tabIndex)  changeScreenAwakness,}) {final _that = this;
switch (_that) {
case _ChangeSelectedIndex():
return changeSelectedIndex(_that.tabIndex);case _ChangeScreenAwakness():
return changeScreenAwakness(_that.tabIndex);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int tabIndex)?  changeSelectedIndex,TResult? Function( int tabIndex)?  changeScreenAwakness,}) {final _that = this;
switch (_that) {
case _ChangeSelectedIndex() when changeSelectedIndex != null:
return changeSelectedIndex(_that.tabIndex);case _ChangeScreenAwakness() when changeScreenAwakness != null:
return changeScreenAwakness(_that.tabIndex);case _:
  return null;

}
}

}

/// @nodoc


class _ChangeSelectedIndex implements MainContainerEvent {
   _ChangeSelectedIndex(this.tabIndex);
  

@override final  int tabIndex;

/// Create a copy of MainContainerEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangeSelectedIndexCopyWith<_ChangeSelectedIndex> get copyWith => __$ChangeSelectedIndexCopyWithImpl<_ChangeSelectedIndex>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangeSelectedIndex&&(identical(other.tabIndex, tabIndex) || other.tabIndex == tabIndex));
}


@override
int get hashCode => Object.hash(runtimeType,tabIndex);

@override
String toString() {
  return 'MainContainerEvent.changeSelectedIndex(tabIndex: $tabIndex)';
}


}

/// @nodoc
abstract mixin class _$ChangeSelectedIndexCopyWith<$Res> implements $MainContainerEventCopyWith<$Res> {
  factory _$ChangeSelectedIndexCopyWith(_ChangeSelectedIndex value, $Res Function(_ChangeSelectedIndex) _then) = __$ChangeSelectedIndexCopyWithImpl;
@override @useResult
$Res call({
 int tabIndex
});




}
/// @nodoc
class __$ChangeSelectedIndexCopyWithImpl<$Res>
    implements _$ChangeSelectedIndexCopyWith<$Res> {
  __$ChangeSelectedIndexCopyWithImpl(this._self, this._then);

  final _ChangeSelectedIndex _self;
  final $Res Function(_ChangeSelectedIndex) _then;

/// Create a copy of MainContainerEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tabIndex = null,}) {
  return _then(_ChangeSelectedIndex(
null == tabIndex ? _self.tabIndex : tabIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _ChangeScreenAwakness implements MainContainerEvent {
   _ChangeScreenAwakness(this.tabIndex);
  

@override final  int tabIndex;

/// Create a copy of MainContainerEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangeScreenAwaknessCopyWith<_ChangeScreenAwakness> get copyWith => __$ChangeScreenAwaknessCopyWithImpl<_ChangeScreenAwakness>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangeScreenAwakness&&(identical(other.tabIndex, tabIndex) || other.tabIndex == tabIndex));
}


@override
int get hashCode => Object.hash(runtimeType,tabIndex);

@override
String toString() {
  return 'MainContainerEvent.changeScreenAwakness(tabIndex: $tabIndex)';
}


}

/// @nodoc
abstract mixin class _$ChangeScreenAwaknessCopyWith<$Res> implements $MainContainerEventCopyWith<$Res> {
  factory _$ChangeScreenAwaknessCopyWith(_ChangeScreenAwakness value, $Res Function(_ChangeScreenAwakness) _then) = __$ChangeScreenAwaknessCopyWithImpl;
@override @useResult
$Res call({
 int tabIndex
});




}
/// @nodoc
class __$ChangeScreenAwaknessCopyWithImpl<$Res>
    implements _$ChangeScreenAwaknessCopyWith<$Res> {
  __$ChangeScreenAwaknessCopyWithImpl(this._self, this._then);

  final _ChangeScreenAwakness _self;
  final $Res Function(_ChangeScreenAwakness) _then;

/// Create a copy of MainContainerEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tabIndex = null,}) {
  return _then(_ChangeScreenAwakness(
null == tabIndex ? _self.tabIndex : tabIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$MainContainerState {

 int get selectedIndex;
/// Create a copy of MainContainerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MainContainerStateCopyWith<MainContainerState> get copyWith => _$MainContainerStateCopyWithImpl<MainContainerState>(this as MainContainerState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MainContainerState&&(identical(other.selectedIndex, selectedIndex) || other.selectedIndex == selectedIndex));
}


@override
int get hashCode => Object.hash(runtimeType,selectedIndex);

@override
String toString() {
  return 'MainContainerState(selectedIndex: $selectedIndex)';
}


}

/// @nodoc
abstract mixin class $MainContainerStateCopyWith<$Res>  {
  factory $MainContainerStateCopyWith(MainContainerState value, $Res Function(MainContainerState) _then) = _$MainContainerStateCopyWithImpl;
@useResult
$Res call({
 int selectedIndex
});




}
/// @nodoc
class _$MainContainerStateCopyWithImpl<$Res>
    implements $MainContainerStateCopyWith<$Res> {
  _$MainContainerStateCopyWithImpl(this._self, this._then);

  final MainContainerState _self;
  final $Res Function(MainContainerState) _then;

/// Create a copy of MainContainerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selectedIndex = null,}) {
  return _then(_self.copyWith(
selectedIndex: null == selectedIndex ? _self.selectedIndex : selectedIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [MainContainerState].
extension MainContainerStatePatterns on MainContainerState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MainContainerState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MainContainerState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MainContainerState value)  $default,){
final _that = this;
switch (_that) {
case _MainContainerState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MainContainerState value)?  $default,){
final _that = this;
switch (_that) {
case _MainContainerState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int selectedIndex)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MainContainerState() when $default != null:
return $default(_that.selectedIndex);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int selectedIndex)  $default,) {final _that = this;
switch (_that) {
case _MainContainerState():
return $default(_that.selectedIndex);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int selectedIndex)?  $default,) {final _that = this;
switch (_that) {
case _MainContainerState() when $default != null:
return $default(_that.selectedIndex);case _:
  return null;

}
}

}

/// @nodoc


class _MainContainerState implements MainContainerState {
  const _MainContainerState({this.selectedIndex = 0});
  

@override@JsonKey() final  int selectedIndex;

/// Create a copy of MainContainerState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MainContainerStateCopyWith<_MainContainerState> get copyWith => __$MainContainerStateCopyWithImpl<_MainContainerState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MainContainerState&&(identical(other.selectedIndex, selectedIndex) || other.selectedIndex == selectedIndex));
}


@override
int get hashCode => Object.hash(runtimeType,selectedIndex);

@override
String toString() {
  return 'MainContainerState(selectedIndex: $selectedIndex)';
}


}

/// @nodoc
abstract mixin class _$MainContainerStateCopyWith<$Res> implements $MainContainerStateCopyWith<$Res> {
  factory _$MainContainerStateCopyWith(_MainContainerState value, $Res Function(_MainContainerState) _then) = __$MainContainerStateCopyWithImpl;
@override @useResult
$Res call({
 int selectedIndex
});




}
/// @nodoc
class __$MainContainerStateCopyWithImpl<$Res>
    implements _$MainContainerStateCopyWith<$Res> {
  __$MainContainerStateCopyWithImpl(this._self, this._then);

  final _MainContainerState _self;
  final $Res Function(_MainContainerState) _then;

/// Create a copy of MainContainerState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selectedIndex = null,}) {
  return _then(_MainContainerState(
selectedIndex: null == selectedIndex ? _self.selectedIndex : selectedIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
