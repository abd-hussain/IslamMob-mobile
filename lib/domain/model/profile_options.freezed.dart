// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_options.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileOptions {

 IconData get icon; String get name; String get subtitle; bool get avaliable; VoidCallback get onTap;
/// Create a copy of ProfileOptions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileOptionsCopyWith<ProfileOptions> get copyWith => _$ProfileOptionsCopyWithImpl<ProfileOptions>(this as ProfileOptions, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileOptions&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.name, name) || other.name == name)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.avaliable, avaliable) || other.avaliable == avaliable)&&(identical(other.onTap, onTap) || other.onTap == onTap));
}


@override
int get hashCode => Object.hash(runtimeType,icon,name,subtitle,avaliable,onTap);

@override
String toString() {
  return 'ProfileOptions(icon: $icon, name: $name, subtitle: $subtitle, avaliable: $avaliable, onTap: $onTap)';
}


}

/// @nodoc
abstract mixin class $ProfileOptionsCopyWith<$Res>  {
  factory $ProfileOptionsCopyWith(ProfileOptions value, $Res Function(ProfileOptions) _then) = _$ProfileOptionsCopyWithImpl;
@useResult
$Res call({
 IconData icon, String name, String subtitle, bool avaliable, VoidCallback onTap
});




}
/// @nodoc
class _$ProfileOptionsCopyWithImpl<$Res>
    implements $ProfileOptionsCopyWith<$Res> {
  _$ProfileOptionsCopyWithImpl(this._self, this._then);

  final ProfileOptions _self;
  final $Res Function(ProfileOptions) _then;

/// Create a copy of ProfileOptions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? icon = null,Object? name = null,Object? subtitle = null,Object? avaliable = null,Object? onTap = null,}) {
  return _then(_self.copyWith(
icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as IconData,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,subtitle: null == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String,avaliable: null == avaliable ? _self.avaliable : avaliable // ignore: cast_nullable_to_non_nullable
as bool,onTap: null == onTap ? _self.onTap : onTap // ignore: cast_nullable_to_non_nullable
as VoidCallback,
  ));
}

}


/// Adds pattern-matching-related methods to [ProfileOptions].
extension ProfileOptionsPatterns on ProfileOptions {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileOptions value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileOptions() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileOptions value)  $default,){
final _that = this;
switch (_that) {
case _ProfileOptions():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileOptions value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileOptions() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( IconData icon,  String name,  String subtitle,  bool avaliable,  VoidCallback onTap)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileOptions() when $default != null:
return $default(_that.icon,_that.name,_that.subtitle,_that.avaliable,_that.onTap);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( IconData icon,  String name,  String subtitle,  bool avaliable,  VoidCallback onTap)  $default,) {final _that = this;
switch (_that) {
case _ProfileOptions():
return $default(_that.icon,_that.name,_that.subtitle,_that.avaliable,_that.onTap);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( IconData icon,  String name,  String subtitle,  bool avaliable,  VoidCallback onTap)?  $default,) {final _that = this;
switch (_that) {
case _ProfileOptions() when $default != null:
return $default(_that.icon,_that.name,_that.subtitle,_that.avaliable,_that.onTap);case _:
  return null;

}
}

}

/// @nodoc


class _ProfileOptions implements ProfileOptions {
   _ProfileOptions({required this.icon, required this.name, this.subtitle = '', this.avaliable = true, required this.onTap});
  

@override final  IconData icon;
@override final  String name;
@override@JsonKey() final  String subtitle;
@override@JsonKey() final  bool avaliable;
@override final  VoidCallback onTap;

/// Create a copy of ProfileOptions
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileOptionsCopyWith<_ProfileOptions> get copyWith => __$ProfileOptionsCopyWithImpl<_ProfileOptions>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileOptions&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.name, name) || other.name == name)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.avaliable, avaliable) || other.avaliable == avaliable)&&(identical(other.onTap, onTap) || other.onTap == onTap));
}


@override
int get hashCode => Object.hash(runtimeType,icon,name,subtitle,avaliable,onTap);

@override
String toString() {
  return 'ProfileOptions(icon: $icon, name: $name, subtitle: $subtitle, avaliable: $avaliable, onTap: $onTap)';
}


}

/// @nodoc
abstract mixin class _$ProfileOptionsCopyWith<$Res> implements $ProfileOptionsCopyWith<$Res> {
  factory _$ProfileOptionsCopyWith(_ProfileOptions value, $Res Function(_ProfileOptions) _then) = __$ProfileOptionsCopyWithImpl;
@override @useResult
$Res call({
 IconData icon, String name, String subtitle, bool avaliable, VoidCallback onTap
});




}
/// @nodoc
class __$ProfileOptionsCopyWithImpl<$Res>
    implements _$ProfileOptionsCopyWith<$Res> {
  __$ProfileOptionsCopyWithImpl(this._self, this._then);

  final _ProfileOptions _self;
  final $Res Function(_ProfileOptions) _then;

/// Create a copy of ProfileOptions
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? icon = null,Object? name = null,Object? subtitle = null,Object? avaliable = null,Object? onTap = null,}) {
  return _then(_ProfileOptions(
icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as IconData,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,subtitle: null == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String,avaliable: null == avaliable ? _self.avaliable : avaliable // ignore: cast_nullable_to_non_nullable
as bool,onTap: null == onTap ? _self.onTap : onTap // ignore: cast_nullable_to_non_nullable
as VoidCallback,
  ));
}


}

// dart format on
