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
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$HajjOmrahData {
  int get id => throw _privateConstructorUsedError;
  MultiLanguageString get title => throw _privateConstructorUsedError;
  String get mainImagePath => throw _privateConstructorUsedError;
  Map<String, List<String>> get details => throw _privateConstructorUsedError;

  /// Create a copy of HajjOmrahData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HajjOmrahDataCopyWith<HajjOmrahData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HajjOmrahDataCopyWith<$Res> {
  factory $HajjOmrahDataCopyWith(
    HajjOmrahData value,
    $Res Function(HajjOmrahData) then,
  ) = _$HajjOmrahDataCopyWithImpl<$Res, HajjOmrahData>;
  @useResult
  $Res call({
    int id,
    MultiLanguageString title,
    String mainImagePath,
    Map<String, List<String>> details,
  });
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
    Object? mainImagePath = null,
    Object? details = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as MultiLanguageString,
            mainImagePath: null == mainImagePath
                ? _value.mainImagePath
                : mainImagePath // ignore: cast_nullable_to_non_nullable
                      as String,
            details: null == details
                ? _value.details
                : details // ignore: cast_nullable_to_non_nullable
                      as Map<String, List<String>>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$HajjOmrahDataImplCopyWith<$Res>
    implements $HajjOmrahDataCopyWith<$Res> {
  factory _$$HajjOmrahDataImplCopyWith(
    _$HajjOmrahDataImpl value,
    $Res Function(_$HajjOmrahDataImpl) then,
  ) = __$$HajjOmrahDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    MultiLanguageString title,
    String mainImagePath,
    Map<String, List<String>> details,
  });
}

/// @nodoc
class __$$HajjOmrahDataImplCopyWithImpl<$Res>
    extends _$HajjOmrahDataCopyWithImpl<$Res, _$HajjOmrahDataImpl>
    implements _$$HajjOmrahDataImplCopyWith<$Res> {
  __$$HajjOmrahDataImplCopyWithImpl(
    _$HajjOmrahDataImpl _value,
    $Res Function(_$HajjOmrahDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HajjOmrahData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? mainImagePath = null,
    Object? details = null,
  }) {
    return _then(
      _$HajjOmrahDataImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as MultiLanguageString,
        mainImagePath: null == mainImagePath
            ? _value.mainImagePath
            : mainImagePath // ignore: cast_nullable_to_non_nullable
                  as String,
        details: null == details
            ? _value._details
            : details // ignore: cast_nullable_to_non_nullable
                  as Map<String, List<String>>,
      ),
    );
  }
}

/// @nodoc

class _$HajjOmrahDataImpl implements _HajjOmrahData {
  _$HajjOmrahDataImpl({
    required this.id,
    required this.title,
    required this.mainImagePath,
    required final Map<String, List<String>> details,
  }) : _details = details;

  @override
  final int id;
  @override
  final MultiLanguageString title;
  @override
  final String mainImagePath;
  final Map<String, List<String>> _details;
  @override
  Map<String, List<String>> get details {
    if (_details is EqualUnmodifiableMapView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_details);
  }

  @override
  String toString() {
    return 'HajjOmrahData(id: $id, title: $title, mainImagePath: $mainImagePath, details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HajjOmrahDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.mainImagePath, mainImagePath) ||
                other.mainImagePath == mainImagePath) &&
            const DeepCollectionEquality().equals(other._details, _details));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    title,
    mainImagePath,
    const DeepCollectionEquality().hash(_details),
  );

  /// Create a copy of HajjOmrahData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HajjOmrahDataImplCopyWith<_$HajjOmrahDataImpl> get copyWith =>
      __$$HajjOmrahDataImplCopyWithImpl<_$HajjOmrahDataImpl>(this, _$identity);
}

abstract class _HajjOmrahData implements HajjOmrahData {
  factory _HajjOmrahData({
    required final int id,
    required final MultiLanguageString title,
    required final String mainImagePath,
    required final Map<String, List<String>> details,
  }) = _$HajjOmrahDataImpl;

  @override
  int get id;
  @override
  MultiLanguageString get title;
  @override
  String get mainImagePath;
  @override
  Map<String, List<String>> get details;

  /// Create a copy of HajjOmrahData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HajjOmrahDataImplCopyWith<_$HajjOmrahDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
