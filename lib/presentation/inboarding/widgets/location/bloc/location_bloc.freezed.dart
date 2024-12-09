// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LocationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocationModel location) setCountryAndCityNames,
    required TResult Function(LocationProcessState status) changeLocationStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LocationModel location)? setCountryAndCityNames,
    TResult? Function(LocationProcessState status)? changeLocationStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocationModel location)? setCountryAndCityNames,
    TResult Function(LocationProcessState status)? changeLocationStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetCountryAndCityNames value)
        setCountryAndCityNames,
    required TResult Function(_ChangeLocationStatus value) changeLocationStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetCountryAndCityNames value)? setCountryAndCityNames,
    TResult? Function(_ChangeLocationStatus value)? changeLocationStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetCountryAndCityNames value)? setCountryAndCityNames,
    TResult Function(_ChangeLocationStatus value)? changeLocationStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationEventCopyWith<$Res> {
  factory $LocationEventCopyWith(
          LocationEvent value, $Res Function(LocationEvent) then) =
      _$LocationEventCopyWithImpl<$Res, LocationEvent>;
}

/// @nodoc
class _$LocationEventCopyWithImpl<$Res, $Val extends LocationEvent>
    implements $LocationEventCopyWith<$Res> {
  _$LocationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SetCountryAndCityNamesImplCopyWith<$Res> {
  factory _$$SetCountryAndCityNamesImplCopyWith(
          _$SetCountryAndCityNamesImpl value,
          $Res Function(_$SetCountryAndCityNamesImpl) then) =
      __$$SetCountryAndCityNamesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LocationModel location});
}

/// @nodoc
class __$$SetCountryAndCityNamesImplCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res, _$SetCountryAndCityNamesImpl>
    implements _$$SetCountryAndCityNamesImplCopyWith<$Res> {
  __$$SetCountryAndCityNamesImplCopyWithImpl(
      _$SetCountryAndCityNamesImpl _value,
      $Res Function(_$SetCountryAndCityNamesImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
  }) {
    return _then(_$SetCountryAndCityNamesImpl(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel,
    ));
  }
}

/// @nodoc

class _$SetCountryAndCityNamesImpl implements _SetCountryAndCityNames {
  const _$SetCountryAndCityNamesImpl({required this.location});

  @override
  final LocationModel location;

  @override
  String toString() {
    return 'LocationEvent.setCountryAndCityNames(location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetCountryAndCityNamesImpl &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode => Object.hash(runtimeType, location);

  /// Create a copy of LocationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetCountryAndCityNamesImplCopyWith<_$SetCountryAndCityNamesImpl>
      get copyWith => __$$SetCountryAndCityNamesImplCopyWithImpl<
          _$SetCountryAndCityNamesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocationModel location) setCountryAndCityNames,
    required TResult Function(LocationProcessState status) changeLocationStatus,
  }) {
    return setCountryAndCityNames(location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LocationModel location)? setCountryAndCityNames,
    TResult? Function(LocationProcessState status)? changeLocationStatus,
  }) {
    return setCountryAndCityNames?.call(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocationModel location)? setCountryAndCityNames,
    TResult Function(LocationProcessState status)? changeLocationStatus,
    required TResult orElse(),
  }) {
    if (setCountryAndCityNames != null) {
      return setCountryAndCityNames(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetCountryAndCityNames value)
        setCountryAndCityNames,
    required TResult Function(_ChangeLocationStatus value) changeLocationStatus,
  }) {
    return setCountryAndCityNames(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetCountryAndCityNames value)? setCountryAndCityNames,
    TResult? Function(_ChangeLocationStatus value)? changeLocationStatus,
  }) {
    return setCountryAndCityNames?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetCountryAndCityNames value)? setCountryAndCityNames,
    TResult Function(_ChangeLocationStatus value)? changeLocationStatus,
    required TResult orElse(),
  }) {
    if (setCountryAndCityNames != null) {
      return setCountryAndCityNames(this);
    }
    return orElse();
  }
}

