// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hisn_al_muslim_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HisnAlMuslimDetailsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HisnAlMuslimDetailsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HisnAlMuslimDetailsEvent()';
}


}

/// @nodoc
class $HisnAlMuslimDetailsEventCopyWith<$Res>  {
$HisnAlMuslimDetailsEventCopyWith(HisnAlMuslimDetailsEvent _, $Res Function(HisnAlMuslimDetailsEvent) __);
}


/// Adds pattern-matching-related methods to [HisnAlMuslimDetailsEvent].
extension HisnAlMuslimDetailsEventPatterns on HisnAlMuslimDetailsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _FillInitialValue value)?  fillInitialValue,TResult Function( _UpdateFavoriteItem value)?  updateFavoriteItem,TResult Function( _UpdateTextToShare value)?  updateTextToShare,TResult Function( _ShareItem value)?  shareItem,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FillInitialValue() when fillInitialValue != null:
return fillInitialValue(_that);case _UpdateFavoriteItem() when updateFavoriteItem != null:
return updateFavoriteItem(_that);case _UpdateTextToShare() when updateTextToShare != null:
return updateTextToShare(_that);case _ShareItem() when shareItem != null:
return shareItem(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _FillInitialValue value)  fillInitialValue,required TResult Function( _UpdateFavoriteItem value)  updateFavoriteItem,required TResult Function( _UpdateTextToShare value)  updateTextToShare,required TResult Function( _ShareItem value)  shareItem,}){
final _that = this;
switch (_that) {
case _FillInitialValue():
return fillInitialValue(_that);case _UpdateFavoriteItem():
return updateFavoriteItem(_that);case _UpdateTextToShare():
return updateTextToShare(_that);case _ShareItem():
return shareItem(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _FillInitialValue value)?  fillInitialValue,TResult? Function( _UpdateFavoriteItem value)?  updateFavoriteItem,TResult? Function( _UpdateTextToShare value)?  updateTextToShare,TResult? Function( _ShareItem value)?  shareItem,}){
final _that = this;
switch (_that) {
case _FillInitialValue() when fillInitialValue != null:
return fillInitialValue(_that);case _UpdateFavoriteItem() when updateFavoriteItem != null:
return updateFavoriteItem(_that);case _UpdateTextToShare() when updateTextToShare != null:
return updateTextToShare(_that);case _ShareItem() when shareItem != null:
return shareItem(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( HisnAlMuslimModel? item)?  fillInitialValue,TResult Function()?  updateFavoriteItem,TResult Function( String description)?  updateTextToShare,TResult Function( String title)?  shareItem,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FillInitialValue() when fillInitialValue != null:
return fillInitialValue(_that.item);case _UpdateFavoriteItem() when updateFavoriteItem != null:
return updateFavoriteItem();case _UpdateTextToShare() when updateTextToShare != null:
return updateTextToShare(_that.description);case _ShareItem() when shareItem != null:
return shareItem(_that.title);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( HisnAlMuslimModel? item)  fillInitialValue,required TResult Function()  updateFavoriteItem,required TResult Function( String description)  updateTextToShare,required TResult Function( String title)  shareItem,}) {final _that = this;
switch (_that) {
case _FillInitialValue():
return fillInitialValue(_that.item);case _UpdateFavoriteItem():
return updateFavoriteItem();case _UpdateTextToShare():
return updateTextToShare(_that.description);case _ShareItem():
return shareItem(_that.title);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( HisnAlMuslimModel? item)?  fillInitialValue,TResult? Function()?  updateFavoriteItem,TResult? Function( String description)?  updateTextToShare,TResult? Function( String title)?  shareItem,}) {final _that = this;
switch (_that) {
case _FillInitialValue() when fillInitialValue != null:
return fillInitialValue(_that.item);case _UpdateFavoriteItem() when updateFavoriteItem != null:
return updateFavoriteItem();case _UpdateTextToShare() when updateTextToShare != null:
return updateTextToShare(_that.description);case _ShareItem() when shareItem != null:
return shareItem(_that.title);case _:
  return null;

}
}

}

