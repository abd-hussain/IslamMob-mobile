// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'high_latitude_setting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$HighLatitudeSetting {
  String get name => throw _privateConstructorUsedError;
  PrayHightLatitudeCaluclationState get method =>
      throw _privateConstructorUsedError;
  bool get isSelected => throw _privateConstructorUsedError;

  /// Create a copy of HighLatitudeSetting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HighLatitudeSettingCopyWith<HighLatitudeSetting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HighLatitudeSettingCopyWith<$Res> {
  factory $HighLatitudeSettingCopyWith(
    HighLatitudeSetting value,
    $Res Function(HighLatitudeSetting) then,
  ) = _$HighLatitudeSettingCopyWithImpl<$Res, HighLatitudeSetting>;
  @useResult
  $Res call({
    String name,
    PrayHightLatitudeCaluclationState method,
    bool isSelected,
  });

  $PrayHightLatitudeCaluclationStateCopyWith<$Res> get method;
}

/// @nodoc
class _$HighLatitudeSettingCopyWithImpl<$Res, $Val extends HighLatitudeSetting>
    implements $HighLatitudeSettingCopyWith<$Res> {
  _$HighLatitudeSettingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HighLatitudeSetting
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
                      as PrayHightLatitudeCaluclationState,
            isSelected: null == isSelected
                ? _value.isSelected
                : isSelected // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }

  /// Create a copy of HighLatitudeSetting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PrayHightLatitudeCaluclationStateCopyWith<$Res> get method {
    return $PrayHightLatitudeCaluclationStateCopyWith<$Res>(_value.method, (
      value,
    ) {
      return _then(_value.copyWith(method: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HighLatitudeSettingImplCopyWith<$Res>
    implements $HighLatitudeSettingCopyWith<$Res> {
  factory _$$HighLatitudeSettingImplCopyWith(
    _$HighLatitudeSettingImpl value,
    $Res Function(_$HighLatitudeSettingImpl) then,
  ) = __$$HighLatitudeSettingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String name,
    PrayHightLatitudeCaluclationState method,
    bool isSelected,
  });

  @override
  $PrayHightLatitudeCaluclationStateCopyWith<$Res> get method;
}

/// @nodoc
class __$$HighLatitudeSettingImplCopyWithImpl<$Res>
    extends _$HighLatitudeSettingCopyWithImpl<$Res, _$HighLatitudeSettingImpl>
    implements _$$HighLatitudeSettingImplCopyWith<$Res> {
  __$$HighLatitudeSettingImplCopyWithImpl(
    _$HighLatitudeSettingImpl _value,
    $Res Function(_$HighLatitudeSettingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HighLatitudeSetting
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? method = null,
    Object? isSelected = null,
  }) {
    return _then(
      _$HighLatitudeSettingImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        method: null == method
            ? _value.method
            : method // ignore: cast_nullable_to_non_nullable
                  as PrayHightLatitudeCaluclationState,
        isSelected: null == isSelected
            ? _value.isSelected
            : isSelected // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$HighLatitudeSettingImpl implements _HighLatitudeSetting {
  _$HighLatitudeSettingImpl({
    required this.name,
    required this.method,
    required this.isSelected,
  });

  @override
  final String name;
  @override
  final PrayHightLatitudeCaluclationState method;
  @override
  final bool isSelected;

  @override
  String toString() {
    return 'HighLatitudeSetting(name: $name, method: $method, isSelected: $isSelected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HighLatitudeSettingImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, method, isSelected);

  /// Create a copy of HighLatitudeSetting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HighLatitudeSettingImplCopyWith<_$HighLatitudeSettingImpl> get copyWith =>
      __$$HighLatitudeSettingImplCopyWithImpl<_$HighLatitudeSettingImpl>(
        this,
        _$identity,
      );
}

abstract class _HighLatitudeSetting implements HighLatitudeSetting {
  factory _HighLatitudeSetting({
    required final String name,
    required final PrayHightLatitudeCaluclationState method,
    required final bool isSelected,
  }) = _$HighLatitudeSettingImpl;

  @override
  String get name;
  @override
  PrayHightLatitudeCaluclationState get method;
  @override
  bool get isSelected;

  /// Create a copy of HighLatitudeSetting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HighLatitudeSettingImplCopyWith<_$HighLatitudeSettingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
