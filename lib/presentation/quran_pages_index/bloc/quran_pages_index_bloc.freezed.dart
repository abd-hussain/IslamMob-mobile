// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quran_pages_index_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$QuranPagesIndexEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuranPagesIndexEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'QuranPagesIndexEvent()';
}


}

/// @nodoc
class $QuranPagesIndexEventCopyWith<$Res>  {
$QuranPagesIndexEventCopyWith(QuranPagesIndexEvent _, $Res Function(QuranPagesIndexEvent) __);
}


/// Adds pattern-matching-related methods to [QuranPagesIndexEvent].
extension QuranPagesIndexEventPatterns on QuranPagesIndexEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _UpdateSelectedTab value)?  updateSelectedTab,TResult Function( _GetSowarList value)?  getSowarList,TResult Function( _Search value)?  search,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateSelectedTab() when updateSelectedTab != null:
return updateSelectedTab(_that);case _GetSowarList() when getSowarList != null:
return getSowarList(_that);case _Search() when search != null:
return search(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _UpdateSelectedTab value)  updateSelectedTab,required TResult Function( _GetSowarList value)  getSowarList,required TResult Function( _Search value)  search,}){
final _that = this;
switch (_that) {
case _UpdateSelectedTab():
return updateSelectedTab(_that);case _GetSowarList():
return getSowarList(_that);case _Search():
return search(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _UpdateSelectedTab value)?  updateSelectedTab,TResult? Function( _GetSowarList value)?  getSowarList,TResult? Function( _Search value)?  search,}){
final _that = this;
switch (_that) {
case _UpdateSelectedTab() when updateSelectedTab != null:
return updateSelectedTab(_that);case _GetSowarList() when getSowarList != null:
return getSowarList(_that);case _Search() when search != null:
return search(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int index)?  updateSelectedTab,TResult Function( BuildContext context)?  getSowarList,TResult Function( BuildContext context,  String value)?  search,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateSelectedTab() when updateSelectedTab != null:
return updateSelectedTab(_that.index);case _GetSowarList() when getSowarList != null:
return getSowarList(_that.context);case _Search() when search != null:
return search(_that.context,_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int index)  updateSelectedTab,required TResult Function( BuildContext context)  getSowarList,required TResult Function( BuildContext context,  String value)  search,}) {final _that = this;
switch (_that) {
case _UpdateSelectedTab():
return updateSelectedTab(_that.index);case _GetSowarList():
return getSowarList(_that.context);case _Search():
return search(_that.context,_that.value);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int index)?  updateSelectedTab,TResult? Function( BuildContext context)?  getSowarList,TResult? Function( BuildContext context,  String value)?  search,}) {final _that = this;
switch (_that) {
case _UpdateSelectedTab() when updateSelectedTab != null:
return updateSelectedTab(_that.index);case _GetSowarList() when getSowarList != null:
return getSowarList(_that.context);case _Search() when search != null:
return search(_that.context,_that.value);case _:
  return null;

}
}

}

/// @nodoc


class _UpdateSelectedTab implements QuranPagesIndexEvent {
   _UpdateSelectedTab(this.index);
  

 final  int index;

/// Create a copy of QuranPagesIndexEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateSelectedTabCopyWith<_UpdateSelectedTab> get copyWith => __$UpdateSelectedTabCopyWithImpl<_UpdateSelectedTab>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateSelectedTab&&(identical(other.index, index) || other.index == index));
}


@override
int get hashCode => Object.hash(runtimeType,index);

@override
String toString() {
  return 'QuranPagesIndexEvent.updateSelectedTab(index: $index)';
}


}

