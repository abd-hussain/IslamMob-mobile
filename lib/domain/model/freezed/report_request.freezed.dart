// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../report_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ReportRequest {
  String get content => throw _privateConstructorUsedError;
  File? get attach1 => throw _privateConstructorUsedError;
  File? get attach2 => throw _privateConstructorUsedError;
  File? get attach3 => throw _privateConstructorUsedError;

  /// Create a copy of ReportRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReportRequestCopyWith<ReportRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportRequestCopyWith<$Res> {
  factory $ReportRequestCopyWith(
          ReportRequest value, $Res Function(ReportRequest) then) =
      _$ReportRequestCopyWithImpl<$Res, ReportRequest>;
  @useResult
  $Res call({String content, File? attach1, File? attach2, File? attach3});
}

/// @nodoc
class _$ReportRequestCopyWithImpl<$Res, $Val extends ReportRequest>
    implements $ReportRequestCopyWith<$Res> {
  _$ReportRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReportRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? attach1 = freezed,
    Object? attach2 = freezed,
    Object? attach3 = freezed,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      attach1: freezed == attach1
          ? _value.attach1
          : attach1 // ignore: cast_nullable_to_non_nullable
              as File?,
      attach2: freezed == attach2
          ? _value.attach2
          : attach2 // ignore: cast_nullable_to_non_nullable
              as File?,
      attach3: freezed == attach3
          ? _value.attach3
          : attach3 // ignore: cast_nullable_to_non_nullable
              as File?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReportRequestImplCopyWith<$Res>
    implements $ReportRequestCopyWith<$Res> {
  factory _$$ReportRequestImplCopyWith(
          _$ReportRequestImpl value, $Res Function(_$ReportRequestImpl) then) =
      __$$ReportRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String content, File? attach1, File? attach2, File? attach3});
}

