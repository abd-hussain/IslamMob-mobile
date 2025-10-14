// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hisn_al_muslim.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HisnAlMuslimModel {

 int get id; MultiLanguageString get title; HisnAlMuslimModelState get details; bool get isFavorite;
/// Create a copy of HisnAlMuslimModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HisnAlMuslimModelCopyWith<HisnAlMuslimModel> get copyWith => _$HisnAlMuslimModelCopyWithImpl<HisnAlMuslimModel>(this as HisnAlMuslimModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HisnAlMuslimModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.details, details) || other.details == details)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,details,isFavorite);

@override
String toString() {
  return 'HisnAlMuslimModel(id: $id, title: $title, details: $details, isFavorite: $isFavorite)';
}


}

/// @nodoc
abstract mixin class $HisnAlMuslimModelCopyWith<$Res>  {
  factory $HisnAlMuslimModelCopyWith(HisnAlMuslimModel value, $Res Function(HisnAlMuslimModel) _then) = _$HisnAlMuslimModelCopyWithImpl;
@useResult
$Res call({
 int id, MultiLanguageString title, HisnAlMuslimModelState details, bool isFavorite
});


$HisnAlMuslimModelStateCopyWith<$Res> get details;

}
/// @nodoc
class _$HisnAlMuslimModelCopyWithImpl<$Res>
    implements $HisnAlMuslimModelCopyWith<$Res> {
  _$HisnAlMuslimModelCopyWithImpl(this._self, this._then);

  final HisnAlMuslimModel _self;
  final $Res Function(HisnAlMuslimModel) _then;

/// Create a copy of HisnAlMuslimModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? details = null,Object? isFavorite = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as MultiLanguageString,details: null == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as HisnAlMuslimModelState,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of HisnAlMuslimModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HisnAlMuslimModelStateCopyWith<$Res> get details {
  
  return $HisnAlMuslimModelStateCopyWith<$Res>(_self.details, (value) {
    return _then(_self.copyWith(details: value));
  });
}
}


/// Adds pattern-matching-related methods to [HisnAlMuslimModel].
extension HisnAlMuslimModelPatterns on HisnAlMuslimModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HisnAlMuslimModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HisnAlMuslimModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HisnAlMuslimModel value)  $default,){
final _that = this;
switch (_that) {
case _HisnAlMuslimModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HisnAlMuslimModel value)?  $default,){
final _that = this;
switch (_that) {
case _HisnAlMuslimModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  MultiLanguageString title,  HisnAlMuslimModelState details,  bool isFavorite)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HisnAlMuslimModel() when $default != null:
return $default(_that.id,_that.title,_that.details,_that.isFavorite);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  MultiLanguageString title,  HisnAlMuslimModelState details,  bool isFavorite)  $default,) {final _that = this;
switch (_that) {
case _HisnAlMuslimModel():
return $default(_that.id,_that.title,_that.details,_that.isFavorite);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  MultiLanguageString title,  HisnAlMuslimModelState details,  bool isFavorite)?  $default,) {final _that = this;
switch (_that) {
case _HisnAlMuslimModel() when $default != null:
return $default(_that.id,_that.title,_that.details,_that.isFavorite);case _:
  return null;

}
}

}

/// @nodoc


class _HisnAlMuslimModel implements HisnAlMuslimModel {
   _HisnAlMuslimModel({required this.id, required this.title, required this.details, this.isFavorite = false});
  

@override final  int id;
@override final  MultiLanguageString title;
@override final  HisnAlMuslimModelState details;
@override@JsonKey() final  bool isFavorite;

/// Create a copy of HisnAlMuslimModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HisnAlMuslimModelCopyWith<_HisnAlMuslimModel> get copyWith => __$HisnAlMuslimModelCopyWithImpl<_HisnAlMuslimModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HisnAlMuslimModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.details, details) || other.details == details)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,details,isFavorite);

@override
String toString() {
  return 'HisnAlMuslimModel(id: $id, title: $title, details: $details, isFavorite: $isFavorite)';
}


}

