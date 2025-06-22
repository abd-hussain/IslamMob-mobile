// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quran_copy.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$QuranCopy {
  String get fileName => throw _privateConstructorUsedError;
  String get lastPageNumber => throw _privateConstructorUsedError;
  Map<String, dynamic>? get juz2ToPageNumbers =>
      throw _privateConstructorUsedError;
  Map<String, dynamic>? get sorahToPageNumbers =>
      throw _privateConstructorUsedError;

  /// Create a copy of QuranCopy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuranCopyCopyWith<QuranCopy> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuranCopyCopyWith<$Res> {
  factory $QuranCopyCopyWith(QuranCopy value, $Res Function(QuranCopy) then) =
      _$QuranCopyCopyWithImpl<$Res, QuranCopy>;
  @useResult
  $Res call({
    String fileName,
    String lastPageNumber,
    Map<String, dynamic>? juz2ToPageNumbers,
    Map<String, dynamic>? sorahToPageNumbers,
  });
}

/// @nodoc
class _$QuranCopyCopyWithImpl<$Res, $Val extends QuranCopy>
    implements $QuranCopyCopyWith<$Res> {
  _$QuranCopyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuranCopy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = null,
    Object? lastPageNumber = null,
    Object? juz2ToPageNumbers = freezed,
    Object? sorahToPageNumbers = freezed,
  }) {
    return _then(
      _value.copyWith(
            fileName: null == fileName
                ? _value.fileName
                : fileName // ignore: cast_nullable_to_non_nullable
                      as String,
            lastPageNumber: null == lastPageNumber
                ? _value.lastPageNumber
                : lastPageNumber // ignore: cast_nullable_to_non_nullable
                      as String,
            juz2ToPageNumbers: freezed == juz2ToPageNumbers
                ? _value.juz2ToPageNumbers
                : juz2ToPageNumbers // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>?,
            sorahToPageNumbers: freezed == sorahToPageNumbers
                ? _value.sorahToPageNumbers
                : sorahToPageNumbers // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$QuranCopyImplCopyWith<$Res>
    implements $QuranCopyCopyWith<$Res> {
  factory _$$QuranCopyImplCopyWith(
    _$QuranCopyImpl value,
    $Res Function(_$QuranCopyImpl) then,
  ) = __$$QuranCopyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String fileName,
    String lastPageNumber,
    Map<String, dynamic>? juz2ToPageNumbers,
    Map<String, dynamic>? sorahToPageNumbers,
  });
}

/// @nodoc
class __$$QuranCopyImplCopyWithImpl<$Res>
    extends _$QuranCopyCopyWithImpl<$Res, _$QuranCopyImpl>
    implements _$$QuranCopyImplCopyWith<$Res> {
  __$$QuranCopyImplCopyWithImpl(
    _$QuranCopyImpl _value,
    $Res Function(_$QuranCopyImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of QuranCopy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = null,
    Object? lastPageNumber = null,
    Object? juz2ToPageNumbers = freezed,
    Object? sorahToPageNumbers = freezed,
  }) {
    return _then(
      _$QuranCopyImpl(
        fileName: null == fileName
            ? _value.fileName
            : fileName // ignore: cast_nullable_to_non_nullable
                  as String,
        lastPageNumber: null == lastPageNumber
            ? _value.lastPageNumber
            : lastPageNumber // ignore: cast_nullable_to_non_nullable
                  as String,
        juz2ToPageNumbers: freezed == juz2ToPageNumbers
            ? _value._juz2ToPageNumbers
            : juz2ToPageNumbers // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
        sorahToPageNumbers: freezed == sorahToPageNumbers
            ? _value._sorahToPageNumbers
            : sorahToPageNumbers // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
      ),
    );
  }
}

/// @nodoc

class _$QuranCopyImpl implements _QuranCopy {
  _$QuranCopyImpl({
    required this.fileName,
    required this.lastPageNumber,
    required final Map<String, dynamic>? juz2ToPageNumbers,
    required final Map<String, dynamic>? sorahToPageNumbers,
  }) : _juz2ToPageNumbers = juz2ToPageNumbers,
       _sorahToPageNumbers = sorahToPageNumbers;

  @override
  final String fileName;
  @override
  final String lastPageNumber;
  final Map<String, dynamic>? _juz2ToPageNumbers;
  @override
  Map<String, dynamic>? get juz2ToPageNumbers {
    final value = _juz2ToPageNumbers;
    if (value == null) return null;
    if (_juz2ToPageNumbers is EqualUnmodifiableMapView)
      return _juz2ToPageNumbers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _sorahToPageNumbers;
  @override
  Map<String, dynamic>? get sorahToPageNumbers {
    final value = _sorahToPageNumbers;
    if (value == null) return null;
    if (_sorahToPageNumbers is EqualUnmodifiableMapView)
      return _sorahToPageNumbers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'QuranCopy(fileName: $fileName, lastPageNumber: $lastPageNumber, juz2ToPageNumbers: $juz2ToPageNumbers, sorahToPageNumbers: $sorahToPageNumbers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuranCopyImpl &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.lastPageNumber, lastPageNumber) ||
                other.lastPageNumber == lastPageNumber) &&
            const DeepCollectionEquality().equals(
              other._juz2ToPageNumbers,
              _juz2ToPageNumbers,
            ) &&
            const DeepCollectionEquality().equals(
              other._sorahToPageNumbers,
              _sorahToPageNumbers,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    fileName,
    lastPageNumber,
    const DeepCollectionEquality().hash(_juz2ToPageNumbers),
    const DeepCollectionEquality().hash(_sorahToPageNumbers),
  );

  /// Create a copy of QuranCopy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuranCopyImplCopyWith<_$QuranCopyImpl> get copyWith =>
      __$$QuranCopyImplCopyWithImpl<_$QuranCopyImpl>(this, _$identity);
}

abstract class _QuranCopy implements QuranCopy {
  factory _QuranCopy({
    required final String fileName,
    required final String lastPageNumber,
    required final Map<String, dynamic>? juz2ToPageNumbers,
    required final Map<String, dynamic>? sorahToPageNumbers,
  }) = _$QuranCopyImpl;

  @override
  String get fileName;
  @override
  String get lastPageNumber;
  @override
  Map<String, dynamic>? get juz2ToPageNumbers;
  @override
  Map<String, dynamic>? get sorahToPageNumbers;

  /// Create a copy of QuranCopy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuranCopyImplCopyWith<_$QuranCopyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
