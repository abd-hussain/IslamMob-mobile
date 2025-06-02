// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'estekara_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EstekaraData {
  int get id => throw _privateConstructorUsedError;
  MultiLanguageString get title => throw _privateConstructorUsedError;
  Map<String, List<String>> get details => throw _privateConstructorUsedError;

  /// Create a copy of EstekaraData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EstekaraDataCopyWith<EstekaraData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EstekaraDataCopyWith<$Res> {
  factory $EstekaraDataCopyWith(
          EstekaraData value, $Res Function(EstekaraData) then) =
      _$EstekaraDataCopyWithImpl<$Res, EstekaraData>;
  @useResult
  $Res call(
      {int id, MultiLanguageString title, Map<String, List<String>> details});
}

/// @nodoc
class _$EstekaraDataCopyWithImpl<$Res, $Val extends EstekaraData>
    implements $EstekaraDataCopyWith<$Res> {
  _$EstekaraDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EstekaraData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? details = null,
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
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EstekaraDataImplCopyWith<$Res>
    implements $EstekaraDataCopyWith<$Res> {
  factory _$$EstekaraDataImplCopyWith(
          _$EstekaraDataImpl value, $Res Function(_$EstekaraDataImpl) then) =
      __$$EstekaraDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, MultiLanguageString title, Map<String, List<String>> details});
}

/// @nodoc
class __$$EstekaraDataImplCopyWithImpl<$Res>
    extends _$EstekaraDataCopyWithImpl<$Res, _$EstekaraDataImpl>
    implements _$$EstekaraDataImplCopyWith<$Res> {
  __$$EstekaraDataImplCopyWithImpl(
      _$EstekaraDataImpl _value, $Res Function(_$EstekaraDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of EstekaraData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? details = null,
  }) {
    return _then(_$EstekaraDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as MultiLanguageString,
      details: null == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>,
    ));
  }
}

/// @nodoc

class _$EstekaraDataImpl implements _EstekaraData {
  _$EstekaraDataImpl(
      {required this.id,
      required this.title,
      required final Map<String, List<String>> details})
      : _details = details;

  @override
  final int id;
  @override
  final MultiLanguageString title;
  final Map<String, List<String>> _details;
  @override
  Map<String, List<String>> get details {
    if (_details is EqualUnmodifiableMapView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_details);
  }

  @override
  String toString() {
    return 'EstekaraData(id: $id, title: $title, details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EstekaraDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._details, _details));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, const DeepCollectionEquality().hash(_details));

  /// Create a copy of EstekaraData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EstekaraDataImplCopyWith<_$EstekaraDataImpl> get copyWith =>
      __$$EstekaraDataImplCopyWithImpl<_$EstekaraDataImpl>(this, _$identity);
}

abstract class _EstekaraData implements EstekaraData {
  factory _EstekaraData(
      {required final int id,
      required final MultiLanguageString title,
      required final Map<String, List<String>> details}) = _$EstekaraDataImpl;

  @override
  int get id;
  @override
  MultiLanguageString get title;
  @override
  Map<String, List<String>> get details;

  /// Create a copy of EstekaraData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EstekaraDataImplCopyWith<_$EstekaraDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