/// @nodoc
abstract mixin class _$HisnAlMuslimModelCopyWith<$Res> implements $HisnAlMuslimModelCopyWith<$Res> {
  factory _$HisnAlMuslimModelCopyWith(_HisnAlMuslimModel value, $Res Function(_HisnAlMuslimModel) _then) = __$HisnAlMuslimModelCopyWithImpl;
@override @useResult
$Res call({
 int id, MultiLanguageString title, HisnAlMuslimModelState details, bool isFavorite
});


@override $HisnAlMuslimModelStateCopyWith<$Res> get details;

}
/// @nodoc
class __$HisnAlMuslimModelCopyWithImpl<$Res>
    implements _$HisnAlMuslimModelCopyWith<$Res> {
  __$HisnAlMuslimModelCopyWithImpl(this._self, this._then);

  final _HisnAlMuslimModel _self;
  final $Res Function(_HisnAlMuslimModel) _then;

/// Create a copy of HisnAlMuslimModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? details = null,Object? isFavorite = null,}) {
  return _then(_HisnAlMuslimModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as MultiLanguageString,details: null == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as HisnAlMuslimModelState,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of HisnAlMuslimModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HisnAlMuslimModelStateCopyWith<$Res> get details {
  
  return $HisnAlMuslimModelStateCopyWith<$Res>(_self.details, (value) {
    return _then(_self.copyWith(details: value));
  });
}
}

/// @nodoc
mixin _$HisnAlMuslimModelState {

 List<Object> get list;



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HisnAlMuslimModelState&&const DeepCollectionEquality().equals(other.list, list));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(list));

@override
String toString() {
  return 'HisnAlMuslimModelState(list: $list)';
}


}

/// @nodoc
class $HisnAlMuslimModelStateCopyWith<$Res>  {
$HisnAlMuslimModelStateCopyWith(HisnAlMuslimModelState _, $Res Function(HisnAlMuslimModelState) __);
}


/// Adds pattern-matching-related methods to [HisnAlMuslimModelState].
extension HisnAlMuslimModelStatePatterns on HisnAlMuslimModelState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( HisnAlMuslimModelStateText value)?  text,TResult Function( HisnAlMuslimModelStateCounter value)?  counter,required TResult orElse(),}){
final _that = this;
switch (_that) {
case HisnAlMuslimModelStateText() when text != null:
return text(_that);case HisnAlMuslimModelStateCounter() when counter != null:
return counter(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( HisnAlMuslimModelStateText value)  text,required TResult Function( HisnAlMuslimModelStateCounter value)  counter,}){
final _that = this;
switch (_that) {
case HisnAlMuslimModelStateText():
return text(_that);case HisnAlMuslimModelStateCounter():
return counter(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( HisnAlMuslimModelStateText value)?  text,TResult? Function( HisnAlMuslimModelStateCounter value)?  counter,}){
final _that = this;
switch (_that) {
case HisnAlMuslimModelStateText() when text != null:
return text(_that);case HisnAlMuslimModelStateCounter() when counter != null:
return counter(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( List<MultiLanguageString> list,  List<MultiLanguageString> referance)?  text,TResult Function( List<HisnAlMuslimCounterDetailsModel> list)?  counter,required TResult orElse(),}) {final _that = this;
switch (_that) {
case HisnAlMuslimModelStateText() when text != null:
return text(_that.list,_that.referance);case HisnAlMuslimModelStateCounter() when counter != null:
return counter(_that.list);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( List<MultiLanguageString> list,  List<MultiLanguageString> referance)  text,required TResult Function( List<HisnAlMuslimCounterDetailsModel> list)  counter,}) {final _that = this;
switch (_that) {
case HisnAlMuslimModelStateText():
return text(_that.list,_that.referance);case HisnAlMuslimModelStateCounter():
return counter(_that.list);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( List<MultiLanguageString> list,  List<MultiLanguageString> referance)?  text,TResult? Function( List<HisnAlMuslimCounterDetailsModel> list)?  counter,}) {final _that = this;
switch (_that) {
case HisnAlMuslimModelStateText() when text != null:
return text(_that.list,_that.referance);case HisnAlMuslimModelStateCounter() when counter != null:
return counter(_that.list);case _:
  return null;

}
}

}

/// @nodoc


class HisnAlMuslimModelStateText implements HisnAlMuslimModelState {
  const HisnAlMuslimModelStateText({required final  List<MultiLanguageString> list, required final  List<MultiLanguageString> referance}): _list = list,_referance = referance;
  

 final  List<MultiLanguageString> _list;
@override List<MultiLanguageString> get list {
  if (_list is EqualUnmodifiableListView) return _list;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_list);
}

 final  List<MultiLanguageString> _referance;
 List<MultiLanguageString> get referance {
  if (_referance is EqualUnmodifiableListView) return _referance;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_referance);
}


/// Create a copy of HisnAlMuslimModelState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HisnAlMuslimModelStateTextCopyWith<HisnAlMuslimModelStateText> get copyWith => _$HisnAlMuslimModelStateTextCopyWithImpl<HisnAlMuslimModelStateText>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HisnAlMuslimModelStateText&&const DeepCollectionEquality().equals(other._list, _list)&&const DeepCollectionEquality().equals(other._referance, _referance));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_list),const DeepCollectionEquality().hash(_referance));

@override
String toString() {
  return 'HisnAlMuslimModelState.text(list: $list, referance: $referance)';
}


}

