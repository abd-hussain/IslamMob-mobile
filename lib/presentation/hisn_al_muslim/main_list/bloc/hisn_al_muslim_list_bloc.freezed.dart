// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hisn_al_muslim_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HisnAlMuslimListEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HisnAlMuslimListEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HisnAlMuslimListEvent()';
}


}

/// @nodoc
class $HisnAlMuslimListEventCopyWith<$Res>  {
$HisnAlMuslimListEventCopyWith(HisnAlMuslimListEvent _, $Res Function(HisnAlMuslimListEvent) __);
}


/// Adds pattern-matching-related methods to [HisnAlMuslimListEvent].
extension HisnAlMuslimListEventPatterns on HisnAlMuslimListEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetListOfAzkar value)?  getListOfAzkar,TResult Function( _UpdateSelectedTab value)?  updateSelectedTab,TResult Function( _AddItemToFavorite value)?  addRemoveItemToFavorite,TResult Function( _Search value)?  search,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetListOfAzkar() when getListOfAzkar != null:
return getListOfAzkar(_that);case _UpdateSelectedTab() when updateSelectedTab != null:
return updateSelectedTab(_that);case _AddItemToFavorite() when addRemoveItemToFavorite != null:
return addRemoveItemToFavorite(_that);case _Search() when search != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetListOfAzkar value)  getListOfAzkar,required TResult Function( _UpdateSelectedTab value)  updateSelectedTab,required TResult Function( _AddItemToFavorite value)  addRemoveItemToFavorite,required TResult Function( _Search value)  search,}){
final _that = this;
switch (_that) {
case _GetListOfAzkar():
return getListOfAzkar(_that);case _UpdateSelectedTab():
return updateSelectedTab(_that);case _AddItemToFavorite():
return addRemoveItemToFavorite(_that);case _Search():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetListOfAzkar value)?  getListOfAzkar,TResult? Function( _UpdateSelectedTab value)?  updateSelectedTab,TResult? Function( _AddItemToFavorite value)?  addRemoveItemToFavorite,TResult? Function( _Search value)?  search,}){
final _that = this;
switch (_that) {
case _GetListOfAzkar() when getListOfAzkar != null:
return getListOfAzkar(_that);case _UpdateSelectedTab() when updateSelectedTab != null:
return updateSelectedTab(_that);case _AddItemToFavorite() when addRemoveItemToFavorite != null:
return addRemoveItemToFavorite(_that);case _Search() when search != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getListOfAzkar,TResult Function( int index)?  updateSelectedTab,TResult Function( HisnAlMuslimModel item)?  addRemoveItemToFavorite,TResult Function( String value)?  search,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetListOfAzkar() when getListOfAzkar != null:
return getListOfAzkar();case _UpdateSelectedTab() when updateSelectedTab != null:
return updateSelectedTab(_that.index);case _AddItemToFavorite() when addRemoveItemToFavorite != null:
return addRemoveItemToFavorite(_that.item);case _Search() when search != null:
return search(_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getListOfAzkar,required TResult Function( int index)  updateSelectedTab,required TResult Function( HisnAlMuslimModel item)  addRemoveItemToFavorite,required TResult Function( String value)  search,}) {final _that = this;
switch (_that) {
case _GetListOfAzkar():
return getListOfAzkar();case _UpdateSelectedTab():
return updateSelectedTab(_that.index);case _AddItemToFavorite():
return addRemoveItemToFavorite(_that.item);case _Search():
return search(_that.value);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getListOfAzkar,TResult? Function( int index)?  updateSelectedTab,TResult? Function( HisnAlMuslimModel item)?  addRemoveItemToFavorite,TResult? Function( String value)?  search,}) {final _that = this;
switch (_that) {
case _GetListOfAzkar() when getListOfAzkar != null:
return getListOfAzkar();case _UpdateSelectedTab() when updateSelectedTab != null:
return updateSelectedTab(_that.index);case _AddItemToFavorite() when addRemoveItemToFavorite != null:
return addRemoveItemToFavorite(_that.item);case _Search() when search != null:
return search(_that.value);case _:
  return null;

}
}

}

/// @nodoc


class _GetListOfAzkar implements HisnAlMuslimListEvent {
  const _GetListOfAzkar();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetListOfAzkar);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HisnAlMuslimListEvent.getListOfAzkar()';
}


}




/// @nodoc


class _UpdateSelectedTab implements HisnAlMuslimListEvent {
   _UpdateSelectedTab(this.index);
  

 final  int index;

/// Create a copy of HisnAlMuslimListEvent
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
  return 'HisnAlMuslimListEvent.updateSelectedTab(index: $index)';
}


}