abstract class _SetCountryAndCityNames implements LocationEvent {
  const factory _SetCountryAndCityNames(
      {required final LocationModel location}) = _$SetCountryAndCityNamesImpl;

  LocationModel get location;

  /// Create a copy of LocationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetCountryAndCityNamesImplCopyWith<_$SetCountryAndCityNamesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeLocationStatusImplCopyWith<$Res> {
  factory _$$ChangeLocationStatusImplCopyWith(_$ChangeLocationStatusImpl value,
          $Res Function(_$ChangeLocationStatusImpl) then) =
      __$$ChangeLocationStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LocationProcessState status});

  $LocationProcessStateCopyWith<$Res> get status;
}

/// @nodoc
class __$$ChangeLocationStatusImplCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res, _$ChangeLocationStatusImpl>
    implements _$$ChangeLocationStatusImplCopyWith<$Res> {
  __$$ChangeLocationStatusImplCopyWithImpl(_$ChangeLocationStatusImpl _value,
      $Res Function(_$ChangeLocationStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$ChangeLocationStatusImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LocationProcessState,
    ));
  }

  /// Create a copy of LocationEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationProcessStateCopyWith<$Res> get status {
    return $LocationProcessStateCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value));
    });
  }
}

/// @nodoc

class _$ChangeLocationStatusImpl implements _ChangeLocationStatus {
  const _$ChangeLocationStatusImpl({required this.status});

  @override
  final LocationProcessState status;

  @override
  String toString() {
    return 'LocationEvent.changeLocationStatus(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeLocationStatusImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of LocationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeLocationStatusImplCopyWith<_$ChangeLocationStatusImpl>
      get copyWith =>
          __$$ChangeLocationStatusImplCopyWithImpl<_$ChangeLocationStatusImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocationModel location) setCountryAndCityNames,
    required TResult Function(LocationProcessState status) changeLocationStatus,
  }) {
    return changeLocationStatus(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LocationModel location)? setCountryAndCityNames,
    TResult? Function(LocationProcessState status)? changeLocationStatus,
  }) {
    return changeLocationStatus?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocationModel location)? setCountryAndCityNames,
    TResult Function(LocationProcessState status)? changeLocationStatus,
    required TResult orElse(),
  }) {
    if (changeLocationStatus != null) {
      return changeLocationStatus(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetCountryAndCityNames value)
        setCountryAndCityNames,
    required TResult Function(_ChangeLocationStatus value) changeLocationStatus,
  }) {
    return changeLocationStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetCountryAndCityNames value)? setCountryAndCityNames,
    TResult? Function(_ChangeLocationStatus value)? changeLocationStatus,
  }) {
    return changeLocationStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetCountryAndCityNames value)? setCountryAndCityNames,
    TResult Function(_ChangeLocationStatus value)? changeLocationStatus,
    required TResult orElse(),
  }) {
    if (changeLocationStatus != null) {
      return changeLocationStatus(this);
    }
    return orElse();
  }
}

abstract class _ChangeLocationStatus implements LocationEvent {
  const factory _ChangeLocationStatus(
          {required final LocationProcessState status}) =
      _$ChangeLocationStatusImpl;

  LocationProcessState get status;

  /// Create a copy of LocationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeLocationStatusImplCopyWith<_$ChangeLocationStatusImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LocationState {
  String get countryName => throw _privateConstructorUsedError;
  String get cityName => throw _privateConstructorUsedError;
  String get subCityName => throw _privateConstructorUsedError;
  String get street => throw _privateConstructorUsedError;
  String get latitude => throw _privateConstructorUsedError;
  String get longitude => throw _privateConstructorUsedError;
  String get thoroughfare => throw _privateConstructorUsedError;
  LocationProcessState get status => throw _privateConstructorUsedError;

  /// Create a copy of LocationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationStateCopyWith<LocationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationStateCopyWith<$Res> {
  factory $LocationStateCopyWith(
          LocationState value, $Res Function(LocationState) then) =
      _$LocationStateCopyWithImpl<$Res, LocationState>;
  @useResult
  $Res call(
      {String countryName,
      String cityName,
      String subCityName,
      String street,
      String latitude,
      String longitude,
      String thoroughfare,
      LocationProcessState status});

