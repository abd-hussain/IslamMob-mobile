// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'madhab_setting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MadhabSetting {

 String get name; MadhabState get method; bool get isSelected;
/// Create a copy of MadhabSetting
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MadhabSettingCopyWith<MadhabSetting> get copyWith => _$MadhabSettingCopyWithImpl<MadhabSetting>(this as MadhabSetting, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MadhabSetting&&(identical(other.name, name) || other.name == name)&&(identical(other.method, method) || other.method == method)&&(identical(other.isSelected, isSelected) || other.isSelected == isSelected));
}


@override
int get hashCode => Object.hash(runtimeType,name,method,isSelected);

@override
String toString() {
  return 'MadhabSetting(name: $name, method: $method, isSelected: $isSelected)';
}


}

/// @nodoc
abstract mixin class $MadhabSettingCopyWith<$Res>  {
  factory $MadhabSettingCopyWith(MadhabSetting value, $Res Function(MadhabSetting) _then) = _$MadhabSettingCopyWithImpl;
@useResult
$Res call({
 String name, MadhabState method, bool isSelected
});


$MadhabStateCopyWith<$Res> get method;

}
/// @nodoc
class _$MadhabSettingCopyWithImpl<$Res>
    implements $MadhabSettingCopyWith<$Res> {
  _$MadhabSettingCopyWithImpl(this._self, this._then);

  final MadhabSetting _self;
  final $Res Function(MadhabSetting) _then;

/// Create a copy of MadhabSetting
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? method = null,Object? isSelected = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as MadhabState,isSelected: null == isSelected ? _self.isSelected : isSelected // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of MadhabSetting
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MadhabStateCopyWith<$Res> get method {
  
  return $MadhabStateCopyWith<$Res>(_self.method, (value) {
    return _then(_self.copyWith(method: value));
  });
}
}


/// Adds pattern-matching-related methods to [MadhabSetting].
extension MadhabSettingPatterns on MadhabSetting {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MadhabSetting value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MadhabSetting() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MadhabSetting value)  $default,){
final _that = this;
switch (_that) {
case _MadhabSetting():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MadhabSetting value)?  $default,){
final _that = this;
switch (_that) {
case _MadhabSetting() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  MadhabState method,  bool isSelected)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MadhabSetting() when $default != null:
return $default(_that.name,_that.method,_that.isSelected);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  MadhabState method,  bool isSelected)  $default,) {final _that = this;
switch (_that) {
case _MadhabSetting():
return $default(_that.name,_that.method,_that.isSelected);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  MadhabState method,  bool isSelected)?  $default,) {final _that = this;
switch (_that) {
case _MadhabSetting() when $default != null:
return $default(_that.name,_that.method,_that.isSelected);case _:
  return null;

}
}

}

/// @nodoc


class _MadhabSetting implements MadhabSetting {
   _MadhabSetting({required this.name, required this.method, required this.isSelected});
  

@override final  String name;
@override final  MadhabState method;
@override final  bool isSelected;

/// Create a copy of MadhabSetting
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MadhabSettingCopyWith<_MadhabSetting> get copyWith => __$MadhabSettingCopyWithImpl<_MadhabSetting>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MadhabSetting&&(identical(other.name, name) || other.name == name)&&(identical(other.method, method) || other.method == method)&&(identical(other.isSelected, isSelected) || other.isSelected == isSelected));
}


@override
int get hashCode => Object.hash(runtimeType,name,method,isSelected);

@override
String toString() {
  return 'MadhabSetting(name: $name, method: $method, isSelected: $isSelected)';
}


}

/// @nodoc
abstract mixin class _$MadhabSettingCopyWith<$Res> implements $MadhabSettingCopyWith<$Res> {
  factory _$MadhabSettingCopyWith(_MadhabSetting value, $Res Function(_MadhabSetting) _then) = __$MadhabSettingCopyWithImpl;
@override @useResult
$Res call({
 String name, MadhabState method, bool isSelected
});


@override $MadhabStateCopyWith<$Res> get method;

}
/// @nodoc
class __$MadhabSettingCopyWithImpl<$Res>
    implements _$MadhabSettingCopyWith<$Res> {
  __$MadhabSettingCopyWithImpl(this._self, this._then);

  final _MadhabSetting _self;
  final $Res Function(_MadhabSetting) _then;

/// Create a copy of MadhabSetting
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? method = null,Object? isSelected = null,}) {
  return _then(_MadhabSetting(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as MadhabState,isSelected: null == isSelected ? _self.isSelected : isSelected // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of MadhabSetting
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MadhabStateCopyWith<$Res> get method {
  
  return $MadhabStateCopyWith<$Res>(_self.method, (value) {
    return _then(_self.copyWith(method: value));
  });
}
}

// dart format on