/// @nodoc
abstract mixin class _$UpdateSelectedTabCopyWith<$Res> implements $QuranPagesIndexEventCopyWith<$Res> {
  factory _$UpdateSelectedTabCopyWith(_UpdateSelectedTab value, $Res Function(_UpdateSelectedTab) _then) = __$UpdateSelectedTabCopyWithImpl;
@useResult
$Res call({
 int index
});




}
/// @nodoc
class __$UpdateSelectedTabCopyWithImpl<$Res>
    implements _$UpdateSelectedTabCopyWith<$Res> {
  __$UpdateSelectedTabCopyWithImpl(this._self, this._then);

  final _UpdateSelectedTab _self;
  final $Res Function(_UpdateSelectedTab) _then;

/// Create a copy of QuranPagesIndexEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? index = null,}) {
  return _then(_UpdateSelectedTab(
null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _GetSowarList implements QuranPagesIndexEvent {
   _GetSowarList(this.context);
  

 final  BuildContext context;

/// Create a copy of QuranPagesIndexEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetSowarListCopyWith<_GetSowarList> get copyWith => __$GetSowarListCopyWithImpl<_GetSowarList>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetSowarList&&(identical(other.context, context) || other.context == context));
}


@override
int get hashCode => Object.hash(runtimeType,context);

@override
String toString() {
  return 'QuranPagesIndexEvent.getSowarList(context: $context)';
}


}

/// @nodoc
abstract mixin class _$GetSowarListCopyWith<$Res> implements $QuranPagesIndexEventCopyWith<$Res> {
  factory _$GetSowarListCopyWith(_GetSowarList value, $Res Function(_GetSowarList) _then) = __$GetSowarListCopyWithImpl;
@useResult
$Res call({
 BuildContext context
});




}
/// @nodoc
class __$GetSowarListCopyWithImpl<$Res>
    implements _$GetSowarListCopyWith<$Res> {
  __$GetSowarListCopyWithImpl(this._self, this._then);

  final _GetSowarList _self;
  final $Res Function(_GetSowarList) _then;

/// Create a copy of QuranPagesIndexEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? context = null,}) {
  return _then(_GetSowarList(
null == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as BuildContext,
  ));
}


}

/// @nodoc


class _Search implements QuranPagesIndexEvent {
   _Search(this.context, this.value);
  

 final  BuildContext context;
 final  String value;

/// Create a copy of QuranPagesIndexEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchCopyWith<_Search> get copyWith => __$SearchCopyWithImpl<_Search>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Search&&(identical(other.context, context) || other.context == context)&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,context,value);

@override
String toString() {
  return 'QuranPagesIndexEvent.search(context: $context, value: $value)';
}


}

/// @nodoc
abstract mixin class _$SearchCopyWith<$Res> implements $QuranPagesIndexEventCopyWith<$Res> {
  factory _$SearchCopyWith(_Search value, $Res Function(_Search) _then) = __$SearchCopyWithImpl;
@useResult
$Res call({
 BuildContext context, String value
});




}
/// @nodoc
class __$SearchCopyWithImpl<$Res>
    implements _$SearchCopyWith<$Res> {
  __$SearchCopyWithImpl(this._self, this._then);

  final _Search _self;
  final $Res Function(_Search) _then;

/// Create a copy of QuranPagesIndexEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? context = null,Object? value = null,}) {
  return _then(_Search(
null == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as BuildContext,null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$QuranPagesIndexState {

 int get selectedIndex; List<String> get sowarList;
/// Create a copy of QuranPagesIndexState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuranPagesIndexStateCopyWith<QuranPagesIndexState> get copyWith => _$QuranPagesIndexStateCopyWithImpl<QuranPagesIndexState>(this as QuranPagesIndexState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuranPagesIndexState&&(identical(other.selectedIndex, selectedIndex) || other.selectedIndex == selectedIndex)&&const DeepCollectionEquality().equals(other.sowarList, sowarList));
}


@override
int get hashCode => Object.hash(runtimeType,selectedIndex,const DeepCollectionEquality().hash(sowarList));

@override
String toString() {
  return 'QuranPagesIndexState(selectedIndex: $selectedIndex, sowarList: $sowarList)';
}


}

/// @nodoc
abstract mixin class $QuranPagesIndexStateCopyWith<$Res>  {
  factory $QuranPagesIndexStateCopyWith(QuranPagesIndexState value, $Res Function(QuranPagesIndexState) _then) = _$QuranPagesIndexStateCopyWithImpl;
@useResult
$Res call({
 int selectedIndex, List<String> sowarList
});




}
/// @nodoc
class _$QuranPagesIndexStateCopyWithImpl<$Res>
    implements $QuranPagesIndexStateCopyWith<$Res> {
  _$QuranPagesIndexStateCopyWithImpl(this._self, this._then);

  final QuranPagesIndexState _self;
  final $Res Function(QuranPagesIndexState) _then;

/// Create a copy of QuranPagesIndexState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selectedIndex = null,Object? sowarList = null,}) {
  return _then(_self.copyWith(
selectedIndex: null == selectedIndex ? _self.selectedIndex : selectedIndex // ignore: cast_nullable_to_non_nullable
as int,sowarList: null == sowarList ? _self.sowarList : sowarList // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [QuranPagesIndexState].
extension QuranPagesIndexStatePatterns on QuranPagesIndexState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuranPagesIndexState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuranPagesIndexState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuranPagesIndexState value)  $default,){
final _that = this;
switch (_that) {
case _QuranPagesIndexState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuranPagesIndexState value)?  $default,){
final _that = this;
switch (_that) {
case _QuranPagesIndexState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int selectedIndex,  List<String> sowarList)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuranPagesIndexState() when $default != null:
return $default(_that.selectedIndex,_that.sowarList);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int selectedIndex,  List<String> sowarList)  $default,) {final _that = this;
switch (_that) {
case _QuranPagesIndexState():
return $default(_that.selectedIndex,_that.sowarList);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int selectedIndex,  List<String> sowarList)?  $default,) {final _that = this;
switch (_that) {
case _QuranPagesIndexState() when $default != null:
return $default(_that.selectedIndex,_that.sowarList);case _:
  return null;

}
}

}

/// @nodoc


class _QuranPagesIndexState implements QuranPagesIndexState {
  const _QuranPagesIndexState({this.selectedIndex = 0, final  List<String> sowarList = const []}): _sowarList = sowarList;
  

@override@JsonKey() final  int selectedIndex;
 final  List<String> _sowarList;
@override@JsonKey() List<String> get sowarList {
  if (_sowarList is EqualUnmodifiableListView) return _sowarList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sowarList);
}


/// Create a copy of QuranPagesIndexState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuranPagesIndexStateCopyWith<_QuranPagesIndexState> get copyWith => __$QuranPagesIndexStateCopyWithImpl<_QuranPagesIndexState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuranPagesIndexState&&(identical(other.selectedIndex, selectedIndex) || other.selectedIndex == selectedIndex)&&const DeepCollectionEquality().equals(other._sowarList, _sowarList));
}


@override
int get hashCode => Object.hash(runtimeType,selectedIndex,const DeepCollectionEquality().hash(_sowarList));

@override
String toString() {
  return 'QuranPagesIndexState(selectedIndex: $selectedIndex, sowarList: $sowarList)';
}


}

/// @nodoc
abstract mixin class _$QuranPagesIndexStateCopyWith<$Res> implements $QuranPagesIndexStateCopyWith<$Res> {
  factory _$QuranPagesIndexStateCopyWith(_QuranPagesIndexState value, $Res Function(_QuranPagesIndexState) _then) = __$QuranPagesIndexStateCopyWithImpl;
@override @useResult
$Res call({
 int selectedIndex, List<String> sowarList
});




}
/// @nodoc
class __$QuranPagesIndexStateCopyWithImpl<$Res>
    implements _$QuranPagesIndexStateCopyWith<$Res> {
  __$QuranPagesIndexStateCopyWithImpl(this._self, this._then);

  final _QuranPagesIndexState _self;
  final $Res Function(_QuranPagesIndexState) _then;

/// Create a copy of QuranPagesIndexState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selectedIndex = null,Object? sowarList = null,}) {
  return _then(_QuranPagesIndexState(
selectedIndex: null == selectedIndex ? _self.selectedIndex : selectedIndex // ignore: cast_nullable_to_non_nullable
as int,sowarList: null == sowarList ? _self._sowarList : sowarList // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