/// @nodoc
abstract mixin class _$UpdateSelectedTabCopyWith<$Res> implements $HisnAlMuslimListEventCopyWith<$Res> {
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

/// Create a copy of HisnAlMuslimListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? index = null,}) {
  return _then(_UpdateSelectedTab(
null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _AddItemToFavorite implements HisnAlMuslimListEvent {
  const _AddItemToFavorite(this.item);
  

 final  HisnAlMuslimModel item;

/// Create a copy of HisnAlMuslimListEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddItemToFavoriteCopyWith<_AddItemToFavorite> get copyWith => __$AddItemToFavoriteCopyWithImpl<_AddItemToFavorite>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddItemToFavorite&&(identical(other.item, item) || other.item == item));
}


@override
int get hashCode => Object.hash(runtimeType,item);

@override
String toString() {
  return 'HisnAlMuslimListEvent.addRemoveItemToFavorite(item: $item)';
}


}

/// @nodoc
abstract mixin class _$AddItemToFavoriteCopyWith<$Res> implements $HisnAlMuslimListEventCopyWith<$Res> {
  factory _$AddItemToFavoriteCopyWith(_AddItemToFavorite value, $Res Function(_AddItemToFavorite) _then) = __$AddItemToFavoriteCopyWithImpl;
@useResult
$Res call({
 HisnAlMuslimModel item
});


$HisnAlMuslimModelCopyWith<$Res> get item;

}
/// @nodoc
class __$AddItemToFavoriteCopyWithImpl<$Res>
    implements _$AddItemToFavoriteCopyWith<$Res> {
  __$AddItemToFavoriteCopyWithImpl(this._self, this._then);

  final _AddItemToFavorite _self;
  final $Res Function(_AddItemToFavorite) _then;

/// Create a copy of HisnAlMuslimListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? item = null,}) {
  return _then(_AddItemToFavorite(
null == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as HisnAlMuslimModel,
  ));
}

/// Create a copy of HisnAlMuslimListEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HisnAlMuslimModelCopyWith<$Res> get item {
  
  return $HisnAlMuslimModelCopyWith<$Res>(_self.item, (value) {
    return _then(_self.copyWith(item: value));
  });
}
}

/// @nodoc


class _Search implements HisnAlMuslimListEvent {
  const _Search(this.value);
  

 final  String value;

/// Create a copy of HisnAlMuslimListEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchCopyWith<_Search> get copyWith => __$SearchCopyWithImpl<_Search>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Search&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'HisnAlMuslimListEvent.search(value: $value)';
}


}

