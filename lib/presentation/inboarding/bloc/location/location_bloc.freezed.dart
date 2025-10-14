// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LocationEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocationEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LocationEvent()';
}


}

/// @nodoc
class $LocationEventCopyWith<$Res>  {
$LocationEventCopyWith(LocationEvent _, $Res Function(LocationEvent) __);
}


/// Adds pattern-matching-related methods to [LocationEvent].
extension LocationEventPatterns on LocationEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _SetCountryAndCityNames value)?  setCountryAndCityNames,TResult Function( _ChangeLocationStatus value)?  changeLocationStatus,TResult Function( _SetupLocation value)?  setupLocation,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SetCountryAndCityNames() when setCountryAndCityNames != null:
return setCountryAndCityNames(_that);case _ChangeLocationStatus() when changeLocationStatus != null:
return changeLocationStatus(_that);case _SetupLocation() when setupLocation != null:
return setupLocation(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _SetCountryAndCityNames value)  setCountryAndCityNames,required TResult Function( _ChangeLocationStatus value)  changeLocationStatus,required TResult Function( _SetupLocation value)  setupLocation,}){
final _that = this;
switch (_that) {
case _SetCountryAndCityNames():
return setCountryAndCityNames(_that);case _ChangeLocationStatus():
return changeLocationStatus(_that);case _SetupLocation():
return setupLocation(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _SetCountryAndCityNames value)?  setCountryAndCityNames,TResult? Function( _ChangeLocationStatus value)?  changeLocationStatus,TResult? Function( _SetupLocation value)?  setupLocation,}){
final _that = this;
switch (_that) {
case _SetCountryAndCityNames() when setCountryAndCityNames != null:
return setCountryAndCityNames(_that);case _ChangeLocationStatus() when changeLocationStatus != null:
return changeLocationStatus(_that);case _SetupLocation() when setupLocation != null:
return setupLocation(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( LocationModel location)?  setCountryAndCityNames,TResult Function( LocationProcessState status)?  changeLocationStatus,TResult Function()?  setupLocation,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SetCountryAndCityNames() when setCountryAndCityNames != null:
return setCountryAndCityNames(_that.location);case _ChangeLocationStatus() when changeLocationStatus != null:
return changeLocationStatus(_that.status);case _SetupLocation() when setupLocation != null:
return setupLocation();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( LocationModel location)  setCountryAndCityNames,required TResult Function( LocationProcessState status)  changeLocationStatus,required TResult Function()  setupLocation,}) {final _that = this;
switch (_that) {
case _SetCountryAndCityNames():
return setCountryAndCityNames(_that.location);case _ChangeLocationStatus():
return changeLocationStatus(_that.status);case _SetupLocation():
return setupLocation();case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( LocationModel location)?  setCountryAndCityNames,TResult? Function( LocationProcessState status)?  changeLocationStatus,TResult? Function()?  setupLocation,}) {final _that = this;
switch (_that) {
case _SetCountryAndCityNames() when setCountryAndCityNames != null:
return setCountryAndCityNames(_that.location);case _ChangeLocationStatus() when changeLocationStatus != null:
return changeLocationStatus(_that.status);case _SetupLocation() when setupLocation != null:
return setupLocation();case _:
  return null;

}
}

}

/// @nodoc


class _SetCountryAndCityNames implements LocationEvent {
  const _SetCountryAndCityNames({required this.location});
  

 final  LocationModel location;

/// Create a copy of LocationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetCountryAndCityNamesCopyWith<_SetCountryAndCityNames> get copyWith => __$SetCountryAndCityNamesCopyWithImpl<_SetCountryAndCityNames>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetCountryAndCityNames&&(identical(other.location, location) || other.location == location));
}


@override
int get hashCode => Object.hash(runtimeType,location);

@override
String toString() {
  return 'LocationEvent.setCountryAndCityNames(location: $location)';
}


}

/// @nodoc
abstract mixin class _$SetCountryAndCityNamesCopyWith<$Res> implements $LocationEventCopyWith<$Res> {
  factory _$SetCountryAndCityNamesCopyWith(_SetCountryAndCityNames value, $Res Function(_SetCountryAndCityNames) _then) = __$SetCountryAndCityNamesCopyWithImpl;
@useResult
$Res call({
 LocationModel location
});




}
/// @nodoc
class __$SetCountryAndCityNamesCopyWithImpl<$Res>
    implements _$SetCountryAndCityNamesCopyWith<$Res> {
  __$SetCountryAndCityNamesCopyWithImpl(this._self, this._then);

  final _SetCountryAndCityNames _self;
  final $Res Function(_SetCountryAndCityNames) _then;

/// Create a copy of LocationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? location = null,}) {
  return _then(_SetCountryAndCityNames(
location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as LocationModel,
  ));
}


}

/// @nodoc


class _ChangeLocationStatus implements LocationEvent {
  const _ChangeLocationStatus({required this.status});
  

