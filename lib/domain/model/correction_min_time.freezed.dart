// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'correction_min_time.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$CorrectionMinTimeData {
  String get title => throw _privateConstructorUsedError;
  AzanTypeForEditMinState get type => throw _privateConstructorUsedError;
  int Function(PrayCalculationSettingState) get getter =>
      throw _privateConstructorUsedError;

  /// Create a copy of CorrectionMinTimeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CorrectionMinTimeDataCopyWith<CorrectionMinTimeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CorrectionMinTimeDataCopyWith<$Res> {
  factory $CorrectionMinTimeDataCopyWith(
    CorrectionMinTimeData value,
    $Res Function(CorrectionMinTimeData) then,
  ) = _$CorrectionMinTimeDataCopyWithImpl<$Res, CorrectionMinTimeData>;
  @useResult
  $Res call({
    String title,
    AzanTypeForEditMinState type,
    int Function(PrayCalculationSettingState) getter,
  });

  $AzanTypeForEditMinStateCopyWith<$Res> get type;
}

/// @nodoc
class _$CorrectionMinTimeDataCopyWithImpl<
  $Res,
  $Val extends CorrectionMinTimeData
>
    implements $CorrectionMinTimeDataCopyWith<$Res> {
  _$CorrectionMinTimeDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CorrectionMinTimeData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? type = null,
    Object? getter = null,
  }) {
    return _then(
      _value.copyWith(
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as AzanTypeForEditMinState,
            getter: null == getter
                ? _value.getter
                : getter // ignore: cast_nullable_to_non_nullable
                      as int Function(PrayCalculationSettingState),
          )
          as $Val,
    );
  }

  /// Create a copy of CorrectionMinTimeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AzanTypeForEditMinStateCopyWith<$Res> get type {
    return $AzanTypeForEditMinStateCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CorrectionMinTimeDataImplCopyWith<$Res>
    implements $CorrectionMinTimeDataCopyWith<$Res> {
  factory _$$CorrectionMinTimeDataImplCopyWith(
    _$CorrectionMinTimeDataImpl value,
    $Res Function(_$CorrectionMinTimeDataImpl) then,
  ) = __$$CorrectionMinTimeDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String title,
    AzanTypeForEditMinState type,
    int Function(PrayCalculationSettingState) getter,
  });

  @override
  $AzanTypeForEditMinStateCopyWith<$Res> get type;
}

/// @nodoc
class __$$CorrectionMinTimeDataImplCopyWithImpl<$Res>
    extends
        _$CorrectionMinTimeDataCopyWithImpl<$Res, _$CorrectionMinTimeDataImpl>
    implements _$$CorrectionMinTimeDataImplCopyWith<$Res> {
  __$$CorrectionMinTimeDataImplCopyWithImpl(
    _$CorrectionMinTimeDataImpl _value,
    $Res Function(_$CorrectionMinTimeDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CorrectionMinTimeData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? type = null,
    Object? getter = null,
  }) {
    return _then(
      _$CorrectionMinTimeDataImpl(
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as AzanTypeForEditMinState,
        getter: null == getter
            ? _value.getter
            : getter // ignore: cast_nullable_to_non_nullable
                  as int Function(PrayCalculationSettingState),
      ),
    );
  }
}

/// @nodoc

class _$CorrectionMinTimeDataImpl implements _CorrectionMinTimeData {
  _$CorrectionMinTimeDataImpl({
    required this.title,
    required this.type,
    required this.getter,
  });

  @override
  final String title;
  @override
  final AzanTypeForEditMinState type;
  @override
  final int Function(PrayCalculationSettingState) getter;

  @override
  String toString() {
    return 'CorrectionMinTimeData(title: $title, type: $type, getter: $getter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CorrectionMinTimeDataImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.getter, getter) || other.getter == getter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, type, getter);

  /// Create a copy of CorrectionMinTimeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CorrectionMinTimeDataImplCopyWith<_$CorrectionMinTimeDataImpl>
  get copyWith =>
      __$$CorrectionMinTimeDataImplCopyWithImpl<_$CorrectionMinTimeDataImpl>(
        this,
        _$identity,
      );
}

abstract class _CorrectionMinTimeData implements CorrectionMinTimeData {
  factory _CorrectionMinTimeData({
    required final String title,
    required final AzanTypeForEditMinState type,
    required final int Function(PrayCalculationSettingState) getter,
  }) = _$CorrectionMinTimeDataImpl;

  @override
  String get title;
  @override
  AzanTypeForEditMinState get type;
  @override
  int Function(PrayCalculationSettingState) get getter;

  /// Create a copy of CorrectionMinTimeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CorrectionMinTimeDataImplCopyWith<_$CorrectionMinTimeDataImpl>
  get copyWith => throw _privateConstructorUsedError;
}