/// @nodoc
abstract mixin class _$SearchCopyWith<$Res> implements $HisnAlMuslimListEventCopyWith<$Res> {
  factory _$SearchCopyWith(_Search value, $Res Function(_Search) _then) = __$SearchCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class __$SearchCopyWithImpl<$Res>
    implements _$SearchCopyWith<$Res> {
  __$SearchCopyWithImpl(this._self, this._then);

  final _Search _self;
  final $Res Function(_Search) _then;

/// Create a copy of HisnAlMuslimListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_Search(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$HisnAlMuslimListState {

 List<HisnAlMuslimModel> get list; int get selectedIndex; bool get isRtlLanguage;
/// Create a copy of HisnAlMuslimListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HisnAlMuslimListStateCopyWith<HisnAlMuslimListState> get copyWith => _$HisnAlMuslimListStateCopyWithImpl<HisnAlMuslimListState>(this as HisnAlMuslimListState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HisnAlMuslimListState&&const DeepCollectionEquality().equals(other.list, list)&&(identical(other.selectedIndex, selectedIndex) || other.selectedIndex == selectedIndex)&&(identical(other.isRtlLanguage, isRtlLanguage) || other.isRtlLanguage == isRtlLanguage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(list),selectedIndex,isRtlLanguage);

@override
String toString() {
  return 'HisnAlMuslimListState(list: $list, selectedIndex: $selectedIndex, isRtlLanguage: $isRtlLanguage)';
}


}

/// @nodoc
abstract mixin class $HisnAlMuslimListStateCopyWith<$Res>  {
  factory $HisnAlMuslimListStateCopyWith(HisnAlMuslimListState value, $Res Function(HisnAlMuslimListState) _then) = _$HisnAlMuslimListStateCopyWithImpl;
@useResult
$Res call({
 List<HisnAlMuslimModel> list, int selectedIndex, bool isRtlLanguage
});




}
/// @nodoc
class _$HisnAlMuslimListStateCopyWithImpl<$Res>
    implements $HisnAlMuslimListStateCopyWith<$Res> {
  _$HisnAlMuslimListStateCopyWithImpl(this._self, this._then);

  final HisnAlMuslimListState _self;
  final $Res Function(HisnAlMuslimListState) _then;

/// Create a copy of HisnAlMuslimListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? list = null,Object? selectedIndex = null,Object? isRtlLanguage = null,}) {
  return _then(_self.copyWith(
list: null == list ? _self.list : list // ignore: cast_nullable_to_non_nullable
as List<HisnAlMuslimModel>,selectedIndex: null == selectedIndex ? _self.selectedIndex : selectedIndex // ignore: cast_nullable_to_non_nullable
as int,isRtlLanguage: null == isRtlLanguage ? _self.isRtlLanguage : isRtlLanguage // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [HisnAlMuslimListState].
extension HisnAlMuslimListStatePatterns on HisnAlMuslimListState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HisnAlMuslimListState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HisnAlMuslimListState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HisnAlMuslimListState value)  $default,){
final _that = this;
switch (_that) {
case _HisnAlMuslimListState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HisnAlMuslimListState value)?  $default,){
final _that = this;
switch (_that) {
case _HisnAlMuslimListState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<HisnAlMuslimModel> list,  int selectedIndex,  bool isRtlLanguage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HisnAlMuslimListState() when $default != null:
return $default(_that.list,_that.selectedIndex,_that.isRtlLanguage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<HisnAlMuslimModel> list,  int selectedIndex,  bool isRtlLanguage)  $default,) {final _that = this;
switch (_that) {
case _HisnAlMuslimListState():
return $default(_that.list,_that.selectedIndex,_that.isRtlLanguage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<HisnAlMuslimModel> list,  int selectedIndex,  bool isRtlLanguage)?  $default,) {final _that = this;
switch (_that) {
case _HisnAlMuslimListState() when $default != null:
return $default(_that.list,_that.selectedIndex,_that.isRtlLanguage);case _:
  return null;

}
}

}

/// @nodoc


class _HisnAlMuslimListState implements HisnAlMuslimListState {
  const _HisnAlMuslimListState({final  List<HisnAlMuslimModel> list = const [], this.selectedIndex = 0, this.isRtlLanguage = false}): _list = list;
  

 final  List<HisnAlMuslimModel> _list;
@override@JsonKey() List<HisnAlMuslimModel> get list {
  if (_list is EqualUnmodifiableListView) return _list;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_list);
}

@override@JsonKey() final  int selectedIndex;
@override@JsonKey() final  bool isRtlLanguage;

/// Create a copy of HisnAlMuslimListState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HisnAlMuslimListStateCopyWith<_HisnAlMuslimListState> get copyWith => __$HisnAlMuslimListStateCopyWithImpl<_HisnAlMuslimListState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HisnAlMuslimListState&&const DeepCollectionEquality().equals(other._list, _list)&&(identical(other.selectedIndex, selectedIndex) || other.selectedIndex == selectedIndex)&&(identical(other.isRtlLanguage, isRtlLanguage) || other.isRtlLanguage == isRtlLanguage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_list),selectedIndex,isRtlLanguage);

@override
String toString() {
  return 'HisnAlMuslimListState(list: $list, selectedIndex: $selectedIndex, isRtlLanguage: $isRtlLanguage)';
}


}

/// @nodoc
abstract mixin class _$HisnAlMuslimListStateCopyWith<$Res> implements $HisnAlMuslimListStateCopyWith<$Res> {
  factory _$HisnAlMuslimListStateCopyWith(_HisnAlMuslimListState value, $Res Function(_HisnAlMuslimListState) _then) = __$HisnAlMuslimListStateCopyWithImpl;
@override @useResult
$Res call({
 List<HisnAlMuslimModel> list, int selectedIndex, bool isRtlLanguage
});




}
/// @nodoc
class __$HisnAlMuslimListStateCopyWithImpl<$Res>
    implements _$HisnAlMuslimListStateCopyWith<$Res> {
  __$HisnAlMuslimListStateCopyWithImpl(this._self, this._then);

  final _HisnAlMuslimListState _self;
  final $Res Function(_HisnAlMuslimListState) _then;

/// Create a copy of HisnAlMuslimListState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? list = null,Object? selectedIndex = null,Object? isRtlLanguage = null,}) {
  return _then(_HisnAlMuslimListState(
list: null == list ? _self._list : list // ignore: cast_nullable_to_non_nullable
as List<HisnAlMuslimModel>,selectedIndex: null == selectedIndex ? _self.selectedIndex : selectedIndex // ignore: cast_nullable_to_non_nullable
as int,isRtlLanguage: null == isRtlLanguage ? _self.isRtlLanguage : isRtlLanguage // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
