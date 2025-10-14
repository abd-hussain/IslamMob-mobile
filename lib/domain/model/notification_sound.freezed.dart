// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_sound.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NotificationSound {

 String get name; String get soundFileName;
/// Create a copy of NotificationSound
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationSoundCopyWith<NotificationSound> get copyWith => _$NotificationSoundCopyWithImpl<NotificationSound>(this as NotificationSound, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationSound&&(identical(other.name, name) || other.name == name)&&(identical(other.soundFileName, soundFileName) || other.soundFileName == soundFileName));
}


@override
int get hashCode => Object.hash(runtimeType,name,soundFileName);

@override
String toString() {
  return 'NotificationSound(name: $name, soundFileName: $soundFileName)';
}


}

/// @nodoc
abstract mixin class $NotificationSoundCopyWith<$Res>  {
  factory $NotificationSoundCopyWith(NotificationSound value, $Res Function(NotificationSound) _then) = _$NotificationSoundCopyWithImpl;
@useResult
$Res call({
 String name, String soundFileName
});




}
/// @nodoc
class _$NotificationSoundCopyWithImpl<$Res>
    implements $NotificationSoundCopyWith<$Res> {
  _$NotificationSoundCopyWithImpl(this._self, this._then);

  final NotificationSound _self;
  final $Res Function(NotificationSound) _then;

/// Create a copy of NotificationSound
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? soundFileName = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,soundFileName: null == soundFileName ? _self.soundFileName : soundFileName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationSound].
extension NotificationSoundPatterns on NotificationSound {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationSound value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationSound() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationSound value)  $default,){
final _that = this;
switch (_that) {
case _NotificationSound():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationSound value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationSound() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String soundFileName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationSound() when $default != null:
return $default(_that.name,_that.soundFileName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String soundFileName)  $default,) {final _that = this;
switch (_that) {
case _NotificationSound():
return $default(_that.name,_that.soundFileName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String soundFileName)?  $default,) {final _that = this;
switch (_that) {
case _NotificationSound() when $default != null:
return $default(_that.name,_that.soundFileName);case _:
  return null;

}
}

}

/// @nodoc


class _NotificationSound implements NotificationSound {
   _NotificationSound({required this.name, required this.soundFileName});
  

@override final  String name;
@override final  String soundFileName;

/// Create a copy of NotificationSound
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationSoundCopyWith<_NotificationSound> get copyWith => __$NotificationSoundCopyWithImpl<_NotificationSound>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationSound&&(identical(other.name, name) || other.name == name)&&(identical(other.soundFileName, soundFileName) || other.soundFileName == soundFileName));
}


@override
int get hashCode => Object.hash(runtimeType,name,soundFileName);

@override
String toString() {
  return 'NotificationSound(name: $name, soundFileName: $soundFileName)';
}


}

/// @nodoc
abstract mixin class _$NotificationSoundCopyWith<$Res> implements $NotificationSoundCopyWith<$Res> {
  factory _$NotificationSoundCopyWith(_NotificationSound value, $Res Function(_NotificationSound) _then) = __$NotificationSoundCopyWithImpl;
@override @useResult
$Res call({
 String name, String soundFileName
});




}
/// @nodoc
class __$NotificationSoundCopyWithImpl<$Res>
    implements _$NotificationSoundCopyWith<$Res> {
  __$NotificationSoundCopyWithImpl(this._self, this._then);

  final _NotificationSound _self;
  final $Res Function(_NotificationSound) _then;

/// Create a copy of NotificationSound
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? soundFileName = null,}) {
  return _then(_NotificationSound(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,soundFileName: null == soundFileName ? _self.soundFileName : soundFileName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
