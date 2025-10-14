// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quran_prints.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$QuranPrints {

 String? get fieldName; String? get nameReferance; String? get description; String? get language; String? get previewImage; String? get attachmentLocation; String? get addedPagesAttachmentLocation; Map<String, dynamic>? get juz2ToPageNumbers; Map<String, dynamic>? get sorahToPageNumbers; bool? get hidden;
/// Create a copy of QuranPrints
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuranPrintsCopyWith<QuranPrints> get copyWith => _$QuranPrintsCopyWithImpl<QuranPrints>(this as QuranPrints, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuranPrints&&(identical(other.fieldName, fieldName) || other.fieldName == fieldName)&&(identical(other.nameReferance, nameReferance) || other.nameReferance == nameReferance)&&(identical(other.description, description) || other.description == description)&&(identical(other.language, language) || other.language == language)&&(identical(other.previewImage, previewImage) || other.previewImage == previewImage)&&(identical(other.attachmentLocation, attachmentLocation) || other.attachmentLocation == attachmentLocation)&&(identical(other.addedPagesAttachmentLocation, addedPagesAttachmentLocation) || other.addedPagesAttachmentLocation == addedPagesAttachmentLocation)&&const DeepCollectionEquality().equals(other.juz2ToPageNumbers, juz2ToPageNumbers)&&const DeepCollectionEquality().equals(other.sorahToPageNumbers, sorahToPageNumbers)&&(identical(other.hidden, hidden) || other.hidden == hidden));
}


@override
int get hashCode => Object.hash(runtimeType,fieldName,nameReferance,description,language,previewImage,attachmentLocation,addedPagesAttachmentLocation,const DeepCollectionEquality().hash(juz2ToPageNumbers),const DeepCollectionEquality().hash(sorahToPageNumbers),hidden);

@override
String toString() {
  return 'QuranPrints(fieldName: $fieldName, nameReferance: $nameReferance, description: $description, language: $language, previewImage: $previewImage, attachmentLocation: $attachmentLocation, addedPagesAttachmentLocation: $addedPagesAttachmentLocation, juz2ToPageNumbers: $juz2ToPageNumbers, sorahToPageNumbers: $sorahToPageNumbers, hidden: $hidden)';
}


}

