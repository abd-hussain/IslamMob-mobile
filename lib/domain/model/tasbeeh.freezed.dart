// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tasbeeh.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TasbeehModel {

 int get id; String get title; String get desc; int get maxCount; int get currentCount;
/// Create a copy of TasbeehModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TasbeehModelCopyWith<TasbeehModel> get copyWith => _$TasbeehModelCopyWithImpl<TasbeehModel>(this as TasbeehModel, _$identity);

  /// Serializes this TasbeehModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TasbeehModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.desc, desc) || other.desc == desc)&&(identical(other.maxCount, maxCount) || other.maxCount == maxCount)&&(identical(other.currentCount, currentCount) || other.currentCount == currentCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,desc,maxCount,currentCount);

@override
String toString() {
  return 'TasbeehModel(id: $id, title: $title, desc: $desc, maxCount: $maxCount, currentCount: $currentCount)';
}


}

/// @nodoc
abstract mixin class $TasbeehModelCopyWith<$Res>  {
  factory $TasbeehModelCopyWith(TasbeehModel value, $Res Function(TasbeehModel) _then) = _$TasbeehModelCopyWithImpl;
@useResult
$Res call({
 int id, String title, String desc, int maxCount, int currentCount
});




}
/// @nodoc
class _$TasbeehModelCopyWithImpl<$Res>
    implements $TasbeehModelCopyWith<$Res> {
  _$TasbeehModelCopyWithImpl(this._self, this._then);

  final TasbeehModel _self;
  final $Res Function(TasbeehModel) _then;

/// Create a copy of TasbeehModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? desc = null,Object? maxCount = null,Object? currentCount = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,desc: null == desc ? _self.desc : desc // ignore: cast_nullable_to_non_nullable
as String,maxCount: null == maxCount ? _self.maxCount : maxCount // ignore: cast_nullable_to_non_nullable
as int,currentCount: null == currentCount ? _self.currentCount : currentCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [TasbeehModel].
extension TasbeehModelPatterns on TasbeehModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TasbeehModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TasbeehModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TasbeehModel value)  $default,){
final _that = this;
switch (_that) {
case _TasbeehModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TasbeehModel value)?  $default,){
final _that = this;
switch (_that) {
case _TasbeehModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String title,  String desc,  int maxCount,  int currentCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TasbeehModel() when $default != null:
return $default(_that.id,_that.title,_that.desc,_that.maxCount,_that.currentCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String title,  String desc,  int maxCount,  int currentCount)  $default,) {final _that = this;
switch (_that) {
case _TasbeehModel():
return $default(_that.id,_that.title,_that.desc,_that.maxCount,_that.currentCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String title,  String desc,  int maxCount,  int currentCount)?  $default,) {final _that = this;
switch (_that) {
case _TasbeehModel() when $default != null:
return $default(_that.id,_that.title,_that.desc,_that.maxCount,_that.currentCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TasbeehModel implements TasbeehModel {
   _TasbeehModel({required this.id, required this.title, required this.desc, required this.maxCount, required this.currentCount});
  factory _TasbeehModel.fromJson(Map<String, dynamic> json) => _$TasbeehModelFromJson(json);

@override final  int id;
@override final  String title;
@override final  String desc;
@override final  int maxCount;
@override final  int currentCount;

/// Create a copy of TasbeehModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TasbeehModelCopyWith<_TasbeehModel> get copyWith => __$TasbeehModelCopyWithImpl<_TasbeehModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TasbeehModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TasbeehModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.desc, desc) || other.desc == desc)&&(identical(other.maxCount, maxCount) || other.maxCount == maxCount)&&(identical(other.currentCount, currentCount) || other.currentCount == currentCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,desc,maxCount,currentCount);

@override
String toString() {
  return 'TasbeehModel(id: $id, title: $title, desc: $desc, maxCount: $maxCount, currentCount: $currentCount)';
}


}

/// @nodoc
abstract mixin class _$TasbeehModelCopyWith<$Res> implements $TasbeehModelCopyWith<$Res> {
  factory _$TasbeehModelCopyWith(_TasbeehModel value, $Res Function(_TasbeehModel) _then) = __$TasbeehModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, String desc, int maxCount, int currentCount
});




}
/// @nodoc
class __$TasbeehModelCopyWithImpl<$Res>
    implements _$TasbeehModelCopyWith<$Res> {
  __$TasbeehModelCopyWithImpl(this._self, this._then);

  final _TasbeehModel _self;
  final $Res Function(_TasbeehModel) _then;

/// Create a copy of TasbeehModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? desc = null,Object? maxCount = null,Object? currentCount = null,}) {
  return _then(_TasbeehModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,desc: null == desc ? _self.desc : desc // ignore: cast_nullable_to_non_nullable
as String,maxCount: null == maxCount ? _self.maxCount : maxCount // ignore: cast_nullable_to_non_nullable
as int,currentCount: null == currentCount ? _self.currentCount : currentCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
