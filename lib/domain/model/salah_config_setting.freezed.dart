// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'salah_config_setting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SalahConfigSetting {
  SalahTimeState get salahType => throw _privateConstructorUsedError;
  DateTime? Function(PrayCalculationSettingState) get stateSelector =>
      throw _privateConstructorUsedError;

  /// Create a copy of SalahConfigSetting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SalahConfigSettingCopyWith<SalahConfigSetting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalahConfigSettingCopyWith<$Res> {
  factory $SalahConfigSettingCopyWith(
          SalahConfigSetting value, $Res Function(SalahConfigSetting) then) =
      _$SalahConfigSettingCopyWithImpl<$Res, SalahConfigSetting>;
  @useResult
  $Res call(
      {SalahTimeState salahType,
      DateTime? Function(PrayCalculationSettingState) stateSelector});

  $SalahTimeStateCopyWith<$Res> get salahType;
}

/// @nodoc
class _$SalahConfigSettingCopyWithImpl<$Res, $Val extends SalahConfigSetting>
    implements $SalahConfigSettingCopyWith<$Res> {
  _$SalahConfigSettingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SalahConfigSetting
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? salahType = null,
    Object? stateSelector = null,
  }) {
    return _then(_value.copyWith(
      salahType: null == salahType
          ? _value.salahType
          : salahType // ignore: cast_nullable_to_non_nullable
              as SalahTimeState,
      stateSelector: null == stateSelector
          ? _value.stateSelector
          : stateSelector // ignore: cast_nullable_to_non_nullable
              as DateTime? Function(PrayCalculationSettingState),
    ) as $Val);
  }

  /// Create a copy of SalahConfigSetting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SalahTimeStateCopyWith<$Res> get salahType {
    return $SalahTimeStateCopyWith<$Res>(_value.salahType, (value) {
      return _then(_value.copyWith(salahType: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SalahConfigSettingImplCopyWith<$Res>
    implements $SalahConfigSettingCopyWith<$Res> {
  factory _$$SalahConfigSettingImplCopyWith(_$SalahConfigSettingImpl value,
          $Res Function(_$SalahConfigSettingImpl) then) =
      __$$SalahConfigSettingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SalahTimeState salahType,
      DateTime? Function(PrayCalculationSettingState) stateSelector});

  @override
  $SalahTimeStateCopyWith<$Res> get salahType;
}

/// @nodoc
class __$$SalahConfigSettingImplCopyWithImpl<$Res>
    extends _$SalahConfigSettingCopyWithImpl<$Res, _$SalahConfigSettingImpl>
    implements _$$SalahConfigSettingImplCopyWith<$Res> {
  __$$SalahConfigSettingImplCopyWithImpl(_$SalahConfigSettingImpl _value,
      $Res Function(_$SalahConfigSettingImpl) _then)
      : super(_value, _then);

  /// Create a copy of SalahConfigSetting
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? salahType = null,
    Object? stateSelector = null,
  }) {
    return _then(_$SalahConfigSettingImpl(
      salahType: null == salahType
          ? _value.salahType
          : salahType // ignore: cast_nullable_to_non_nullable
              as SalahTimeState,
      stateSelector: null == stateSelector
          ? _value.stateSelector
          : stateSelector // ignore: cast_nullable_to_non_nullable
              as DateTime? Function(PrayCalculationSettingState),
    ));
  }
}

/// @nodoc

class _$SalahConfigSettingImpl implements _SalahConfigSetting {
  _$SalahConfigSettingImpl(
      {required this.salahType, required this.stateSelector});

  @override
  final SalahTimeState salahType;
  @override
  final DateTime? Function(PrayCalculationSettingState) stateSelector;

  @override
  String toString() {
    return 'SalahConfigSetting(salahType: $salahType, stateSelector: $stateSelector)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SalahConfigSettingImpl &&
            (identical(other.salahType, salahType) ||
                other.salahType == salahType) &&
            (identical(other.stateSelector, stateSelector) ||
                other.stateSelector == stateSelector));
  }

  @override
  int get hashCode => Object.hash(runtimeType, salahType, stateSelector);

  /// Create a copy of SalahConfigSetting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SalahConfigSettingImplCopyWith<_$SalahConfigSettingImpl> get copyWith =>
      __$$SalahConfigSettingImplCopyWithImpl<_$SalahConfigSettingImpl>(
          this, _$identity);
}

abstract class _SalahConfigSetting implements SalahConfigSetting {
  factory _SalahConfigSetting(
      {required final SalahTimeState salahType,
      required final DateTime? Function(PrayCalculationSettingState)
          stateSelector}) = _$SalahConfigSettingImpl;

  @override
  SalahTimeState get salahType;
  @override
  DateTime? Function(PrayCalculationSettingState) get stateSelector;

  /// Create a copy of SalahConfigSetting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SalahConfigSettingImplCopyWith<_$SalahConfigSettingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
