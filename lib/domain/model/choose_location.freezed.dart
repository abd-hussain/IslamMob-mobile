// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'choose_location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChooseLocation {
  String get flag => throw _privateConstructorUsedError;
  String get countryName => throw _privateConstructorUsedError;
  String get latitude => throw _privateConstructorUsedError;
  String get longitude => throw _privateConstructorUsedError;

  /// Create a copy of ChooseLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChooseLocationCopyWith<ChooseLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChooseLocationCopyWith<$Res> {
  factory $ChooseLocationCopyWith(
          ChooseLocation value, $Res Function(ChooseLocation) then) =
      _$ChooseLocationCopyWithImpl<$Res, ChooseLocation>;
  @useResult
  $Res call(
      {String flag, String countryName, String latitude, String longitude});
}

/// @nodoc
class _$ChooseLocationCopyWithImpl<$Res, $Val extends ChooseLocation>
    implements $ChooseLocationCopyWith<$Res> {
  _$ChooseLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChooseLocation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flag = null,
    Object? countryName = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_value.copyWith(
      flag: null == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as String,
      countryName: null == countryName
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChooseLocationImplCopyWith<$Res>
    implements $ChooseLocationCopyWith<$Res> {
  factory _$$ChooseLocationImplCopyWith(_$ChooseLocationImpl value,
          $Res Function(_$ChooseLocationImpl) then) =
      __$$ChooseLocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String flag, String countryName, String latitude, String longitude});
}

/// @nodoc
class __$$ChooseLocationImplCopyWithImpl<$Res>
    extends _$ChooseLocationCopyWithImpl<$Res, _$ChooseLocationImpl>
    implements _$$ChooseLocationImplCopyWith<$Res> {
  __$$ChooseLocationImplCopyWithImpl(
      _$ChooseLocationImpl _value, $Res Function(_$ChooseLocationImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChooseLocation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flag = null,
    Object? countryName = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$ChooseLocationImpl(
      flag: null == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as String,
      countryName: null == countryName
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChooseLocationImpl implements _ChooseLocation {
  _$ChooseLocationImpl(
      {required this.flag,
      required this.countryName,
      required this.latitude,
      required this.longitude});

  @override
  final String flag;
  @override
  final String countryName;
  @override
  final String latitude;
  @override
  final String longitude;

  @override
  String toString() {
    return 'ChooseLocation(flag: $flag, countryName: $countryName, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChooseLocationImpl &&
            (identical(other.flag, flag) || other.flag == flag) &&
            (identical(other.countryName, countryName) ||
                other.countryName == countryName) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, flag, countryName, latitude, longitude);

  /// Create a copy of ChooseLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChooseLocationImplCopyWith<_$ChooseLocationImpl> get copyWith =>
      __$$ChooseLocationImplCopyWithImpl<_$ChooseLocationImpl>(
          this, _$identity);
}

abstract class _ChooseLocation implements ChooseLocation {
  factory _ChooseLocation(
      {required final String flag,
      required final String countryName,
      required final String latitude,
      required final String longitude}) = _$ChooseLocationImpl;

  @override
  String get flag;
  @override
  String get countryName;
  @override
  String get latitude;
  @override
  String get longitude;

  /// Create a copy of ChooseLocation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChooseLocationImplCopyWith<_$ChooseLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
