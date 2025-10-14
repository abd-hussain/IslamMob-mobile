// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quran_copy.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$QuranCopy {

 String get fileName; String get lastPageNumber; Map<String, dynamic>? get juz2ToPageNumbers; Map<String, dynamic>? get sorahToPageNumbers;
/// Create a copy of QuranCopy
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuranCopyCopyWith<QuranCopy> get copyWith => _$QuranCopyCopyWithImpl<QuranCopy>(this as QuranCopy, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuranCopy&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.lastPageNumber, lastPageNumber) || other.lastPageNumber == lastPageNumber)&&const DeepCollectionEquality().equals(other.juz2ToPageNumbers, juz2ToPageNumbers)&&const DeepCollectionEquality().equals(other.sorahToPageNumbers, sorahToPageNumbers));
}


@override
int get hashCode => Object.hash(runtimeType,fileName,lastPageNumber,const DeepCollectionEquality().hash(juz2ToPageNumbers),const DeepCollectionEquality().hash(sorahToPageNumbers));

@override
String toString() {
  return 'QuranCopy(fileName: $fileName, lastPageNumber: $lastPageNumber, juz2ToPageNumbers: $juz2ToPageNumbers, sorahToPageNumbers: $sorahToPageNumbers)';
}


}

/// @nodoc
abstract mixin class $QuranCopyCopyWith<$Res>  {
  factory $QuranCopyCopyWith(QuranCopy value, $Res Function(QuranCopy) _then) = _$QuranCopyCopyWithImpl;
@useResult
$Res call({
 String fileName, String lastPageNumber, Map<String, dynamic>? juz2ToPageNumbers, Map<String, dynamic>? sorahToPageNumbers
});




}
/// @nodoc
class _$QuranCopyCopyWithImpl<$Res>
    implements $QuranCopyCopyWith<$Res> {
  _$QuranCopyCopyWithImpl(this._self, this._then);

  final QuranCopy _self;
  final $Res Function(QuranCopy) _then;

/// Create a copy of QuranCopy
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fileName = null,Object? lastPageNumber = null,Object? juz2ToPageNumbers = freezed,Object? sorahToPageNumbers = freezed,}) {
  return _then(_self.copyWith(
fileName: null == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String,lastPageNumber: null == lastPageNumber ? _self.lastPageNumber : lastPageNumber // ignore: cast_nullable_to_non_nullable
as String,juz2ToPageNumbers: freezed == juz2ToPageNumbers ? _self.juz2ToPageNumbers : juz2ToPageNumbers // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,sorahToPageNumbers: freezed == sorahToPageNumbers ? _self.sorahToPageNumbers : sorahToPageNumbers // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [QuranCopy].
extension QuranCopyPatterns on QuranCopy {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuranCopy value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuranCopy() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuranCopy value)  $default,){
final _that = this;
switch (_that) {
case _QuranCopy():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuranCopy value)?  $default,){
final _that = this;
switch (_that) {
case _QuranCopy() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String fileName,  String lastPageNumber,  Map<String, dynamic>? juz2ToPageNumbers,  Map<String, dynamic>? sorahToPageNumbers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuranCopy() when $default != null:
return $default(_that.fileName,_that.lastPageNumber,_that.juz2ToPageNumbers,_that.sorahToPageNumbers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String fileName,  String lastPageNumber,  Map<String, dynamic>? juz2ToPageNumbers,  Map<String, dynamic>? sorahToPageNumbers)  $default,) {final _that = this;
switch (_that) {
case _QuranCopy():
return $default(_that.fileName,_that.lastPageNumber,_that.juz2ToPageNumbers,_that.sorahToPageNumbers);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String fileName,  String lastPageNumber,  Map<String, dynamic>? juz2ToPageNumbers,  Map<String, dynamic>? sorahToPageNumbers)?  $default,) {final _that = this;
switch (_that) {
case _QuranCopy() when $default != null:
return $default(_that.fileName,_that.lastPageNumber,_that.juz2ToPageNumbers,_that.sorahToPageNumbers);case _:
  return null;

}
}

}

/// @nodoc


class _QuranCopy implements QuranCopy {
   _QuranCopy({required this.fileName, required this.lastPageNumber, required final  Map<String, dynamic>? juz2ToPageNumbers, required final  Map<String, dynamic>? sorahToPageNumbers}): _juz2ToPageNumbers = juz2ToPageNumbers,_sorahToPageNumbers = sorahToPageNumbers;
  

@override final  String fileName;
@override final  String lastPageNumber;
 final  Map<String, dynamic>? _juz2ToPageNumbers;
@override Map<String, dynamic>? get juz2ToPageNumbers {
  final value = _juz2ToPageNumbers;
  if (value == null) return null;
  if (_juz2ToPageNumbers is EqualUnmodifiableMapView) return _juz2ToPageNumbers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  Map<String, dynamic>? _sorahToPageNumbers;
@override Map<String, dynamic>? get sorahToPageNumbers {
  final value = _sorahToPageNumbers;
  if (value == null) return null;
  if (_sorahToPageNumbers is EqualUnmodifiableMapView) return _sorahToPageNumbers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of QuranCopy
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuranCopyCopyWith<_QuranCopy> get copyWith => __$QuranCopyCopyWithImpl<_QuranCopy>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuranCopy&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.lastPageNumber, lastPageNumber) || other.lastPageNumber == lastPageNumber)&&const DeepCollectionEquality().equals(other._juz2ToPageNumbers, _juz2ToPageNumbers)&&const DeepCollectionEquality().equals(other._sorahToPageNumbers, _sorahToPageNumbers));
}


@override
int get hashCode => Object.hash(runtimeType,fileName,lastPageNumber,const DeepCollectionEquality().hash(_juz2ToPageNumbers),const DeepCollectionEquality().hash(_sorahToPageNumbers));

@override
String toString() {
  return 'QuranCopy(fileName: $fileName, lastPageNumber: $lastPageNumber, juz2ToPageNumbers: $juz2ToPageNumbers, sorahToPageNumbers: $sorahToPageNumbers)';
}


}

/// @nodoc
abstract mixin class _$QuranCopyCopyWith<$Res> implements $QuranCopyCopyWith<$Res> {
  factory _$QuranCopyCopyWith(_QuranCopy value, $Res Function(_QuranCopy) _then) = __$QuranCopyCopyWithImpl;
@override @useResult
$Res call({
 String fileName, String lastPageNumber, Map<String, dynamic>? juz2ToPageNumbers, Map<String, dynamic>? sorahToPageNumbers
});




}
/// @nodoc
class __$QuranCopyCopyWithImpl<$Res>
    implements _$QuranCopyCopyWith<$Res> {
  __$QuranCopyCopyWithImpl(this._self, this._then);

  final _QuranCopy _self;
  final $Res Function(_QuranCopy) _then;

/// Create a copy of QuranCopy
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fileName = null,Object? lastPageNumber = null,Object? juz2ToPageNumbers = freezed,Object? sorahToPageNumbers = freezed,}) {
  return _then(_QuranCopy(
fileName: null == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String,lastPageNumber: null == lastPageNumber ? _self.lastPageNumber : lastPageNumber // ignore: cast_nullable_to_non_nullable
as String,juz2ToPageNumbers: freezed == juz2ToPageNumbers ? _self._juz2ToPageNumbers : juz2ToPageNumbers // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,sorahToPageNumbers: freezed == sorahToPageNumbers ? _self._sorahToPageNumbers : sorahToPageNumbers // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

// dart format on