 final  LocationProcessState status;

/// Create a copy of LocationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangeLocationStatusCopyWith<_ChangeLocationStatus> get copyWith => __$ChangeLocationStatusCopyWithImpl<_ChangeLocationStatus>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangeLocationStatus&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,status);

@override
String toString() {
  return 'LocationEvent.changeLocationStatus(status: $status)';
}


}

/// @nodoc
abstract mixin class _$ChangeLocationStatusCopyWith<$Res> implements $LocationEventCopyWith<$Res> {
  factory _$ChangeLocationStatusCopyWith(_ChangeLocationStatus value, $Res Function(_ChangeLocationStatus) _then) = __$ChangeLocationStatusCopyWithImpl;
@useResult
$Res call({
 LocationProcessState status
});


$LocationProcessStateCopyWith<$Res> get status;

}
/// @nodoc
class __$ChangeLocationStatusCopyWithImpl<$Res>
    implements _$ChangeLocationStatusCopyWith<$Res> {
  __$ChangeLocationStatusCopyWithImpl(this._self, this._then);

  final _ChangeLocationStatus _self;
  final $Res Function(_ChangeLocationStatus) _then;

/// Create a copy of LocationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? status = null,}) {
  return _then(_ChangeLocationStatus(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as LocationProcessState,
  ));
}

/// Create a copy of LocationEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationProcessStateCopyWith<$Res> get status {
  
  return $LocationProcessStateCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}

/// @nodoc


class _SetupLocation implements LocationEvent {
  const _SetupLocation();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetupLocation);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LocationEvent.setupLocation()';
}


}




/// @nodoc
mixin _$LocationState {

 LocationModel? get location; LocationProcessState get status;
/// Create a copy of LocationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocationStateCopyWith<LocationState> get copyWith => _$LocationStateCopyWithImpl<LocationState>(this as LocationState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocationState&&(identical(other.location, location) || other.location == location)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,location,status);

@override
String toString() {
  return 'LocationState(location: $location, status: $status)';
}


}

/// @nodoc
abstract mixin class $LocationStateCopyWith<$Res>  {
  factory $LocationStateCopyWith(LocationState value, $Res Function(LocationState) _then) = _$LocationStateCopyWithImpl;
@useResult
$Res call({
 LocationModel? location, LocationProcessState status
});


$LocationProcessStateCopyWith<$Res> get status;

}
/// @nodoc
class _$LocationStateCopyWithImpl<$Res>
    implements $LocationStateCopyWith<$Res> {
  _$LocationStateCopyWithImpl(this._self, this._then);

  final LocationState _self;
  final $Res Function(LocationState) _then;

/// Create a copy of LocationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? location = freezed,Object? status = null,}) {
  return _then(_self.copyWith(
location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as LocationModel?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as LocationProcessState,
  ));
}
/// Create a copy of LocationState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationProcessStateCopyWith<$Res> get status {
  
  return $LocationProcessStateCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}


/// Adds pattern-matching-related methods to [LocationState].
extension LocationStatePatterns on LocationState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LocationState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LocationState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LocationState value)  $default,){
final _that = this;
switch (_that) {
case _LocationState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LocationState value)?  $default,){
final _that = this;
switch (_that) {
case _LocationState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( LocationModel? location,  LocationProcessState status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LocationState() when $default != null:
return $default(_that.location,_that.status);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( LocationModel? location,  LocationProcessState status)  $default,) {final _that = this;
switch (_that) {
case _LocationState():
return $default(_that.location,_that.status);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( LocationModel? location,  LocationProcessState status)?  $default,) {final _that = this;
switch (_that) {
case _LocationState() when $default != null:
return $default(_that.location,_that.status);case _:
  return null;

}
}

}

/// @nodoc


class _LocationState implements LocationState {
  const _LocationState({this.location, this.status = const LocationProcessState.idl()});
  

@override final  LocationModel? location;
@override@JsonKey() final  LocationProcessState status;

/// Create a copy of LocationState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocationStateCopyWith<_LocationState> get copyWith => __$LocationStateCopyWithImpl<_LocationState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocationState&&(identical(other.location, location) || other.location == location)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,location,status);

@override
String toString() {
  return 'LocationState(location: $location, status: $status)';
}


}

/// @nodoc
abstract mixin class _$LocationStateCopyWith<$Res> implements $LocationStateCopyWith<$Res> {
  factory _$LocationStateCopyWith(_LocationState value, $Res Function(_LocationState) _then) = __$LocationStateCopyWithImpl;
@override @useResult
$Res call({
 LocationModel? location, LocationProcessState status
});


@override $LocationProcessStateCopyWith<$Res> get status;

}
/// @nodoc
class __$LocationStateCopyWithImpl<$Res>
    implements _$LocationStateCopyWith<$Res> {
  __$LocationStateCopyWithImpl(this._self, this._then);

  final _LocationState _self;
  final $Res Function(_LocationState) _then;

/// Create a copy of LocationState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? location = freezed,Object? status = null,}) {
  return _then(_LocationState(
location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as LocationModel?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as LocationProcessState,
  ));
}

/// Create a copy of LocationState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationProcessStateCopyWith<$Res> get status {
  
  return $LocationProcessStateCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}

/// @nodoc
mixin _$LocationProcessState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocationProcessState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LocationProcessState()';
}


}