  $LocationProcessStateCopyWith<$Res> get status;
}

/// @nodoc
class _$LocationStateCopyWithImpl<$Res, $Val extends LocationState>
    implements $LocationStateCopyWith<$Res> {
  _$LocationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryName = null,
    Object? cityName = null,
    Object? subCityName = null,
    Object? street = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? thoroughfare = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      countryName: null == countryName
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String,
      cityName: null == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      subCityName: null == subCityName
          ? _value.subCityName
          : subCityName // ignore: cast_nullable_to_non_nullable
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
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LocationProcessState,
    ) as $Val);
  }

  /// Create a copy of LocationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationProcessStateCopyWith<$Res> get status {
    return $LocationProcessStateCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LocationStateImplCopyWith<$Res>
    implements $LocationStateCopyWith<$Res> {
  factory _$$LocationStateImplCopyWith(
          _$LocationStateImpl value, $Res Function(_$LocationStateImpl) then) =
      __$$LocationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String countryName,
      String cityName,
      String subCityName,
      String street,
      String latitude,
      String longitude,
      String thoroughfare,
      LocationProcessState status});

  @override
  $LocationProcessStateCopyWith<$Res> get status;
}

/// @nodoc
class __$$LocationStateImplCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$LocationStateImpl>
    implements _$$LocationStateImplCopyWith<$Res> {
  __$$LocationStateImplCopyWithImpl(
      _$LocationStateImpl _value, $Res Function(_$LocationStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryName = null,
    Object? cityName = null,
    Object? subCityName = null,
    Object? street = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? thoroughfare = null,
    Object? status = null,
  }) {
    return _then(_$LocationStateImpl(
      countryName: null == countryName
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String,
      cityName: null == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      subCityName: null == subCityName
          ? _value.subCityName
          : subCityName // ignore: cast_nullable_to_non_nullable
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
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LocationProcessState,
    ));
  }
}

/// @nodoc

class _$LocationStateImpl implements _LocationState {
  const _$LocationStateImpl(
      {this.countryName = "",
      this.cityName = "",
      this.subCityName = "",
      this.street = "",
      this.latitude = "",
      this.longitude = "",
      this.thoroughfare = "",
      this.status = const LocationProcessState.idl()});

  @override
  @JsonKey()
  final String countryName;
  @override
  @JsonKey()
  final String cityName;
  @override
  @JsonKey()
  final String subCityName;
  @override
  @JsonKey()
  final String street;
  @override
  @JsonKey()
  final String latitude;
  @override
  @JsonKey()
  final String longitude;
  @override
  @JsonKey()
  final String thoroughfare;
  @override
  @JsonKey()
  final LocationProcessState status;

  @override
  String toString() {
    return 'LocationState(countryName: $countryName, cityName: $cityName, subCityName: $subCityName, street: $street, latitude: $latitude, longitude: $longitude, thoroughfare: $thoroughfare, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationStateImpl &&
            (identical(other.countryName, countryName) ||
                other.countryName == countryName) &&
            (identical(other.cityName, cityName) ||
                other.cityName == cityName) &&
            (identical(other.subCityName, subCityName) ||
                other.subCityName == subCityName) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.thoroughfare, thoroughfare) ||
                other.thoroughfare == thoroughfare) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, countryName, cityName,
      subCityName, street, latitude, longitude, thoroughfare, status);

  /// Create a copy of LocationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationStateImplCopyWith<_$LocationStateImpl> get copyWith =>
      __$$LocationStateImplCopyWithImpl<_$LocationStateImpl>(this, _$identity);
}

abstract class _LocationState implements LocationState {
  const factory _LocationState(
      {final String countryName,
      final String cityName,
      final String subCityName,
      final String street,
      final String latitude,
      final String longitude,
      final String thoroughfare,
      final LocationProcessState status}) = _$LocationStateImpl;