/// @nodoc


class _FillInitialValue implements HisnAlMuslimDetailsEvent {
  const _FillInitialValue(this.item);
  

 final  HisnAlMuslimModel? item;

/// Create a copy of HisnAlMuslimDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FillInitialValueCopyWith<_FillInitialValue> get copyWith => __$FillInitialValueCopyWithImpl<_FillInitialValue>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FillInitialValue&&(identical(other.item, item) || other.item == item));
}


@override
int get hashCode => Object.hash(runtimeType,item);

@override
String toString() {
  return 'HisnAlMuslimDetailsEvent.fillInitialValue(item: $item)';
}


}

/// @nodoc
abstract mixin class _$FillInitialValueCopyWith<$Res> implements $HisnAlMuslimDetailsEventCopyWith<$Res> {
  factory _$FillInitialValueCopyWith(_FillInitialValue value, $Res Function(_FillInitialValue) _then) = __$FillInitialValueCopyWithImpl;
@useResult
$Res call({
 HisnAlMuslimModel? item
});


$HisnAlMuslimModelCopyWith<$Res>? get item;

}
/// @nodoc
class __$FillInitialValueCopyWithImpl<$Res>
    implements _$FillInitialValueCopyWith<$Res> {
  __$FillInitialValueCopyWithImpl(this._self, this._then);

  final _FillInitialValue _self;
  final $Res Function(_FillInitialValue) _then;

/// Create a copy of HisnAlMuslimDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? item = freezed,}) {
  return _then(_FillInitialValue(
freezed == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as HisnAlMuslimModel?,
  ));
}

/// Create a copy of HisnAlMuslimDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HisnAlMuslimModelCopyWith<$Res>? get item {
    if (_self.item == null) {
    return null;
  }

  return $HisnAlMuslimModelCopyWith<$Res>(_self.item!, (value) {
    return _then(_self.copyWith(item: value));
  });
}
}

/// @nodoc


class _UpdateFavoriteItem implements HisnAlMuslimDetailsEvent {
  const _UpdateFavoriteItem();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateFavoriteItem);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HisnAlMuslimDetailsEvent.updateFavoriteItem()';
}


}




/// @nodoc


class _UpdateTextToShare implements HisnAlMuslimDetailsEvent {
  const _UpdateTextToShare({required this.description});
  

 final  String description;

/// Create a copy of HisnAlMuslimDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateTextToShareCopyWith<_UpdateTextToShare> get copyWith => __$UpdateTextToShareCopyWithImpl<_UpdateTextToShare>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateTextToShare&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,description);

@override
String toString() {
  return 'HisnAlMuslimDetailsEvent.updateTextToShare(description: $description)';
}


}