/// @nodoc
class $LocationProcessStateCopyWith<$Res>  {
$LocationProcessStateCopyWith(LocationProcessState _, $Res Function(LocationProcessState) __);
}


/// Adds pattern-matching-related methods to [LocationProcessState].
extension LocationProcessStatePatterns on LocationProcessState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LocationProcessStateIdl value)?  idl,TResult Function( LocationProcessStateLoading value)?  loading,TResult Function( LocationProcessStateNoPermission value)?  noPermission,TResult Function( LocationProcessStateLocationManually value)?  locationManually,TResult Function( LocationProcessStateHavePermission value)?  havePermission,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LocationProcessStateIdl() when idl != null:
return idl(_that);case LocationProcessStateLoading() when loading != null:
return loading(_that);case LocationProcessStateNoPermission() when noPermission != null:
return noPermission(_that);case LocationProcessStateLocationManually() when locationManually != null:
return locationManually(_that);case LocationProcessStateHavePermission() when havePermission != null:
return havePermission(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LocationProcessStateIdl value)  idl,required TResult Function( LocationProcessStateLoading value)  loading,required TResult Function( LocationProcessStateNoPermission value)  noPermission,required TResult Function( LocationProcessStateLocationManually value)  locationManually,required TResult Function( LocationProcessStateHavePermission value)  havePermission,}){
final _that = this;
switch (_that) {
case LocationProcessStateIdl():
return idl(_that);case LocationProcessStateLoading():
return loading(_that);case LocationProcessStateNoPermission():
return noPermission(_that);case LocationProcessStateLocationManually():
return locationManually(_that);case LocationProcessStateHavePermission():
return havePermission(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LocationProcessStateIdl value)?  idl,TResult? Function( LocationProcessStateLoading value)?  loading,TResult? Function( LocationProcessStateNoPermission value)?  noPermission,TResult? Function( LocationProcessStateLocationManually value)?  locationManually,TResult? Function( LocationProcessStateHavePermission value)?  havePermission,}){
final _that = this;
switch (_that) {
case LocationProcessStateIdl() when idl != null:
return idl(_that);case LocationProcessStateLoading() when loading != null:
return loading(_that);case LocationProcessStateNoPermission() when noPermission != null:
return noPermission(_that);case LocationProcessStateLocationManually() when locationManually != null:
return locationManually(_that);case LocationProcessStateHavePermission() when havePermission != null:
return havePermission(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  idl,TResult Function()?  loading,TResult Function()?  noPermission,TResult Function()?  locationManually,TResult Function()?  havePermission,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LocationProcessStateIdl() when idl != null:
return idl();case LocationProcessStateLoading() when loading != null:
return loading();case LocationProcessStateNoPermission() when noPermission != null:
return noPermission();case LocationProcessStateLocationManually() when locationManually != null:
return locationManually();case LocationProcessStateHavePermission() when havePermission != null:
return havePermission();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  idl,required TResult Function()  loading,required TResult Function()  noPermission,required TResult Function()  locationManually,required TResult Function()  havePermission,}) {final _that = this;
switch (_that) {
case LocationProcessStateIdl():
return idl();case LocationProcessStateLoading():
return loading();case LocationProcessStateNoPermission():
return noPermission();case LocationProcessStateLocationManually():
return locationManually();case LocationProcessStateHavePermission():
return havePermission();}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  idl,TResult? Function()?  loading,TResult? Function()?  noPermission,TResult? Function()?  locationManually,TResult? Function()?  havePermission,}) {final _that = this;
switch (_that) {
case LocationProcessStateIdl() when idl != null:
return idl();case LocationProcessStateLoading() when loading != null:
return loading();case LocationProcessStateNoPermission() when noPermission != null:
return noPermission();case LocationProcessStateLocationManually() when locationManually != null:
return locationManually();case LocationProcessStateHavePermission() when havePermission != null:
return havePermission();case _:
  return null;

}
}

}

/// @nodoc


class LocationProcessStateIdl implements LocationProcessState {
  const LocationProcessStateIdl();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocationProcessStateIdl);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LocationProcessState.idl()';
}


}




/// @nodoc


class LocationProcessStateLoading implements LocationProcessState {
  const LocationProcessStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocationProcessStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LocationProcessState.loading()';
}


}




/// @nodoc


class LocationProcessStateNoPermission implements LocationProcessState {
  const LocationProcessStateNoPermission();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocationProcessStateNoPermission);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LocationProcessState.noPermission()';
}


}




/// @nodoc


class LocationProcessStateLocationManually implements LocationProcessState {
  const LocationProcessStateLocationManually();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocationProcessStateLocationManually);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LocationProcessState.locationManually()';
}


}




/// @nodoc


class LocationProcessStateHavePermission implements LocationProcessState {
  const LocationProcessStateHavePermission();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocationProcessStateHavePermission);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LocationProcessState.havePermission()';
}


}




// dart format on
