// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'time_zone_setting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TimeZoneSetting {
  String get name => throw _privateConstructorUsedError;
  Duration get duration => throw _privateConstructorUsedError;
  bool get isSelected => throw _privateConstructorUsedError;

  /// Create a copy of TimeZoneSetting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TimeZoneSettingCopyWith<TimeZoneSetting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeZoneSettingCopyWith<$Res> {
  factory $TimeZoneSettingCopyWith(
          TimeZoneSetting value, $Res Function(TimeZoneSetting) then) =
      _$TimeZoneSettingCopyWithImpl<$Res, TimeZoneSetting>;
  @useResult
  $Res call({String name, Duration duration, bool isSelected});
}

/// @nodoc
class _$TimeZoneSettingCopyWithImpl<$Res, $Val extends TimeZoneSetting>
    implements $TimeZoneSettingCopyWith<$Res> {
  _$TimeZoneSettingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimeZoneSetting
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? duration = null,
    Object? isSelected = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimeZoneSettingImplCopyWith<$Res>
    implements $TimeZoneSettingCopyWith<$Res> {
  factory _$$TimeZoneSettingImplCopyWith(_$TimeZoneSettingImpl value,
          $Res Function(_$TimeZoneSettingImpl) then) =
      __$$TimeZoneSettingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, Duration duration, bool isSelected});
}

/// @nodoc
class __$$TimeZoneSettingImplCopyWithImpl<$Res>
    extends _$TimeZoneSettingCopyWithImpl<$Res, _$TimeZoneSettingImpl>
    implements _$$TimeZoneSettingImplCopyWith<$Res> {
  __$$TimeZoneSettingImplCopyWithImpl(
      _$TimeZoneSettingImpl _value, $Res Function(_$TimeZoneSettingImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimeZoneSetting
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? duration = null,
    Object? isSelected = null,
  }) {
    return _then(_$TimeZoneSettingImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TimeZoneSettingImpl implements _TimeZoneSetting {
  _$TimeZoneSettingImpl(
      {required this.name, required this.duration, required this.isSelected});

  @override
  final String name;
  @override
  final Duration duration;
  @override
  final bool isSelected;

  @override
  String toString() {
    return 'TimeZoneSetting(name: $name, duration: $duration, isSelected: $isSelected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeZoneSettingImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, duration, isSelected);

  /// Create a copy of TimeZoneSetting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeZoneSettingImplCopyWith<_$TimeZoneSettingImpl> get copyWith =>
      __$$TimeZoneSettingImplCopyWithImpl<_$TimeZoneSettingImpl>(
          this, _$identity);
}

abstract class _TimeZoneSetting implements TimeZoneSetting {
  factory _TimeZoneSetting(
      {required final String name,
      required final Duration duration,
      required final bool isSelected}) = _$TimeZoneSettingImpl;

  @override
  String get name;
  @override
  Duration get duration;
  @override
  bool get isSelected;

  /// Create a copy of TimeZoneSetting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimeZoneSettingImplCopyWith<_$TimeZoneSettingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
