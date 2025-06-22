// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tasbeeh.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

TasbeehModel _$TasbeehModelFromJson(Map<String, dynamic> json) {
  return _TasbeehModel.fromJson(json);
}

/// @nodoc
mixin _$TasbeehModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get desc => throw _privateConstructorUsedError;
  int get maxCount => throw _privateConstructorUsedError;
  int get currentCount => throw _privateConstructorUsedError;

  /// Serializes this TasbeehModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TasbeehModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TasbeehModelCopyWith<TasbeehModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasbeehModelCopyWith<$Res> {
  factory $TasbeehModelCopyWith(
    TasbeehModel value,
    $Res Function(TasbeehModel) then,
  ) = _$TasbeehModelCopyWithImpl<$Res, TasbeehModel>;
  @useResult
  $Res call({
    int id,
    String title,
    String desc,
    int maxCount,
    int currentCount,
  });
}

/// @nodoc
class _$TasbeehModelCopyWithImpl<$Res, $Val extends TasbeehModel>
    implements $TasbeehModelCopyWith<$Res> {
  _$TasbeehModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TasbeehModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? desc = null,
    Object? maxCount = null,
    Object? currentCount = null,
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
                      as String,
            desc: null == desc
                ? _value.desc
                : desc // ignore: cast_nullable_to_non_nullable
                      as String,
            maxCount: null == maxCount
                ? _value.maxCount
                : maxCount // ignore: cast_nullable_to_non_nullable
                      as int,
            currentCount: null == currentCount
                ? _value.currentCount
                : currentCount // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TasbeehModelImplCopyWith<$Res>
    implements $TasbeehModelCopyWith<$Res> {
  factory _$$TasbeehModelImplCopyWith(
    _$TasbeehModelImpl value,
    $Res Function(_$TasbeehModelImpl) then,
  ) = __$$TasbeehModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String title,
    String desc,
    int maxCount,
    int currentCount,
  });
}

/// @nodoc
class __$$TasbeehModelImplCopyWithImpl<$Res>
    extends _$TasbeehModelCopyWithImpl<$Res, _$TasbeehModelImpl>
    implements _$$TasbeehModelImplCopyWith<$Res> {
  __$$TasbeehModelImplCopyWithImpl(
    _$TasbeehModelImpl _value,
    $Res Function(_$TasbeehModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TasbeehModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? desc = null,
    Object? maxCount = null,
    Object? currentCount = null,
  }) {
    return _then(
      _$TasbeehModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        desc: null == desc
            ? _value.desc
            : desc // ignore: cast_nullable_to_non_nullable
                  as String,
        maxCount: null == maxCount
            ? _value.maxCount
            : maxCount // ignore: cast_nullable_to_non_nullable
                  as int,
        currentCount: null == currentCount
            ? _value.currentCount
            : currentCount // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TasbeehModelImpl implements _TasbeehModel {
  _$TasbeehModelImpl({
    required this.id,
    required this.title,
    required this.desc,
    required this.maxCount,
    required this.currentCount,
  });

  factory _$TasbeehModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TasbeehModelImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String desc;
  @override
  final int maxCount;
  @override
  final int currentCount;

  @override
  String toString() {
    return 'TasbeehModel(id: $id, title: $title, desc: $desc, maxCount: $maxCount, currentCount: $currentCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasbeehModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.desc, desc) || other.desc == desc) &&
            (identical(other.maxCount, maxCount) ||
                other.maxCount == maxCount) &&
            (identical(other.currentCount, currentCount) ||
                other.currentCount == currentCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, desc, maxCount, currentCount);

  /// Create a copy of TasbeehModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TasbeehModelImplCopyWith<_$TasbeehModelImpl> get copyWith =>
      __$$TasbeehModelImplCopyWithImpl<_$TasbeehModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TasbeehModelImplToJson(this);
  }
}

abstract class _TasbeehModel implements TasbeehModel {
  factory _TasbeehModel({
    required final int id,
    required final String title,
    required final String desc,
    required final int maxCount,
    required final int currentCount,
  }) = _$TasbeehModelImpl;

  factory _TasbeehModel.fromJson(Map<String, dynamic> json) =
      _$TasbeehModelImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get desc;
  @override
  int get maxCount;
  @override
  int get currentCount;

  /// Create a copy of TasbeehModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TasbeehModelImplCopyWith<_$TasbeehModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