/// @nodoc
class __$$ReportRequestImplCopyWithImpl<$Res>
    extends _$ReportRequestCopyWithImpl<$Res, _$ReportRequestImpl>
    implements _$$ReportRequestImplCopyWith<$Res> {
  __$$ReportRequestImplCopyWithImpl(
      _$ReportRequestImpl _value, $Res Function(_$ReportRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReportRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? attach1 = freezed,
    Object? attach2 = freezed,
    Object? attach3 = freezed,
  }) {
    return _then(_$ReportRequestImpl(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      attach1: freezed == attach1
          ? _value.attach1
          : attach1 // ignore: cast_nullable_to_non_nullable
              as File?,
      attach2: freezed == attach2
          ? _value.attach2
          : attach2 // ignore: cast_nullable_to_non_nullable
              as File?,
      attach3: freezed == attach3
          ? _value.attach3
          : attach3 // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$ReportRequestImpl implements _ReportRequest {
  _$ReportRequestImpl(
      {required this.content, this.attach1, this.attach2, this.attach3});

  @override
  final String content;
  @override
  final File? attach1;
  @override
  final File? attach2;
  @override
  final File? attach3;

  @override
  String toString() {
    return 'ReportRequest(content: $content, attach1: $attach1, attach2: $attach2, attach3: $attach3)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportRequestImpl &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.attach1, attach1) || other.attach1 == attach1) &&
            (identical(other.attach2, attach2) || other.attach2 == attach2) &&
            (identical(other.attach3, attach3) || other.attach3 == attach3));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, content, attach1, attach2, attach3);

  /// Create a copy of ReportRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportRequestImplCopyWith<_$ReportRequestImpl> get copyWith =>
      __$$ReportRequestImplCopyWithImpl<_$ReportRequestImpl>(this, _$identity);
}

abstract class _ReportRequest implements ReportRequest {
  factory _ReportRequest(
      {required final String content,
      final File? attach1,
      final File? attach2,
      final File? attach3}) = _$ReportRequestImpl;

  @override
  String get content;
  @override
  File? get attach1;
  @override
  File? get attach2;
  @override
  File? get attach3;

  /// Create a copy of ReportRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReportRequestImplCopyWith<_$ReportRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReportRequestToFirebase _$ReportRequestToFirebaseFromJson(
    Map<String, dynamic> json) {
  return _ReportRequestToFirebase.fromJson(json);
}

/// @nodoc
mixin _$ReportRequestToFirebase {
  String get content => throw _privateConstructorUsedError;
  String? get attach1 => throw _privateConstructorUsedError;
  String? get attach2 => throw _privateConstructorUsedError;
  String? get attach3 => throw _privateConstructorUsedError;

  /// Serializes this ReportRequestToFirebase to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReportRequestToFirebase
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReportRequestToFirebaseCopyWith<ReportRequestToFirebase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportRequestToFirebaseCopyWith<$Res> {
  factory $ReportRequestToFirebaseCopyWith(ReportRequestToFirebase value,
          $Res Function(ReportRequestToFirebase) then) =
      _$ReportRequestToFirebaseCopyWithImpl<$Res, ReportRequestToFirebase>;
  @useResult
  $Res call(
      {String content, String? attach1, String? attach2, String? attach3});
}

/// @nodoc
class _$ReportRequestToFirebaseCopyWithImpl<$Res,
        $Val extends ReportRequestToFirebase>
    implements $ReportRequestToFirebaseCopyWith<$Res> {
  _$ReportRequestToFirebaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReportRequestToFirebase
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? attach1 = freezed,
    Object? attach2 = freezed,
    Object? attach3 = freezed,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      attach1: freezed == attach1
          ? _value.attach1
          : attach1 // ignore: cast_nullable_to_non_nullable
              as String?,
      attach2: freezed == attach2
          ? _value.attach2
          : attach2 // ignore: cast_nullable_to_non_nullable
              as String?,
      attach3: freezed == attach3
          ? _value.attach3
          : attach3 // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReportRequestToFirebaseImplCopyWith<$Res>
    implements $ReportRequestToFirebaseCopyWith<$Res> {
  factory _$$ReportRequestToFirebaseImplCopyWith(
          _$ReportRequestToFirebaseImpl value,
          $Res Function(_$ReportRequestToFirebaseImpl) then) =
      __$$ReportRequestToFirebaseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String content, String? attach1, String? attach2, String? attach3});
}

/// @nodoc
class __$$ReportRequestToFirebaseImplCopyWithImpl<$Res>
    extends _$ReportRequestToFirebaseCopyWithImpl<$Res,
        _$ReportRequestToFirebaseImpl>
    implements _$$ReportRequestToFirebaseImplCopyWith<$Res> {
  __$$ReportRequestToFirebaseImplCopyWithImpl(
      _$ReportRequestToFirebaseImpl _value,
      $Res Function(_$ReportRequestToFirebaseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReportRequestToFirebase
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? attach1 = freezed,
    Object? attach2 = freezed,
    Object? attach3 = freezed,
  }) {
    return _then(_$ReportRequestToFirebaseImpl(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      attach1: freezed == attach1
          ? _value.attach1
          : attach1 // ignore: cast_nullable_to_non_nullable
              as String?,
      attach2: freezed == attach2
          ? _value.attach2
          : attach2 // ignore: cast_nullable_to_non_nullable
              as String?,
      attach3: freezed == attach3
          ? _value.attach3
          : attach3 // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReportRequestToFirebaseImpl implements _ReportRequestToFirebase {
  _$ReportRequestToFirebaseImpl(
      {required this.content, this.attach1, this.attach2, this.attach3});

  factory _$ReportRequestToFirebaseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReportRequestToFirebaseImplFromJson(json);

  @override
  final String content;
  @override
  final String? attach1;
  @override
  final String? attach2;
  @override
  final String? attach3;

  @override
  String toString() {
    return 'ReportRequestToFirebase(content: $content, attach1: $attach1, attach2: $attach2, attach3: $attach3)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportRequestToFirebaseImpl &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.attach1, attach1) || other.attach1 == attach1) &&
            (identical(other.attach2, attach2) || other.attach2 == attach2) &&
            (identical(other.attach3, attach3) || other.attach3 == attach3));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, content, attach1, attach2, attach3);

  /// Create a copy of ReportRequestToFirebase
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportRequestToFirebaseImplCopyWith<_$ReportRequestToFirebaseImpl>
      get copyWith => __$$ReportRequestToFirebaseImplCopyWithImpl<
          _$ReportRequestToFirebaseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReportRequestToFirebaseImplToJson(
      this,
    );
  }
}

abstract class _ReportRequestToFirebase implements ReportRequestToFirebase {
  factory _ReportRequestToFirebase(
      {required final String content,
      final String? attach1,
      final String? attach2,
      final String? attach3}) = _$ReportRequestToFirebaseImpl;

  factory _ReportRequestToFirebase.fromJson(Map<String, dynamic> json) =
      _$ReportRequestToFirebaseImpl.fromJson;

  @override
  String get content;
  @override
  String? get attach1;
  @override
  String? get attach2;
  @override
  String? get attach3;

  /// Create a copy of ReportRequestToFirebase
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReportRequestToFirebaseImplCopyWith<_$ReportRequestToFirebaseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