  @override
  String get countryName;
  @override
  String get cityName;
  @override
  String get subCityName;
  @override
  String get street;
  @override
  String get latitude;
  @override
  String get longitude;
  @override
  String get thoroughfare;
  @override
  LocationProcessState get status;

  /// Create a copy of LocationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationStateImplCopyWith<_$LocationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LocationProcessState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idl,
    required TResult Function() loading,
    required TResult Function() noPermission,
    required TResult Function() havePermission,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idl,
    TResult? Function()? loading,
    TResult? Function()? noPermission,
    TResult? Function()? havePermission,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idl,
    TResult Function()? loading,
    TResult Function()? noPermission,
    TResult Function()? havePermission,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationProcessStateIdl value) idl,
    required TResult Function(LocationProcessStateLoading value) loading,
    required TResult Function(LocationProcessStateNoPermission value)
        noPermission,
    required TResult Function(LocationProcessStateHavePermission value)
        havePermission,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationProcessStateIdl value)? idl,
    TResult? Function(LocationProcessStateLoading value)? loading,
    TResult? Function(LocationProcessStateNoPermission value)? noPermission,
    TResult? Function(LocationProcessStateHavePermission value)? havePermission,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationProcessStateIdl value)? idl,
    TResult Function(LocationProcessStateLoading value)? loading,
    TResult Function(LocationProcessStateNoPermission value)? noPermission,
    TResult Function(LocationProcessStateHavePermission value)? havePermission,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationProcessStateCopyWith<$Res> {
  factory $LocationProcessStateCopyWith(LocationProcessState value,
          $Res Function(LocationProcessState) then) =
      _$LocationProcessStateCopyWithImpl<$Res, LocationProcessState>;
}

/// @nodoc
class _$LocationProcessStateCopyWithImpl<$Res,
        $Val extends LocationProcessState>
    implements $LocationProcessStateCopyWith<$Res> {
  _$LocationProcessStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationProcessState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LocationProcessStateIdlImplCopyWith<$Res> {
  factory _$$LocationProcessStateIdlImplCopyWith(
          _$LocationProcessStateIdlImpl value,
          $Res Function(_$LocationProcessStateIdlImpl) then) =
      __$$LocationProcessStateIdlImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocationProcessStateIdlImplCopyWithImpl<$Res>
    extends _$LocationProcessStateCopyWithImpl<$Res,
        _$LocationProcessStateIdlImpl>
    implements _$$LocationProcessStateIdlImplCopyWith<$Res> {
  __$$LocationProcessStateIdlImplCopyWithImpl(
      _$LocationProcessStateIdlImpl _value,
      $Res Function(_$LocationProcessStateIdlImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocationProcessState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LocationProcessStateIdlImpl implements LocationProcessStateIdl {
  const _$LocationProcessStateIdlImpl();

  @override
  String toString() {
    return 'LocationProcessState.idl()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationProcessStateIdlImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idl,
    required TResult Function() loading,
    required TResult Function() noPermission,
    required TResult Function() havePermission,
  }) {
    return idl();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idl,
    TResult? Function()? loading,
    TResult? Function()? noPermission,
    TResult? Function()? havePermission,
  }) {
    return idl?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idl,
    TResult Function()? loading,
    TResult Function()? noPermission,
    TResult Function()? havePermission,
    required TResult orElse(),
  }) {
    if (idl != null) {
      return idl();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationProcessStateIdl value) idl,
    required TResult Function(LocationProcessStateLoading value) loading,
    required TResult Function(LocationProcessStateNoPermission value)
        noPermission,
    required TResult Function(LocationProcessStateHavePermission value)
        havePermission,
  }) {
    return idl(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationProcessStateIdl value)? idl,
    TResult? Function(LocationProcessStateLoading value)? loading,
    TResult? Function(LocationProcessStateNoPermission value)? noPermission,
    TResult? Function(LocationProcessStateHavePermission value)? havePermission,
  }) {
    return idl?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationProcessStateIdl value)? idl,
    TResult Function(LocationProcessStateLoading value)? loading,
    TResult Function(LocationProcessStateNoPermission value)? noPermission,
    TResult Function(LocationProcessStateHavePermission value)? havePermission,
    required TResult orElse(),
  }) {
    if (idl != null) {
      return idl(this);
    }
    return orElse();
  }
}

