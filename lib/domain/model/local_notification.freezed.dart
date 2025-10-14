// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LocalNotification {

 String get rightNowMessage; String get description; String get remeningTimeMessage; String get nextSalahTime; String? get soundFileName; bool get isItForCountdown;
/// Create a copy of LocalNotification
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocalNotificationCopyWith<LocalNotification> get copyWith => _$LocalNotificationCopyWithImpl<LocalNotification>(this as LocalNotification, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocalNotification&&(identical(other.rightNowMessage, rightNowMessage) || other.rightNowMessage == rightNowMessage)&&(identical(other.description, description) || other.description == description)&&(identical(other.remeningTimeMessage, remeningTimeMessage) || other.remeningTimeMessage == remeningTimeMessage)&&(identical(other.nextSalahTime, nextSalahTime) || other.nextSalahTime == nextSalahTime)&&(identical(other.soundFileName, soundFileName) || other.soundFileName == soundFileName)&&(identical(other.isItForCountdown, isItForCountdown) || other.isItForCountdown == isItForCountdown));
}


@override
int get hashCode => Object.hash(runtimeType,rightNowMessage,description,remeningTimeMessage,nextSalahTime,soundFileName,isItForCountdown);

@override
String toString() {
  return 'LocalNotification(rightNowMessage: $rightNowMessage, description: $description, remeningTimeMessage: $remeningTimeMessage, nextSalahTime: $nextSalahTime, soundFileName: $soundFileName, isItForCountdown: $isItForCountdown)';
}


}

/// @nodoc
abstract mixin class $LocalNotificationCopyWith<$Res>  {
  factory $LocalNotificationCopyWith(LocalNotification value, $Res Function(LocalNotification) _then) = _$LocalNotificationCopyWithImpl;
@useResult
$Res call({
 String rightNowMessage, String description, String remeningTimeMessage, String nextSalahTime, String? soundFileName, bool isItForCountdown
});




}
/// @nodoc
class _$LocalNotificationCopyWithImpl<$Res>
    implements $LocalNotificationCopyWith<$Res> {
  _$LocalNotificationCopyWithImpl(this._self, this._then);

  final LocalNotification _self;
  final $Res Function(LocalNotification) _then;

/// Create a copy of LocalNotification
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rightNowMessage = null,Object? description = null,Object? remeningTimeMessage = null,Object? nextSalahTime = null,Object? soundFileName = freezed,Object? isItForCountdown = null,}) {
  return _then(_self.copyWith(
rightNowMessage: null == rightNowMessage ? _self.rightNowMessage : rightNowMessage // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,remeningTimeMessage: null == remeningTimeMessage ? _self.remeningTimeMessage : remeningTimeMessage // ignore: cast_nullable_to_non_nullable
as String,nextSalahTime: null == nextSalahTime ? _self.nextSalahTime : nextSalahTime // ignore: cast_nullable_to_non_nullable
as String,soundFileName: freezed == soundFileName ? _self.soundFileName : soundFileName // ignore: cast_nullable_to_non_nullable
as String?,isItForCountdown: null == isItForCountdown ? _self.isItForCountdown : isItForCountdown // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [LocalNotification].
extension LocalNotificationPatterns on LocalNotification {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LocalNotification value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LocalNotification() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LocalNotification value)  $default,){
final _that = this;
switch (_that) {
case _LocalNotification():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LocalNotification value)?  $default,){
final _that = this;
switch (_that) {
case _LocalNotification() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String rightNowMessage,  String description,  String remeningTimeMessage,  String nextSalahTime,  String? soundFileName,  bool isItForCountdown)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LocalNotification() when $default != null:
return $default(_that.rightNowMessage,_that.description,_that.remeningTimeMessage,_that.nextSalahTime,_that.soundFileName,_that.isItForCountdown);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String rightNowMessage,  String description,  String remeningTimeMessage,  String nextSalahTime,  String? soundFileName,  bool isItForCountdown)  $default,) {final _that = this;
switch (_that) {
case _LocalNotification():
return $default(_that.rightNowMessage,_that.description,_that.remeningTimeMessage,_that.nextSalahTime,_that.soundFileName,_that.isItForCountdown);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String rightNowMessage,  String description,  String remeningTimeMessage,  String nextSalahTime,  String? soundFileName,  bool isItForCountdown)?  $default,) {final _that = this;
switch (_that) {
case _LocalNotification() when $default != null:
return $default(_that.rightNowMessage,_that.description,_that.remeningTimeMessage,_that.nextSalahTime,_that.soundFileName,_that.isItForCountdown);case _:
  return null;

}
}

}

