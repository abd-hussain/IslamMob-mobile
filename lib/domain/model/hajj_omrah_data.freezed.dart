// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hajj_omrah_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HajjOmrahData {

 int get id; MultiLanguageString get title; String get mainImagePath; Map<String, List<String>> get details;
/// Create a copy of HajjOmrahData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HajjOmrahDataCopyWith<HajjOmrahData> get copyWith => _$HajjOmrahDataCopyWithImpl<HajjOmrahData>(this as HajjOmrahData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HajjOmrahData&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.mainImagePath, mainImagePath) || other.mainImagePath == mainImagePath)&&const DeepCollectionEquality().equals(other.details, details));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,mainImagePath,const DeepCollectionEquality().hash(details));

@override
String toString() {
  return 'HajjOmrahData(id: $id, title: $title, mainImagePath: $mainImagePath, details: $details)';
}


}

/// @nodoc
abstract mixin class $HajjOmrahDataCopyWith<$Res>  {
  factory $HajjOmrahDataCopyWith(HajjOmrahData value, $Res Function(HajjOmrahData) _then) = _$HajjOmrahDataCopyWithImpl;
@useResult
$Res call({
 int id, MultiLanguageString title, String mainImagePath, Map<String, List<String>> details
});




}
/// @nodoc
class _$HajjOmrahDataCopyWithImpl<$Res>
    implements $HajjOmrahDataCopyWith<$Res> {
  _$HajjOmrahDataCopyWithImpl(this._self, this._then);

  final HajjOmrahData _self;
  final $Res Function(HajjOmrahData) _then;

/// Create a copy of HajjOmrahData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? mainImagePath = null,Object? details = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as MultiLanguageString,mainImagePath: null == mainImagePath ? _self.mainImagePath : mainImagePath // ignore: cast_nullable_to_non_nullable
as String,details: null == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as Map<String, List<String>>,
  ));
}

}


/// Adds pattern-matching-related methods to [HajjOmrahData].
extension HajjOmrahDataPatterns on HajjOmrahData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HajjOmrahData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HajjOmrahData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HajjOmrahData value)  $default,){
final _that = this;
switch (_that) {
case _HajjOmrahData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HajjOmrahData value)?  $default,){
final _that = this;
switch (_that) {
case _HajjOmrahData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  MultiLanguageString title,  String mainImagePath,  Map<String, List<String>> details)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HajjOmrahData() when $default != null:
return $default(_that.id,_that.title,_that.mainImagePath,_that.details);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  MultiLanguageString title,  String mainImagePath,  Map<String, List<String>> details)  $default,) {final _that = this;
switch (_that) {
case _HajjOmrahData():
return $default(_that.id,_that.title,_that.mainImagePath,_that.details);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  MultiLanguageString title,  String mainImagePath,  Map<String, List<String>> details)?  $default,) {final _that = this;
switch (_that) {
case _HajjOmrahData() when $default != null:
return $default(_that.id,_that.title,_that.mainImagePath,_that.details);case _:
  return null;

}
}

}

/// @nodoc


class _HajjOmrahData implements HajjOmrahData {
   _HajjOmrahData({required this.id, required this.title, required this.mainImagePath, required final  Map<String, List<String>> details}): _details = details;
  

@override final  int id;
@override final  MultiLanguageString title;
@override final  String mainImagePath;
 final  Map<String, List<String>> _details;
@override Map<String, List<String>> get details {
  if (_details is EqualUnmodifiableMapView) return _details;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_details);
}


/// Create a copy of HajjOmrahData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HajjOmrahDataCopyWith<_HajjOmrahData> get copyWith => __$HajjOmrahDataCopyWithImpl<_HajjOmrahData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HajjOmrahData&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.mainImagePath, mainImagePath) || other.mainImagePath == mainImagePath)&&const DeepCollectionEquality().equals(other._details, _details));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,mainImagePath,const DeepCollectionEquality().hash(_details));

@override
String toString() {
  return 'HajjOmrahData(id: $id, title: $title, mainImagePath: $mainImagePath, details: $details)';
}


}

/// @nodoc
abstract mixin class _$HajjOmrahDataCopyWith<$Res> implements $HajjOmrahDataCopyWith<$Res> {
  factory _$HajjOmrahDataCopyWith(_HajjOmrahData value, $Res Function(_HajjOmrahData) _then) = __$HajjOmrahDataCopyWithImpl;
@override @useResult
$Res call({
 int id, MultiLanguageString title, String mainImagePath, Map<String, List<String>> details
});




}
/// @nodoc
class __$HajjOmrahDataCopyWithImpl<$Res>
    implements _$HajjOmrahDataCopyWith<$Res> {
  __$HajjOmrahDataCopyWithImpl(this._self, this._then);

  final _HajjOmrahData _self;
  final $Res Function(_HajjOmrahData) _then;

/// Create a copy of HajjOmrahData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? mainImagePath = null,Object? details = null,}) {
  return _then(_HajjOmrahData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as MultiLanguageString,mainImagePath: null == mainImagePath ? _self.mainImagePath : mainImagePath // ignore: cast_nullable_to_non_nullable
as String,details: null == details ? _self._details : details // ignore: cast_nullable_to_non_nullable
as Map<String, List<String>>,
  ));
}


}

// dart format on
