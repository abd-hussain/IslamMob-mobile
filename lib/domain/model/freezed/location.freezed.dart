// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LocationModel {
  String get country => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get subCity => throw _privateConstructorUsedError;
  String get street => throw _privateConstructorUsedError;
  String get latitude => throw _privateConstructorUsedError;
  String get longitude => throw _privateConstructorUsedError;
  String get thoroughfare => throw _privateConstructorUsedError;
  String get countryCode => throw _privateConstructorUsedError;

  /// Create a copy of LocationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationModelCopyWith<LocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationModelCopyWith<$Res> {
  factory $LocationModelCopyWith(
          LocationModel value, $Res Function(LocationModel) then) =
      _$LocationModelCopyWithImpl<$Res, LocationModel>;
  @useResult
  $Res call(
      {String country,
      String city,
      String subCity,
      String street,
      String latitude,
      String longitude,
      String thoroughfare,
      String countryCode});
}

/// @nodoc
class _$LocationModelCopyWithImpl<$Res, $Val extends LocationModel>
    implements $LocationModelCopyWith<$Res> {
  _$LocationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
    Object? city = null,
    Object? subCity = null,
    Object? street = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? thoroughfare = null,
    Object? countryCode = null,
  }) {
    return _then(_value.copyWith(
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      subCity: null == subCity
          ? _value.subCity
          : subCity // ignore: cast_nullable_to_non_nullable
              as String,
      street: null == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
      thoroughfare: null == thoroughfare
          ? _value.thoroughfare
          : thoroughfare // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationModelImplCopyWith<$Res>
    implements $LocationModelCopyWith<$Res> {
  factory _$$LocationModelImplCopyWith(
          _$LocationModelImpl value, $Res Function(_$LocationModelImpl) then) =
      __$$LocationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String country,
      String city,
      String subCity,
      String street,
      String latitude,
      String longitude,
      String thoroughfare,
      String countryCode});
}

/// @nodoc
class __$$LocationModelImplCopyWithImpl<$Res>
    extends _$LocationModelCopyWithImpl<$Res, _$LocationModelImpl>
    implements _$$LocationModelImplCopyWith<$Res> {
  __$$LocationModelImplCopyWithImpl(
      _$LocationModelImpl _value, $Res Function(_$LocationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
    Object? city = null,
    Object? subCity = null,
    Object? street = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? thoroughfare = null,
    Object? countryCode = null,
  }) {
    return _then(_$LocationModelImpl(
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      subCity: null == subCity
          ? _value.subCity
          : subCity // ignore: cast_nullable_to_non_nullable
              as String,
      street: null == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
      thoroughfare: null == thoroughfare
          ? _value.thoroughfare
          : thoroughfare // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LocationModelImpl implements _LocationModel {
  _$LocationModelImpl(
      {required this.country,
      required this.city,
      required this.subCity,
      required this.street,
      required this.latitude,
      required this.longitude,
      required this.thoroughfare,
      required this.countryCode});

  @override
  final String country;
  @override
  final String city;
  @override
  final String subCity;
  @override
  final String street;
  @override
  final String latitude;
  @override
  final String longitude;
  @override
  final String thoroughfare;
  @override
  final String countryCode;

  @override
  String toString() {
    return 'LocationModel(country: $country, city: $city, subCity: $subCity, street: $street, latitude: $latitude, longitude: $longitude, thoroughfare: $thoroughfare, countryCode: $countryCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationModelImpl &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.subCity, subCity) || other.subCity == subCity) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.thoroughfare, thoroughfare) ||
                other.thoroughfare == thoroughfare) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, country, city, subCity, street,
      latitude, longitude, thoroughfare, countryCode);

  /// Create a copy of LocationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationModelImplCopyWith<_$LocationModelImpl> get copyWith =>
      __$$LocationModelImplCopyWithImpl<_$LocationModelImpl>(this, _$identity);
}

abstract class _LocationModel implements LocationModel {
  factory _LocationModel(
      {required final String country,
      required final String city,
      required final String subCity,
      required final String street,
      required final String latitude,
      required final String longitude,
      required final String thoroughfare,
      required final String countryCode}) = _$LocationModelImpl;

  @override
  String get country;
  @override
  String get city;
  @override
  String get subCity;
  @override
  String get street;
  @override
  String get latitude;
  @override
  String get longitude;
  @override
  String get thoroughfare;
  @override
  String get countryCode;

  /// Create a copy of LocationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationModelImplCopyWith<_$LocationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
