// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ReportRequest {

 String get content; File? get attach1; File? get attach2; File? get attach3;
/// Create a copy of ReportRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportRequestCopyWith<ReportRequest> get copyWith => _$ReportRequestCopyWithImpl<ReportRequest>(this as ReportRequest, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportRequest&&(identical(other.content, content) || other.content == content)&&(identical(other.attach1, attach1) || other.attach1 == attach1)&&(identical(other.attach2, attach2) || other.attach2 == attach2)&&(identical(other.attach3, attach3) || other.attach3 == attach3));
}


@override
int get hashCode => Object.hash(runtimeType,content,attach1,attach2,attach3);

@override
String toString() {
  return 'ReportRequest(content: $content, attach1: $attach1, attach2: $attach2, attach3: $attach3)';
}


}

/// @nodoc
abstract mixin class $ReportRequestCopyWith<$Res>  {
  factory $ReportRequestCopyWith(ReportRequest value, $Res Function(ReportRequest) _then) = _$ReportRequestCopyWithImpl;
@useResult
$Res call({
 String content, File? attach1, File? attach2, File? attach3
});




}
/// @nodoc
class _$ReportRequestCopyWithImpl<$Res>
    implements $ReportRequestCopyWith<$Res> {
  _$ReportRequestCopyWithImpl(this._self, this._then);

  final ReportRequest _self;
  final $Res Function(ReportRequest) _then;

/// Create a copy of ReportRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? content = null,Object? attach1 = freezed,Object? attach2 = freezed,Object? attach3 = freezed,}) {
  return _then(_self.copyWith(
content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,attach1: freezed == attach1 ? _self.attach1 : attach1 // ignore: cast_nullable_to_non_nullable
as File?,attach2: freezed == attach2 ? _self.attach2 : attach2 // ignore: cast_nullable_to_non_nullable
as File?,attach3: freezed == attach3 ? _self.attach3 : attach3 // ignore: cast_nullable_to_non_nullable
as File?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReportRequest].
extension ReportRequestPatterns on ReportRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReportRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReportRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReportRequest value)  $default,){
final _that = this;
switch (_that) {
case _ReportRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReportRequest value)?  $default,){
final _that = this;
switch (_that) {
case _ReportRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String content,  File? attach1,  File? attach2,  File? attach3)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReportRequest() when $default != null:
return $default(_that.content,_that.attach1,_that.attach2,_that.attach3);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String content,  File? attach1,  File? attach2,  File? attach3)  $default,) {final _that = this;
switch (_that) {
case _ReportRequest():
return $default(_that.content,_that.attach1,_that.attach2,_that.attach3);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String content,  File? attach1,  File? attach2,  File? attach3)?  $default,) {final _that = this;
switch (_that) {
case _ReportRequest() when $default != null:
return $default(_that.content,_that.attach1,_that.attach2,_that.attach3);case _:
  return null;

}
}

}

/// @nodoc


class _ReportRequest implements ReportRequest {
   _ReportRequest({required this.content, this.attach1, this.attach2, this.attach3});
  

@override final  String content;
@override final  File? attach1;
@override final  File? attach2;
@override final  File? attach3;

/// Create a copy of ReportRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportRequestCopyWith<_ReportRequest> get copyWith => __$ReportRequestCopyWithImpl<_ReportRequest>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReportRequest&&(identical(other.content, content) || other.content == content)&&(identical(other.attach1, attach1) || other.attach1 == attach1)&&(identical(other.attach2, attach2) || other.attach2 == attach2)&&(identical(other.attach3, attach3) || other.attach3 == attach3));
}


@override
int get hashCode => Object.hash(runtimeType,content,attach1,attach2,attach3);

@override
String toString() {
  return 'ReportRequest(content: $content, attach1: $attach1, attach2: $attach2, attach3: $attach3)';
}


}

/// @nodoc
abstract mixin class _$ReportRequestCopyWith<$Res> implements $ReportRequestCopyWith<$Res> {
  factory _$ReportRequestCopyWith(_ReportRequest value, $Res Function(_ReportRequest) _then) = __$ReportRequestCopyWithImpl;
@override @useResult
$Res call({
 String content, File? attach1, File? attach2, File? attach3
});




}
/// @nodoc
class __$ReportRequestCopyWithImpl<$Res>
    implements _$ReportRequestCopyWith<$Res> {
  __$ReportRequestCopyWithImpl(this._self, this._then);

  final _ReportRequest _self;
  final $Res Function(_ReportRequest) _then;

/// Create a copy of ReportRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? content = null,Object? attach1 = freezed,Object? attach2 = freezed,Object? attach3 = freezed,}) {
  return _then(_ReportRequest(
content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,attach1: freezed == attach1 ? _self.attach1 : attach1 // ignore: cast_nullable_to_non_nullable
as File?,attach2: freezed == attach2 ? _self.attach2 : attach2 // ignore: cast_nullable_to_non_nullable
as File?,attach3: freezed == attach3 ? _self.attach3 : attach3 // ignore: cast_nullable_to_non_nullable
as File?,
  ));
}


}

// dart format on
