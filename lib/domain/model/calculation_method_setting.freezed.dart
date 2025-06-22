// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calculation_method_setting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$CalculationMethodSetting {
  String get name => throw _privateConstructorUsedError;
  PrayCalculationMethodState get method => throw _privateConstructorUsedError;
  bool get isSelected => throw _privateConstructorUsedError;

  /// Create a copy of CalculationMethodSetting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CalculationMethodSettingCopyWith<CalculationMethodSetting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalculationMethodSettingCopyWith<$Res> {
  factory $CalculationMethodSettingCopyWith(
    CalculationMethodSetting value,
    $Res Function(CalculationMethodSetting) then,
  ) = _$CalculationMethodSettingCopyWithImpl<$Res, CalculationMethodSetting>;
  @useResult
  $Res call({String name, PrayCalculationMethodState method, bool isSelected});

  $PrayCalculationMethodStateCopyWith<$Res> get method;
}

/// @nodoc
class _$CalculationMethodSettingCopyWithImpl<
  $Res,
  $Val extends CalculationMethodSetting
>
    implements $CalculationMethodSettingCopyWith<$Res> {
  _$CalculationMethodSettingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CalculationMethodSetting
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? method = null,
    Object? isSelected = null,
  }) {
    return _then(
      _value.copyWith(
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            method: null == method
                ? _value.method
                : method // ignore: cast_nullable_to_non_nullable
                      as PrayCalculationMethodState,
            isSelected: null == isSelected
                ? _value.isSelected
                : isSelected // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }

  /// Create a copy of CalculationMethodSetting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PrayCalculationMethodStateCopyWith<$Res> get method {
    return $PrayCalculationMethodStateCopyWith<$Res>(_value.method, (value) {
      return _then(_value.copyWith(method: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CalculationMethodSettingImplCopyWith<$Res>
    implements $CalculationMethodSettingCopyWith<$Res> {
  factory _$$CalculationMethodSettingImplCopyWith(
    _$CalculationMethodSettingImpl value,
    $Res Function(_$CalculationMethodSettingImpl) then,
  ) = __$$CalculationMethodSettingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, PrayCalculationMethodState method, bool isSelected});

  @override
  $PrayCalculationMethodStateCopyWith<$Res> get method;
}

/// @nodoc
class __$$CalculationMethodSettingImplCopyWithImpl<$Res>
    extends
        _$CalculationMethodSettingCopyWithImpl<
          $Res,
          _$CalculationMethodSettingImpl
        >
    implements _$$CalculationMethodSettingImplCopyWith<$Res> {
  __$$CalculationMethodSettingImplCopyWithImpl(
    _$CalculationMethodSettingImpl _value,
    $Res Function(_$CalculationMethodSettingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CalculationMethodSetting
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? method = null,
    Object? isSelected = null,
  }) {
    return _then(
      _$CalculationMethodSettingImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        method: null == method
            ? _value.method
            : method // ignore: cast_nullable_to_non_nullable
                  as PrayCalculationMethodState,
        isSelected: null == isSelected
            ? _value.isSelected
            : isSelected // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$CalculationMethodSettingImpl implements _CalculationMethodSetting {
  _$CalculationMethodSettingImpl({
    required this.name,
    required this.method,
    required this.isSelected,
  });

  @override
  final String name;
  @override
  final PrayCalculationMethodState method;
  @override
  final bool isSelected;

  @override
  String toString() {
    return 'CalculationMethodSetting(name: $name, method: $method, isSelected: $isSelected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalculationMethodSettingImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, method, isSelected);

  /// Create a copy of CalculationMethodSetting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CalculationMethodSettingImplCopyWith<_$CalculationMethodSettingImpl>
  get copyWith =>
      __$$CalculationMethodSettingImplCopyWithImpl<
        _$CalculationMethodSettingImpl
      >(this, _$identity);
}

abstract class _CalculationMethodSetting implements CalculationMethodSetting {
  factory _CalculationMethodSetting({
    required final String name,
    required final PrayCalculationMethodState method,
    required final bool isSelected,
  }) = _$CalculationMethodSettingImpl;

  @override
  String get name;
  @override
  PrayCalculationMethodState get method;
  @override
  bool get isSelected;

  /// Create a copy of CalculationMethodSetting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CalculationMethodSettingImplCopyWith<_$CalculationMethodSettingImpl>
  get copyWith => throw _privateConstructorUsedError;
}