/// @nodoc
abstract mixin class $HisnAlMuslimModelStateTextCopyWith<$Res> implements $HisnAlMuslimModelStateCopyWith<$Res> {
  factory $HisnAlMuslimModelStateTextCopyWith(HisnAlMuslimModelStateText value, $Res Function(HisnAlMuslimModelStateText) _then) = _$HisnAlMuslimModelStateTextCopyWithImpl;
@useResult
$Res call({
 List<MultiLanguageString> list, List<MultiLanguageString> referance
});




}
/// @nodoc
class _$HisnAlMuslimModelStateTextCopyWithImpl<$Res>
    implements $HisnAlMuslimModelStateTextCopyWith<$Res> {
  _$HisnAlMuslimModelStateTextCopyWithImpl(this._self, this._then);

  final HisnAlMuslimModelStateText _self;
  final $Res Function(HisnAlMuslimModelStateText) _then;

/// Create a copy of HisnAlMuslimModelState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? list = null,Object? referance = null,}) {
  return _then(HisnAlMuslimModelStateText(
list: null == list ? _self._list : list // ignore: cast_nullable_to_non_nullable
as List<MultiLanguageString>,referance: null == referance ? _self._referance : referance // ignore: cast_nullable_to_non_nullable
as List<MultiLanguageString>,
  ));
}


}

/// @nodoc


class HisnAlMuslimModelStateCounter implements HisnAlMuslimModelState {
  const HisnAlMuslimModelStateCounter(final  List<HisnAlMuslimCounterDetailsModel> list): _list = list;
  

 final  List<HisnAlMuslimCounterDetailsModel> _list;
@override List<HisnAlMuslimCounterDetailsModel> get list {
  if (_list is EqualUnmodifiableListView) return _list;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_list);
}


/// Create a copy of HisnAlMuslimModelState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HisnAlMuslimModelStateCounterCopyWith<HisnAlMuslimModelStateCounter> get copyWith => _$HisnAlMuslimModelStateCounterCopyWithImpl<HisnAlMuslimModelStateCounter>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HisnAlMuslimModelStateCounter&&const DeepCollectionEquality().equals(other._list, _list));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_list));

@override
String toString() {
  return 'HisnAlMuslimModelState.counter(list: $list)';
}


}

/// @nodoc
abstract mixin class $HisnAlMuslimModelStateCounterCopyWith<$Res> implements $HisnAlMuslimModelStateCopyWith<$Res> {
  factory $HisnAlMuslimModelStateCounterCopyWith(HisnAlMuslimModelStateCounter value, $Res Function(HisnAlMuslimModelStateCounter) _then) = _$HisnAlMuslimModelStateCounterCopyWithImpl;
@useResult
$Res call({
 List<HisnAlMuslimCounterDetailsModel> list
});




}
/// @nodoc
class _$HisnAlMuslimModelStateCounterCopyWithImpl<$Res>
    implements $HisnAlMuslimModelStateCounterCopyWith<$Res> {
  _$HisnAlMuslimModelStateCounterCopyWithImpl(this._self, this._then);

  final HisnAlMuslimModelStateCounter _self;
  final $Res Function(HisnAlMuslimModelStateCounter) _then;

/// Create a copy of HisnAlMuslimModelState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? list = null,}) {
  return _then(HisnAlMuslimModelStateCounter(
null == list ? _self._list : list // ignore: cast_nullable_to_non_nullable
as List<HisnAlMuslimCounterDetailsModel>,
  ));
}


}

// dart format on