abstract class LocationProcessStateIdl implements LocationProcessState {
  const factory LocationProcessStateIdl() = _$LocationProcessStateIdlImpl;
}

/// @nodoc
abstract class _$$LocationProcessStateLoadingImplCopyWith<$Res> {
  factory _$$LocationProcessStateLoadingImplCopyWith(
          _$LocationProcessStateLoadingImpl value,
          $Res Function(_$LocationProcessStateLoadingImpl) then) =
      __$$LocationProcessStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocationProcessStateLoadingImplCopyWithImpl<$Res>
    extends _$LocationProcessStateCopyWithImpl<$Res,
        _$LocationProcessStateLoadingImpl>
    implements _$$LocationProcessStateLoadingImplCopyWith<$Res> {
  __$$LocationProcessStateLoadingImplCopyWithImpl(
      _$LocationProcessStateLoadingImpl _value,
      $Res Function(_$LocationProcessStateLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocationProcessState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LocationProcessStateLoadingImpl implements LocationProcessStateLoading {
  const _$LocationProcessStateLoadingImpl();

  @override
  String toString() {
    return 'LocationProcessState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationProcessStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idl,
    required TResult Function() loading,
    required TResult Function() noPermission,
    required TResult Function() havePermission,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idl,
    TResult? Function()? loading,
    TResult? Function()? noPermission,
    TResult? Function()? havePermission,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idl,
    TResult Function()? loading,
    TResult Function()? noPermission,
    TResult Function()? havePermission,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationProcessStateIdl value) idl,
    required TResult Function(LocationProcessStateLoading value) loading,
    required TResult Function(LocationProcessStateNoPermission value)
        noPermission,
    required TResult Function(LocationProcessStateHavePermission value)
        havePermission,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationProcessStateIdl value)? idl,
    TResult? Function(LocationProcessStateLoading value)? loading,
    TResult? Function(LocationProcessStateNoPermission value)? noPermission,
    TResult? Function(LocationProcessStateHavePermission value)? havePermission,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationProcessStateIdl value)? idl,
    TResult Function(LocationProcessStateLoading value)? loading,
    TResult Function(LocationProcessStateNoPermission value)? noPermission,
    TResult Function(LocationProcessStateHavePermission value)? havePermission,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LocationProcessStateLoading implements LocationProcessState {
  const factory LocationProcessStateLoading() =
      _$LocationProcessStateLoadingImpl;
}

/// @nodoc
abstract class _$$LocationProcessStateNoPermissionImplCopyWith<$Res> {
  factory _$$LocationProcessStateNoPermissionImplCopyWith(
          _$LocationProcessStateNoPermissionImpl value,
          $Res Function(_$LocationProcessStateNoPermissionImpl) then) =
      __$$LocationProcessStateNoPermissionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocationProcessStateNoPermissionImplCopyWithImpl<$Res>
    extends _$LocationProcessStateCopyWithImpl<$Res,
        _$LocationProcessStateNoPermissionImpl>
    implements _$$LocationProcessStateNoPermissionImplCopyWith<$Res> {
  __$$LocationProcessStateNoPermissionImplCopyWithImpl(
      _$LocationProcessStateNoPermissionImpl _value,
      $Res Function(_$LocationProcessStateNoPermissionImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocationProcessState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LocationProcessStateNoPermissionImpl
    implements LocationProcessStateNoPermission {
  const _$LocationProcessStateNoPermissionImpl();

  @override
  String toString() {
    return 'LocationProcessState.noPermission()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationProcessStateNoPermissionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idl,
    required TResult Function() loading,
    required TResult Function() noPermission,
    required TResult Function() havePermission,
  }) {
    return noPermission();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idl,
    TResult? Function()? loading,
    TResult? Function()? noPermission,
    TResult? Function()? havePermission,
  }) {
    return noPermission?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idl,
    TResult Function()? loading,
    TResult Function()? noPermission,
    TResult Function()? havePermission,
    required TResult orElse(),
  }) {
    if (noPermission != null) {
      return noPermission();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationProcessStateIdl value) idl,
    required TResult Function(LocationProcessStateLoading value) loading,
    required TResult Function(LocationProcessStateNoPermission value)
        noPermission,
    required TResult Function(LocationProcessStateHavePermission value)
        havePermission,
  }) {
    return noPermission(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationProcessStateIdl value)? idl,
    TResult? Function(LocationProcessStateLoading value)? loading,
    TResult? Function(LocationProcessStateNoPermission value)? noPermission,
    TResult? Function(LocationProcessStateHavePermission value)? havePermission,
  }) {
    return noPermission?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationProcessStateIdl value)? idl,
    TResult Function(LocationProcessStateLoading value)? loading,
    TResult Function(LocationProcessStateNoPermission value)? noPermission,
    TResult Function(LocationProcessStateHavePermission value)? havePermission,
    required TResult orElse(),
  }) {
    if (noPermission != null) {
      return noPermission(this);
    }
    return orElse();
  }
}