/// @nodoc


class _LocalNotification implements LocalNotification {
   _LocalNotification({required this.rightNowMessage, required this.description, required this.remeningTimeMessage, required this.nextSalahTime, required this.soundFileName, required this.isItForCountdown});
  

@override final  String rightNowMessage;
@override final  String description;
@override final  String remeningTimeMessage;
@override final  String nextSalahTime;
@override final  String? soundFileName;
@override final  bool isItForCountdown;

/// Create a copy of LocalNotification
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocalNotificationCopyWith<_LocalNotification> get copyWith => __$LocalNotificationCopyWithImpl<_LocalNotification>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocalNotification&&(identical(other.rightNowMessage, rightNowMessage) || other.rightNowMessage == rightNowMessage)&&(identical(other.description, description) || other.description == description)&&(identical(other.remeningTimeMessage, remeningTimeMessage) || other.remeningTimeMessage == remeningTimeMessage)&&(identical(other.nextSalahTime, nextSalahTime) || other.nextSalahTime == nextSalahTime)&&(identical(other.soundFileName, soundFileName) || other.soundFileName == soundFileName)&&(identical(other.isItForCountdown, isItForCountdown) || other.isItForCountdown == isItForCountdown));
}


@override
int get hashCode => Object.hash(runtimeType,rightNowMessage,description,remeningTimeMessage,nextSalahTime,soundFileName,isItForCountdown);

@override
String toString() {
  return 'LocalNotification(rightNowMessage: $rightNowMessage, description: $description, remeningTimeMessage: $remeningTimeMessage, nextSalahTime: $nextSalahTime, soundFileName: $soundFileName, isItForCountdown: $isItForCountdown)';
}


}

/// @nodoc
abstract mixin class _$LocalNotificationCopyWith<$Res> implements $LocalNotificationCopyWith<$Res> {
  factory _$LocalNotificationCopyWith(_LocalNotification value, $Res Function(_LocalNotification) _then) = __$LocalNotificationCopyWithImpl;
@override @useResult
$Res call({
 String rightNowMessage, String description, String remeningTimeMessage, String nextSalahTime, String? soundFileName, bool isItForCountdown
});




}
/// @nodoc
class __$LocalNotificationCopyWithImpl<$Res>
    implements _$LocalNotificationCopyWith<$Res> {
  __$LocalNotificationCopyWithImpl(this._self, this._then);

  final _LocalNotification _self;
  final $Res Function(_LocalNotification) _then;

/// Create a copy of LocalNotification
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rightNowMessage = null,Object? description = null,Object? remeningTimeMessage = null,Object? nextSalahTime = null,Object? soundFileName = freezed,Object? isItForCountdown = null,}) {
  return _then(_LocalNotification(
rightNowMessage: null == rightNowMessage ? _self.rightNowMessage : rightNowMessage // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,remeningTimeMessage: null == remeningTimeMessage ? _self.remeningTimeMessage : remeningTimeMessage // ignore: cast_nullable_to_non_nullable
as String,nextSalahTime: null == nextSalahTime ? _self.nextSalahTime : nextSalahTime // ignore: cast_nullable_to_non_nullable
as String,soundFileName: freezed == soundFileName ? _self.soundFileName : soundFileName // ignore: cast_nullable_to_non_nullable
as String?,isItForCountdown: null == isItForCountdown ? _self.isItForCountdown : isItForCountdown // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
