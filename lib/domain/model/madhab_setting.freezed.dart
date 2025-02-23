// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'madhab_setting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MadhabSetting {
  String get name => throw _privateConstructorUsedError;
  MadhabState get method => throw _privateConstructorUsedError;
  bool get isSelected => throw _privateConstructorUsedError;

  /// Create a copy of MadhabSetting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MadhabSettingCopyWith<MadhabSetting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MadhabSettingCopyWith<$Res> {
  factory $MadhabSettingCopyWith(
          MadhabSetting value, $Res Function(MadhabSetting) then) =
      _$MadhabSettingCopyWithImpl<$Res, MadhabSetting>;
  @useResult
  $Res call({String name, MadhabState method, bool isSelected});

  $MadhabStateCopyWith<$Res> get method;
}

/// @nodoc
class _$MadhabSettingCopyWithImpl<$Res, $Val extends MadhabSetting>
    implements $MadhabSettingCopyWith<$Res> {
  _$MadhabSettingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MadhabSetting
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? method = null,
    Object? isSelected = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as MadhabState,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of MadhabSetting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MadhabStateCopyWith<$Res> get method {
    return $MadhabStateCopyWith<$Res>(_value.method, (value) {
      return _then(_value.copyWith(method: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MadhabSettingImplCopyWith<$Res>
    implements $MadhabSettingCopyWith<$Res> {
  factory _$$MadhabSettingImplCopyWith(
          _$MadhabSettingImpl value, $Res Function(_$MadhabSettingImpl) then) =
      __$$MadhabSettingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, MadhabState method, bool isSelected});

  @override
  $MadhabStateCopyWith<$Res> get method;
}

/// @nodoc
class __$$MadhabSettingImplCopyWithImpl<$Res>
    extends _$MadhabSettingCopyWithImpl<$Res, _$MadhabSettingImpl>
    implements _$$MadhabSettingImplCopyWith<$Res> {
  __$$MadhabSettingImplCopyWithImpl(
      _$MadhabSettingImpl _value, $Res Function(_$MadhabSettingImpl) _then)
      : super(_value, _then);

  /// Create a copy of MadhabSetting
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? method = null,
    Object? isSelected = null,
  }) {
    return _then(_$MadhabSettingImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as MadhabState,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MadhabSettingImpl implements _MadhabSetting {
  _$MadhabSettingImpl(
      {required this.name, required this.method, required this.isSelected});

  @override
  final String name;
  @override
  final MadhabState method;
  @override
  final bool isSelected;

  @override
  String toString() {
    return 'MadhabSetting(name: $name, method: $method, isSelected: $isSelected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MadhabSettingImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, method, isSelected);

  /// Create a copy of MadhabSetting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MadhabSettingImplCopyWith<_$MadhabSettingImpl> get copyWith =>
      __$$MadhabSettingImplCopyWithImpl<_$MadhabSettingImpl>(this, _$identity);
}

abstract class _MadhabSetting implements MadhabSetting {
  factory _MadhabSetting(
      {required final String name,
      required final MadhabState method,
      required final bool isSelected}) = _$MadhabSettingImpl;

  @override
  String get name;
  @override
  MadhabState get method;
  @override
  bool get isSelected;

  /// Create a copy of MadhabSetting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MadhabSettingImplCopyWith<_$MadhabSettingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