/// @nodoc
abstract mixin class $QuranPrintsCopyWith<$Res>  {
  factory $QuranPrintsCopyWith(QuranPrints value, $Res Function(QuranPrints) _then) = _$QuranPrintsCopyWithImpl;
@useResult
$Res call({
 String? fieldName, String? nameReferance, String? description, String? language, String? previewImage, String? attachmentLocation, String? addedPagesAttachmentLocation, Map<String, dynamic>? juz2ToPageNumbers, Map<String, dynamic>? sorahToPageNumbers, bool? hidden
});




}
/// @nodoc
class _$QuranPrintsCopyWithImpl<$Res>
    implements $QuranPrintsCopyWith<$Res> {
  _$QuranPrintsCopyWithImpl(this._self, this._then);

  final QuranPrints _self;
  final $Res Function(QuranPrints) _then;

/// Create a copy of QuranPrints
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fieldName = freezed,Object? nameReferance = freezed,Object? description = freezed,Object? language = freezed,Object? previewImage = freezed,Object? attachmentLocation = freezed,Object? addedPagesAttachmentLocation = freezed,Object? juz2ToPageNumbers = freezed,Object? sorahToPageNumbers = freezed,Object? hidden = freezed,}) {
  return _then(_self.copyWith(
fieldName: freezed == fieldName ? _self.fieldName : fieldName // ignore: cast_nullable_to_non_nullable
as String?,nameReferance: freezed == nameReferance ? _self.nameReferance : nameReferance // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,previewImage: freezed == previewImage ? _self.previewImage : previewImage // ignore: cast_nullable_to_non_nullable
as String?,attachmentLocation: freezed == attachmentLocation ? _self.attachmentLocation : attachmentLocation // ignore: cast_nullable_to_non_nullable
as String?,addedPagesAttachmentLocation: freezed == addedPagesAttachmentLocation ? _self.addedPagesAttachmentLocation : addedPagesAttachmentLocation // ignore: cast_nullable_to_non_nullable
as String?,juz2ToPageNumbers: freezed == juz2ToPageNumbers ? _self.juz2ToPageNumbers : juz2ToPageNumbers // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,sorahToPageNumbers: freezed == sorahToPageNumbers ? _self.sorahToPageNumbers : sorahToPageNumbers // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,hidden: freezed == hidden ? _self.hidden : hidden // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [QuranPrints].
extension QuranPrintsPatterns on QuranPrints {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuranPrints value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuranPrints() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuranPrints value)  $default,){
final _that = this;
switch (_that) {
case _QuranPrints():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuranPrints value)?  $default,){
final _that = this;
switch (_that) {
case _QuranPrints() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? fieldName,  String? nameReferance,  String? description,  String? language,  String? previewImage,  String? attachmentLocation,  String? addedPagesAttachmentLocation,  Map<String, dynamic>? juz2ToPageNumbers,  Map<String, dynamic>? sorahToPageNumbers,  bool? hidden)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuranPrints() when $default != null:
return $default(_that.fieldName,_that.nameReferance,_that.description,_that.language,_that.previewImage,_that.attachmentLocation,_that.addedPagesAttachmentLocation,_that.juz2ToPageNumbers,_that.sorahToPageNumbers,_that.hidden);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? fieldName,  String? nameReferance,  String? description,  String? language,  String? previewImage,  String? attachmentLocation,  String? addedPagesAttachmentLocation,  Map<String, dynamic>? juz2ToPageNumbers,  Map<String, dynamic>? sorahToPageNumbers,  bool? hidden)  $default,) {final _that = this;
switch (_that) {
case _QuranPrints():
return $default(_that.fieldName,_that.nameReferance,_that.description,_that.language,_that.previewImage,_that.attachmentLocation,_that.addedPagesAttachmentLocation,_that.juz2ToPageNumbers,_that.sorahToPageNumbers,_that.hidden);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? fieldName,  String? nameReferance,  String? description,  String? language,  String? previewImage,  String? attachmentLocation,  String? addedPagesAttachmentLocation,  Map<String, dynamic>? juz2ToPageNumbers,  Map<String, dynamic>? sorahToPageNumbers,  bool? hidden)?  $default,) {final _that = this;
switch (_that) {
case _QuranPrints() when $default != null:
return $default(_that.fieldName,_that.nameReferance,_that.description,_that.language,_that.previewImage,_that.attachmentLocation,_that.addedPagesAttachmentLocation,_that.juz2ToPageNumbers,_that.sorahToPageNumbers,_that.hidden);case _:
  return null;

}
}

}

/// @nodoc


class _QuranPrints implements QuranPrints {
   _QuranPrints({this.fieldName, this.nameReferance, this.description, this.language, this.previewImage, this.attachmentLocation, this.addedPagesAttachmentLocation, final  Map<String, dynamic>? juz2ToPageNumbers, final  Map<String, dynamic>? sorahToPageNumbers, this.hidden}): _juz2ToPageNumbers = juz2ToPageNumbers,_sorahToPageNumbers = sorahToPageNumbers;
  

@override final  String? fieldName;
@override final  String? nameReferance;
@override final  String? description;
@override final  String? language;
@override final  String? previewImage;
@override final  String? attachmentLocation;
@override final  String? addedPagesAttachmentLocation;
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

@override final  bool? hidden;

/// Create a copy of QuranPrints
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuranPrintsCopyWith<_QuranPrints> get copyWith => __$QuranPrintsCopyWithImpl<_QuranPrints>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuranPrints&&(identical(other.fieldName, fieldName) || other.fieldName == fieldName)&&(identical(other.nameReferance, nameReferance) || other.nameReferance == nameReferance)&&(identical(other.description, description) || other.description == description)&&(identical(other.language, language) || other.language == language)&&(identical(other.previewImage, previewImage) || other.previewImage == previewImage)&&(identical(other.attachmentLocation, attachmentLocation) || other.attachmentLocation == attachmentLocation)&&(identical(other.addedPagesAttachmentLocation, addedPagesAttachmentLocation) || other.addedPagesAttachmentLocation == addedPagesAttachmentLocation)&&const DeepCollectionEquality().equals(other._juz2ToPageNumbers, _juz2ToPageNumbers)&&const DeepCollectionEquality().equals(other._sorahToPageNumbers, _sorahToPageNumbers)&&(identical(other.hidden, hidden) || other.hidden == hidden));
}