/// @nodoc
abstract mixin class _$UpdateTextToShareCopyWith<$Res> implements $HisnAlMuslimDetailsEventCopyWith<$Res> {
  factory _$UpdateTextToShareCopyWith(_UpdateTextToShare value, $Res Function(_UpdateTextToShare) _then) = __$UpdateTextToShareCopyWithImpl;
@useResult
$Res call({
 String description
});




}
/// @nodoc
class __$UpdateTextToShareCopyWithImpl<$Res>
    implements _$UpdateTextToShareCopyWith<$Res> {
  __$UpdateTextToShareCopyWithImpl(this._self, this._then);

  final _UpdateTextToShare _self;
  final $Res Function(_UpdateTextToShare) _then;

/// Create a copy of HisnAlMuslimDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? description = null,}) {
  return _then(_UpdateTextToShare(
description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ShareItem implements HisnAlMuslimDetailsEvent {
  const _ShareItem({required this.title});
  

 final  String title;

/// Create a copy of HisnAlMuslimDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShareItemCopyWith<_ShareItem> get copyWith => __$ShareItemCopyWithImpl<_ShareItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShareItem&&(identical(other.title, title) || other.title == title));
}


@override
int get hashCode => Object.hash(runtimeType,title);

@override
String toString() {
  return 'HisnAlMuslimDetailsEvent.shareItem(title: $title)';
}


}

/// @nodoc
abstract mixin class _$ShareItemCopyWith<$Res> implements $HisnAlMuslimDetailsEventCopyWith<$Res> {
  factory _$ShareItemCopyWith(_ShareItem value, $Res Function(_ShareItem) _then) = __$ShareItemCopyWithImpl;
@useResult
$Res call({
 String title
});




}
/// @nodoc
class __$ShareItemCopyWithImpl<$Res>
    implements _$ShareItemCopyWith<$Res> {
  __$ShareItemCopyWithImpl(this._self, this._then);

  final _ShareItem _self;
  final $Res Function(_ShareItem) _then;

/// Create a copy of HisnAlMuslimDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? title = null,}) {
  return _then(_ShareItem(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$HisnAlMuslimDetailsState {

 HisnAlMuslimModel? get item; dynamic get textToShare; bool get isRtlLanguage;
/// Create a copy of HisnAlMuslimDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HisnAlMuslimDetailsStateCopyWith<HisnAlMuslimDetailsState> get copyWith => _$HisnAlMuslimDetailsStateCopyWithImpl<HisnAlMuslimDetailsState>(this as HisnAlMuslimDetailsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HisnAlMuslimDetailsState&&(identical(other.item, item) || other.item == item)&&const DeepCollectionEquality().equals(other.textToShare, textToShare)&&(identical(other.isRtlLanguage, isRtlLanguage) || other.isRtlLanguage == isRtlLanguage));
}


@override
int get hashCode => Object.hash(runtimeType,item,const DeepCollectionEquality().hash(textToShare),isRtlLanguage);

@override
String toString() {
  return 'HisnAlMuslimDetailsState(item: $item, textToShare: $textToShare, isRtlLanguage: $isRtlLanguage)';
}


}

/// @nodoc
abstract mixin class $HisnAlMuslimDetailsStateCopyWith<$Res>  {
  factory $HisnAlMuslimDetailsStateCopyWith(HisnAlMuslimDetailsState value, $Res Function(HisnAlMuslimDetailsState) _then) = _$HisnAlMuslimDetailsStateCopyWithImpl;
@useResult
$Res call({
 HisnAlMuslimModel? item, dynamic textToShare, bool isRtlLanguage
});


$HisnAlMuslimModelCopyWith<$Res>? get item;

}
/// @nodoc
class _$HisnAlMuslimDetailsStateCopyWithImpl<$Res>
    implements $HisnAlMuslimDetailsStateCopyWith<$Res> {
  _$HisnAlMuslimDetailsStateCopyWithImpl(this._self, this._then);

  final HisnAlMuslimDetailsState _self;
  final $Res Function(HisnAlMuslimDetailsState) _then;

/// Create a copy of HisnAlMuslimDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? item = freezed,Object? textToShare = freezed,Object? isRtlLanguage = null,}) {
  return _then(_self.copyWith(
item: freezed == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as HisnAlMuslimModel?,textToShare: freezed == textToShare ? _self.textToShare : textToShare // ignore: cast_nullable_to_non_nullable
as dynamic,isRtlLanguage: null == isRtlLanguage ? _self.isRtlLanguage : isRtlLanguage // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of HisnAlMuslimDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HisnAlMuslimModelCopyWith<$Res>? get item {
    if (_self.item == null) {
    return null;
  }

  return $HisnAlMuslimModelCopyWith<$Res>(_self.item!, (value) {
    return _then(_self.copyWith(item: value));
  });
}
}


/// Adds pattern-matching-related methods to [HisnAlMuslimDetailsState].
extension HisnAlMuslimDetailsStatePatterns on HisnAlMuslimDetailsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HisnAlMuslimDetailsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HisnAlMuslimDetailsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HisnAlMuslimDetailsState value)  $default,){
final _that = this;
switch (_that) {
case _HisnAlMuslimDetailsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HisnAlMuslimDetailsState value)?  $default,){
final _that = this;
switch (_that) {
case _HisnAlMuslimDetailsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( HisnAlMuslimModel? item,  dynamic textToShare,  bool isRtlLanguage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HisnAlMuslimDetailsState() when $default != null:
return $default(_that.item,_that.textToShare,_that.isRtlLanguage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( HisnAlMuslimModel? item,  dynamic textToShare,  bool isRtlLanguage)  $default,) {final _that = this;
switch (_that) {
case _HisnAlMuslimDetailsState():
return $default(_that.item,_that.textToShare,_that.isRtlLanguage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( HisnAlMuslimModel? item,  dynamic textToShare,  bool isRtlLanguage)?  $default,) {final _that = this;
switch (_that) {
case _HisnAlMuslimDetailsState() when $default != null:
return $default(_that.item,_that.textToShare,_that.isRtlLanguage);case _:
  return null;

}
}

}

/// @nodoc


class _HisnAlMuslimDetailsState implements HisnAlMuslimDetailsState {
  const _HisnAlMuslimDetailsState({this.item, this.textToShare = "", this.isRtlLanguage = false});
  

@override final  HisnAlMuslimModel? item;
@override@JsonKey() final  dynamic textToShare;
@override@JsonKey() final  bool isRtlLanguage;

/// Create a copy of HisnAlMuslimDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HisnAlMuslimDetailsStateCopyWith<_HisnAlMuslimDetailsState> get copyWith => __$HisnAlMuslimDetailsStateCopyWithImpl<_HisnAlMuslimDetailsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HisnAlMuslimDetailsState&&(identical(other.item, item) || other.item == item)&&const DeepCollectionEquality().equals(other.textToShare, textToShare)&&(identical(other.isRtlLanguage, isRtlLanguage) || other.isRtlLanguage == isRtlLanguage));
}


@override
int get hashCode => Object.hash(runtimeType,item,const DeepCollectionEquality().hash(textToShare),isRtlLanguage);

@override
String toString() {
  return 'HisnAlMuslimDetailsState(item: $item, textToShare: $textToShare, isRtlLanguage: $isRtlLanguage)';
}


}

/// @nodoc
abstract mixin class _$HisnAlMuslimDetailsStateCopyWith<$Res> implements $HisnAlMuslimDetailsStateCopyWith<$Res> {
  factory _$HisnAlMuslimDetailsStateCopyWith(_HisnAlMuslimDetailsState value, $Res Function(_HisnAlMuslimDetailsState) _then) = __$HisnAlMuslimDetailsStateCopyWithImpl;
@override @useResult
$Res call({
 HisnAlMuslimModel? item, dynamic textToShare, bool isRtlLanguage
});


@override $HisnAlMuslimModelCopyWith<$Res>? get item;

}
/// @nodoc
class __$HisnAlMuslimDetailsStateCopyWithImpl<$Res>
    implements _$HisnAlMuslimDetailsStateCopyWith<$Res> {
  __$HisnAlMuslimDetailsStateCopyWithImpl(this._self, this._then);

  final _HisnAlMuslimDetailsState _self;
  final $Res Function(_HisnAlMuslimDetailsState) _then;

/// Create a copy of HisnAlMuslimDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? item = freezed,Object? textToShare = freezed,Object? isRtlLanguage = null,}) {
  return _then(_HisnAlMuslimDetailsState(
item: freezed == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as HisnAlMuslimModel?,textToShare: freezed == textToShare ? _self.textToShare : textToShare // ignore: cast_nullable_to_non_nullable
as dynamic,isRtlLanguage: null == isRtlLanguage ? _self.isRtlLanguage : isRtlLanguage // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of HisnAlMuslimDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HisnAlMuslimModelCopyWith<$Res>? get item {
    if (_self.item == null) {
    return null;
  }

  return $HisnAlMuslimModelCopyWith<$Res>(_self.item!, (value) {
    return _then(_self.copyWith(item: value));
  });
}
}

// dart format on