abstract class LocationProcessStateNoPermission
    implements LocationProcessState {
  const factory LocationProcessStateNoPermission() =
      _$LocationProcessStateNoPermissionImpl;
}

/// @nodoc
abstract class _$$LocationProcessStateHavePermissionImplCopyWith<$Res> {
  factory _$$LocationProcessStateHavePermissionImplCopyWith(
          _$LocationProcessStateHavePermissionImpl value,
          $Res Function(_$LocationProcessStateHavePermissionImpl) then) =
      __$$LocationProcessStateHavePermissionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocationProcessStateHavePermissionImplCopyWithImpl<$Res>
    extends _$LocationProcessStateCopyWithImpl<$Res,
        _$LocationProcessStateHavePermissionImpl>
    implements _$$LocationProcessStateHavePermissionImplCopyWith<$Res> {
  __$$LocationProcessStateHavePermissionImplCopyWithImpl(
      _$LocationProcessStateHavePermissionImpl _value,
      $Res Function(_$LocationProcessStateHavePermissionImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocationProcessState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LocationProcessStateHavePermissionImpl
    implements LocationProcessStateHavePermission {
  const _$LocationProcessStateHavePermissionImpl();

  @override
  String toString() {
    return 'LocationProcessState.havePermission()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationProcessStateHavePermissionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idl,
    required TResult Function() loading,
    required TResult Function() noPermission,
    required TResult Function() havePermission,
  }) {
    return havePermission();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idl,
    TResult? Function()? loading,
    TResult? Function()? noPermission,
    TResult? Function()? havePermission,
  }) {
    return havePermission?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idl,
    TResult Function()? loading,
    TResult Function()? noPermission,
    TResult Function()? havePermission,
    required TResult orElse(),
  }) {
    if (havePermission != null) {
      return havePermission();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationProcessStateIdl value) idl,
    required TResult Function(LocationProcessStateLoading value) loading,
    required TResult Function(LocationProcessStateNoPermission value)
        noPermission,
    required TResult Function(LocationProcessStateHavePermission value)
        havePermission,
  }) {
    return havePermission(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationProcessStateIdl value)? idl,
    TResult? Function(LocationProcessStateLoading value)? loading,
    TResult? Function(LocationProcessStateNoPermission value)? noPermission,
    TResult? Function(LocationProcessStateHavePermission value)? havePermission,
  }) {
    return havePermission?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationProcessStateIdl value)? idl,
    TResult Function(LocationProcessStateLoading value)? loading,
    TResult Function(LocationProcessStateNoPermission value)? noPermission,
    TResult Function(LocationProcessStateHavePermission value)? havePermission,
    required TResult orElse(),
  }) {
    if (havePermission != null) {
      return havePermission(this);
    }
    return orElse();
  }
}

abstract class LocationProcessStateHavePermission
    implements LocationProcessState {
  const factory LocationProcessStateHavePermission() =
      _$LocationProcessStateHavePermissionImpl;
}