@override
int get hashCode => Object.hash(runtimeType,fieldName,nameReferance,description,language,previewImage,attachmentLocation,addedPagesAttachmentLocation,const DeepCollectionEquality().hash(_juz2ToPageNumbers),const DeepCollectionEquality().hash(_sorahToPageNumbers),hidden);

@override
String toString() {
  return 'QuranPrints(fieldName: $fieldName, nameReferance: $nameReferance, description: $description, language: $language, previewImage: $previewImage, attachmentLocation: $attachmentLocation, addedPagesAttachmentLocation: $addedPagesAttachmentLocation, juz2ToPageNumbers: $juz2ToPageNumbers, sorahToPageNumbers: $sorahToPageNumbers, hidden: $hidden)';
}


}

/// @nodoc
abstract mixin class _$QuranPrintsCopyWith<$Res> implements $QuranPrintsCopyWith<$Res> {
  factory _$QuranPrintsCopyWith(_QuranPrints value, $Res Function(_QuranPrints) _then) = __$QuranPrintsCopyWithImpl;
@override @useResult
$Res call({
 String? fieldName, String? nameReferance, String? description, String? language, String? previewImage, String? attachmentLocation, String? addedPagesAttachmentLocation, Map<String, dynamic>? juz2ToPageNumbers, Map<String, dynamic>? sorahToPageNumbers, bool? hidden
});




}
/// @nodoc
class __$QuranPrintsCopyWithImpl<$Res>
    implements _$QuranPrintsCopyWith<$Res> {
  __$QuranPrintsCopyWithImpl(this._self, this._then);

  final _QuranPrints _self;
  final $Res Function(_QuranPrints) _then;

/// Create a copy of QuranPrints
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fieldName = freezed,Object? nameReferance = freezed,Object? description = freezed,Object? language = freezed,Object? previewImage = freezed,Object? attachmentLocation = freezed,Object? addedPagesAttachmentLocation = freezed,Object? juz2ToPageNumbers = freezed,Object? sorahToPageNumbers = freezed,Object? hidden = freezed,}) {
  return _then(_QuranPrints(
fieldName: freezed == fieldName ? _self.fieldName : fieldName // ignore: cast_nullable_to_non_nullable
as String?,nameReferance: freezed == nameReferance ? _self.nameReferance : nameReferance // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,previewImage: freezed == previewImage ? _self.previewImage : previewImage // ignore: cast_nullable_to_non_nullable
as String?,attachmentLocation: freezed == attachmentLocation ? _self.attachmentLocation : attachmentLocation // ignore: cast_nullable_to_non_nullable
as String?,addedPagesAttachmentLocation: freezed == addedPagesAttachmentLocation ? _self.addedPagesAttachmentLocation : addedPagesAttachmentLocation // ignore: cast_nullable_to_non_nullable
as String?,juz2ToPageNumbers: freezed == juz2ToPageNumbers ? _self._juz2ToPageNumbers : juz2ToPageNumbers // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,sorahToPageNumbers: freezed == sorahToPageNumbers ? _self._sorahToPageNumbers : sorahToPageNumbers // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,hidden: freezed == hidden ? _self.hidden : hidden // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
