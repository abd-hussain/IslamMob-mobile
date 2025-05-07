// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hajj_omrah_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HajjOmrahData {
  int get id => throw _privateConstructorUsedError;
  MultiLanguageString get title => throw _privateConstructorUsedError;
  String get imagePath => throw _privateConstructorUsedError;
  String get descImagePath => throw _privateConstructorUsedError;
  MultiLanguageString get desc => throw _privateConstructorUsedError;

  /// Create a copy of HajjOmrahData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HajjOmrahDataCopyWith<HajjOmrahData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HajjOmrahDataCopyWith<$Res> {
  factory $HajjOmrahDataCopyWith(
          HajjOmrahData value, $Res Function(HajjOmrahData) then) =
      _$HajjOmrahDataCopyWithImpl<$Res, HajjOmrahData>;
  @useResult
  $Res call(
      {int id,
      MultiLanguageString title,
      String imagePath,
      String descImagePath,
      MultiLanguageString desc});
}

/// @nodoc
class _$HajjOmrahDataCopyWithImpl<$Res, $Val extends HajjOmrahData>
    implements $HajjOmrahDataCopyWith<$Res> {
  _$HajjOmrahDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HajjOmrahData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? imagePath = null,
    Object? descImagePath = null,
    Object? desc = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as MultiLanguageString,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      descImagePath: null == descImagePath
          ? _value.descImagePath
          : descImagePath // ignore: cast_nullable_to_non_nullable
              as String,
      desc: null == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as MultiLanguageString,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HajjOmrahDataImplCopyWith<$Res>
    implements $HajjOmrahDataCopyWith<$Res> {
  factory _$$HajjOmrahDataImplCopyWith(
          _$HajjOmrahDataImpl value, $Res Function(_$HajjOmrahDataImpl) then) =
      __$$HajjOmrahDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      MultiLanguageString title,
      String imagePath,
      String descImagePath,
      MultiLanguageString desc});
}

/// @nodoc
class __$$HajjOmrahDataImplCopyWithImpl<$Res>
    extends _$HajjOmrahDataCopyWithImpl<$Res, _$HajjOmrahDataImpl>
    implements _$$HajjOmrahDataImplCopyWith<$Res> {
  __$$HajjOmrahDataImplCopyWithImpl(
      _$HajjOmrahDataImpl _value, $Res Function(_$HajjOmrahDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of HajjOmrahData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? imagePath = null,
    Object? descImagePath = null,
    Object? desc = null,
  }) {
    return _then(_$HajjOmrahDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as MultiLanguageString,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      descImagePath: null == descImagePath
          ? _value.descImagePath
          : descImagePath // ignore: cast_nullable_to_non_nullable
              as String,
      desc: null == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as MultiLanguageString,
    ));
  }
}

/// @nodoc

class _$HajjOmrahDataImpl implements _HajjOmrahData {
  _$HajjOmrahDataImpl(
      {required this.id,
      required this.title,
      required this.imagePath,
      required this.descImagePath,
      required this.desc});

  @override
  final int id;
  @override
  final MultiLanguageString title;
  @override
  final String imagePath;
  @override
  final String descImagePath;
  @override
  final MultiLanguageString desc;

  @override
  String toString() {
    return 'HajjOmrahData(id: $id, title: $title, imagePath: $imagePath, descImagePath: $descImagePath, desc: $desc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HajjOmrahDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.descImagePath, descImagePath) ||
                other.descImagePath == descImagePath) &&
            (identical(other.desc, desc) || other.desc == desc));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, imagePath, descImagePath, desc);

  /// Create a copy of HajjOmrahData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HajjOmrahDataImplCopyWith<_$HajjOmrahDataImpl> get copyWith =>
      __$$HajjOmrahDataImplCopyWithImpl<_$HajjOmrahDataImpl>(this, _$identity);
}

abstract class _HajjOmrahData implements HajjOmrahData {
  factory _HajjOmrahData(
      {required final int id,
      required final MultiLanguageString title,
      required final String imagePath,
      required final String descImagePath,
      required final MultiLanguageString desc}) = _$HajjOmrahDataImpl;

  @override
  int get id;
  @override
  MultiLanguageString get title;
  @override
  String get imagePath;
  @override
  String get descImagePath;
  @override
  MultiLanguageString get desc;

  /// Create a copy of HajjOmrahData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HajjOmrahDataImplCopyWith<_$HajjOmrahDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
