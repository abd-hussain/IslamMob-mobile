// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'choose_sound_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChooseSoundEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChooseSoundEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChooseSoundEvent()';
}


}

/// @nodoc
class $ChooseSoundEventCopyWith<$Res>  {
$ChooseSoundEventCopyWith(ChooseSoundEvent _, $Res Function(ChooseSoundEvent) __);
}


/// Adds pattern-matching-related methods to [ChooseSoundEvent].
extension ChooseSoundEventPatterns on ChooseSoundEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _InitialNotificationSoundSettings value)?  initialNotificationSoundSettings,TResult Function( _ChangeNotificationSoundSettings value)?  changeNotificationSoundSettings,TResult Function( _SaveChanges value)?  saveChanges,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InitialNotificationSoundSettings() when initialNotificationSoundSettings != null:
return initialNotificationSoundSettings(_that);case _ChangeNotificationSoundSettings() when changeNotificationSoundSettings != null:
return changeNotificationSoundSettings(_that);case _SaveChanges() when saveChanges != null:
return saveChanges(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _InitialNotificationSoundSettings value)  initialNotificationSoundSettings,required TResult Function( _ChangeNotificationSoundSettings value)  changeNotificationSoundSettings,required TResult Function( _SaveChanges value)  saveChanges,}){
final _that = this;
switch (_that) {
case _InitialNotificationSoundSettings():
return initialNotificationSoundSettings(_that);case _ChangeNotificationSoundSettings():
return changeNotificationSoundSettings(_that);case _SaveChanges():
return saveChanges(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _InitialNotificationSoundSettings value)?  initialNotificationSoundSettings,TResult? Function( _ChangeNotificationSoundSettings value)?  changeNotificationSoundSettings,TResult? Function( _SaveChanges value)?  saveChanges,}){
final _that = this;
switch (_that) {
case _InitialNotificationSoundSettings() when initialNotificationSoundSettings != null:
return initialNotificationSoundSettings(_that);case _ChangeNotificationSoundSettings() when changeNotificationSoundSettings != null:
return changeNotificationSoundSettings(_that);case _SaveChanges() when saveChanges != null:
return saveChanges(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( NotificationTypeState type,  IslamMobLocalizations localization)?  initialNotificationSoundSettings,TResult Function( String soundFileName)?  changeNotificationSoundSettings,TResult Function( NotificationTypeState type)?  saveChanges,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InitialNotificationSoundSettings() when initialNotificationSoundSettings != null:
return initialNotificationSoundSettings(_that.type,_that.localization);case _ChangeNotificationSoundSettings() when changeNotificationSoundSettings != null:
return changeNotificationSoundSettings(_that.soundFileName);case _SaveChanges() when saveChanges != null:
return saveChanges(_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( NotificationTypeState type,  IslamMobLocalizations localization)  initialNotificationSoundSettings,required TResult Function( String soundFileName)  changeNotificationSoundSettings,required TResult Function( NotificationTypeState type)  saveChanges,}) {final _that = this;
switch (_that) {
case _InitialNotificationSoundSettings():
return initialNotificationSoundSettings(_that.type,_that.localization);case _ChangeNotificationSoundSettings():
return changeNotificationSoundSettings(_that.soundFileName);case _SaveChanges():
return saveChanges(_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( NotificationTypeState type,  IslamMobLocalizations localization)?  initialNotificationSoundSettings,TResult? Function( String soundFileName)?  changeNotificationSoundSettings,TResult? Function( NotificationTypeState type)?  saveChanges,}) {final _that = this;
switch (_that) {
case _InitialNotificationSoundSettings() when initialNotificationSoundSettings != null:
return initialNotificationSoundSettings(_that.type,_that.localization);case _ChangeNotificationSoundSettings() when changeNotificationSoundSettings != null:
return changeNotificationSoundSettings(_that.soundFileName);case _SaveChanges() when saveChanges != null:
return saveChanges(_that.type);case _:
  return null;

}
}

}

/// @nodoc


class _InitialNotificationSoundSettings implements ChooseSoundEvent {
  const _InitialNotificationSoundSettings({required this.type, required this.localization});
  

 final  NotificationTypeState type;
 final  IslamMobLocalizations localization;

/// Create a copy of ChooseSoundEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitialNotificationSoundSettingsCopyWith<_InitialNotificationSoundSettings> get copyWith => __$InitialNotificationSoundSettingsCopyWithImpl<_InitialNotificationSoundSettings>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InitialNotificationSoundSettings&&(identical(other.type, type) || other.type == type)&&(identical(other.localization, localization) || other.localization == localization));
}


@override
int get hashCode => Object.hash(runtimeType,type,localization);

@override
String toString() {
  return 'ChooseSoundEvent.initialNotificationSoundSettings(type: $type, localization: $localization)';
}


}

/// @nodoc
abstract mixin class _$InitialNotificationSoundSettingsCopyWith<$Res> implements $ChooseSoundEventCopyWith<$Res> {
  factory _$InitialNotificationSoundSettingsCopyWith(_InitialNotificationSoundSettings value, $Res Function(_InitialNotificationSoundSettings) _then) = __$InitialNotificationSoundSettingsCopyWithImpl;
@useResult
$Res call({
 NotificationTypeState type, IslamMobLocalizations localization
});


$NotificationTypeStateCopyWith<$Res> get type;

}
/// @nodoc
class __$InitialNotificationSoundSettingsCopyWithImpl<$Res>
    implements _$InitialNotificationSoundSettingsCopyWith<$Res> {
  __$InitialNotificationSoundSettingsCopyWithImpl(this._self, this._then);

  final _InitialNotificationSoundSettings _self;
  final $Res Function(_InitialNotificationSoundSettings) _then;

/// Create a copy of ChooseSoundEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? type = null,Object? localization = null,}) {
  return _then(_InitialNotificationSoundSettings(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as NotificationTypeState,localization: null == localization ? _self.localization : localization // ignore: cast_nullable_to_non_nullable
as IslamMobLocalizations,
  ));
}

/// Create a copy of ChooseSoundEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationTypeStateCopyWith<$Res> get type {
  
  return $NotificationTypeStateCopyWith<$Res>(_self.type, (value) {
    return _then(_self.copyWith(type: value));
  });
}
}

/// @nodoc


class _ChangeNotificationSoundSettings implements ChooseSoundEvent {
  const _ChangeNotificationSoundSettings(this.soundFileName);
  

 final  String soundFileName;

/// Create a copy of ChooseSoundEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangeNotificationSoundSettingsCopyWith<_ChangeNotificationSoundSettings> get copyWith => __$ChangeNotificationSoundSettingsCopyWithImpl<_ChangeNotificationSoundSettings>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangeNotificationSoundSettings&&(identical(other.soundFileName, soundFileName) || other.soundFileName == soundFileName));
}


@override
int get hashCode => Object.hash(runtimeType,soundFileName);

@override
String toString() {
  return 'ChooseSoundEvent.changeNotificationSoundSettings(soundFileName: $soundFileName)';
}


}

/// @nodoc
abstract mixin class _$ChangeNotificationSoundSettingsCopyWith<$Res> implements $ChooseSoundEventCopyWith<$Res> {
  factory _$ChangeNotificationSoundSettingsCopyWith(_ChangeNotificationSoundSettings value, $Res Function(_ChangeNotificationSoundSettings) _then) = __$ChangeNotificationSoundSettingsCopyWithImpl;
@useResult
$Res call({
 String soundFileName
});




}
/// @nodoc
class __$ChangeNotificationSoundSettingsCopyWithImpl<$Res>
    implements _$ChangeNotificationSoundSettingsCopyWith<$Res> {
  __$ChangeNotificationSoundSettingsCopyWithImpl(this._self, this._then);

  final _ChangeNotificationSoundSettings _self;
  final $Res Function(_ChangeNotificationSoundSettings) _then;

/// Create a copy of ChooseSoundEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? soundFileName = null,}) {
  return _then(_ChangeNotificationSoundSettings(
null == soundFileName ? _self.soundFileName : soundFileName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _SaveChanges implements ChooseSoundEvent {
  const _SaveChanges({required this.type});
  

 final  NotificationTypeState type;

/// Create a copy of ChooseSoundEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SaveChangesCopyWith<_SaveChanges> get copyWith => __$SaveChangesCopyWithImpl<_SaveChanges>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SaveChanges&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,type);

@override
String toString() {
  return 'ChooseSoundEvent.saveChanges(type: $type)';
}


}

/// @nodoc
abstract mixin class _$SaveChangesCopyWith<$Res> implements $ChooseSoundEventCopyWith<$Res> {
  factory _$SaveChangesCopyWith(_SaveChanges value, $Res Function(_SaveChanges) _then) = __$SaveChangesCopyWithImpl;
@useResult
$Res call({
 NotificationTypeState type
});


$NotificationTypeStateCopyWith<$Res> get type;

}
/// @nodoc
class __$SaveChangesCopyWithImpl<$Res>
    implements _$SaveChangesCopyWith<$Res> {
  __$SaveChangesCopyWithImpl(this._self, this._then);

  final _SaveChanges _self;
  final $Res Function(_SaveChanges) _then;

/// Create a copy of ChooseSoundEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? type = null,}) {
  return _then(_SaveChanges(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as NotificationTypeState,
  ));
}

/// Create a copy of ChooseSoundEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationTypeStateCopyWith<$Res> get type {
  
  return $NotificationTypeStateCopyWith<$Res>(_self.type, (value) {
    return _then(_self.copyWith(type: value));
  });
}
}

/// @nodoc
mixin _$ChooseSoundState {

 String get selectedSound; List<NotificationSound> get notificationSounds;
/// Create a copy of ChooseSoundState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChooseSoundStateCopyWith<ChooseSoundState> get copyWith => _$ChooseSoundStateCopyWithImpl<ChooseSoundState>(this as ChooseSoundState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChooseSoundState&&(identical(other.selectedSound, selectedSound) || other.selectedSound == selectedSound)&&const DeepCollectionEquality().equals(other.notificationSounds, notificationSounds));
}


@override
int get hashCode => Object.hash(runtimeType,selectedSound,const DeepCollectionEquality().hash(notificationSounds));

@override
String toString() {
  return 'ChooseSoundState(selectedSound: $selectedSound, notificationSounds: $notificationSounds)';
}


}

/// @nodoc
abstract mixin class $ChooseSoundStateCopyWith<$Res>  {
  factory $ChooseSoundStateCopyWith(ChooseSoundState value, $Res Function(ChooseSoundState) _then) = _$ChooseSoundStateCopyWithImpl;
@useResult
$Res call({
 String selectedSound, List<NotificationSound> notificationSounds
});




}
/// @nodoc
class _$ChooseSoundStateCopyWithImpl<$Res>
    implements $ChooseSoundStateCopyWith<$Res> {
  _$ChooseSoundStateCopyWithImpl(this._self, this._then);

  final ChooseSoundState _self;
  final $Res Function(ChooseSoundState) _then;

/// Create a copy of ChooseSoundState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selectedSound = null,Object? notificationSounds = null,}) {
  return _then(_self.copyWith(
selectedSound: null == selectedSound ? _self.selectedSound : selectedSound // ignore: cast_nullable_to_non_nullable
as String,notificationSounds: null == notificationSounds ? _self.notificationSounds : notificationSounds // ignore: cast_nullable_to_non_nullable
as List<NotificationSound>,
  ));
}

}


/// Adds pattern-matching-related methods to [ChooseSoundState].
extension ChooseSoundStatePatterns on ChooseSoundState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChooseSoundState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChooseSoundState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChooseSoundState value)  $default,){
final _that = this;
switch (_that) {
case _ChooseSoundState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChooseSoundState value)?  $default,){
final _that = this;
switch (_that) {
case _ChooseSoundState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String selectedSound,  List<NotificationSound> notificationSounds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChooseSoundState() when $default != null:
return $default(_that.selectedSound,_that.notificationSounds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String selectedSound,  List<NotificationSound> notificationSounds)  $default,) {final _that = this;
switch (_that) {
case _ChooseSoundState():
return $default(_that.selectedSound,_that.notificationSounds);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String selectedSound,  List<NotificationSound> notificationSounds)?  $default,) {final _that = this;
switch (_that) {
case _ChooseSoundState() when $default != null:
return $default(_that.selectedSound,_that.notificationSounds);case _:
  return null;

}
}

}

/// @nodoc


class _ChooseSoundState implements ChooseSoundState {
  const _ChooseSoundState({this.selectedSound = "", final  List<NotificationSound> notificationSounds = const []}): _notificationSounds = notificationSounds;
  

@override@JsonKey() final  String selectedSound;
 final  List<NotificationSound> _notificationSounds;
@override@JsonKey() List<NotificationSound> get notificationSounds {
  if (_notificationSounds is EqualUnmodifiableListView) return _notificationSounds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_notificationSounds);
}


/// Create a copy of ChooseSoundState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChooseSoundStateCopyWith<_ChooseSoundState> get copyWith => __$ChooseSoundStateCopyWithImpl<_ChooseSoundState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChooseSoundState&&(identical(other.selectedSound, selectedSound) || other.selectedSound == selectedSound)&&const DeepCollectionEquality().equals(other._notificationSounds, _notificationSounds));
}


@override
int get hashCode => Object.hash(runtimeType,selectedSound,const DeepCollectionEquality().hash(_notificationSounds));

@override
String toString() {
  return 'ChooseSoundState(selectedSound: $selectedSound, notificationSounds: $notificationSounds)';
}


}

/// @nodoc
abstract mixin class _$ChooseSoundStateCopyWith<$Res> implements $ChooseSoundStateCopyWith<$Res> {
  factory _$ChooseSoundStateCopyWith(_ChooseSoundState value, $Res Function(_ChooseSoundState) _then) = __$ChooseSoundStateCopyWithImpl;
@override @useResult
$Res call({
 String selectedSound, List<NotificationSound> notificationSounds
});




}
/// @nodoc
class __$ChooseSoundStateCopyWithImpl<$Res>
    implements _$ChooseSoundStateCopyWith<$Res> {
  __$ChooseSoundStateCopyWithImpl(this._self, this._then);

  final _ChooseSoundState _self;
  final $Res Function(_ChooseSoundState) _then;

/// Create a copy of ChooseSoundState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selectedSound = null,Object? notificationSounds = null,}) {
  return _then(_ChooseSoundState(
selectedSound: null == selectedSound ? _self.selectedSound : selectedSound // ignore: cast_nullable_to_non_nullable
as String,notificationSounds: null == notificationSounds ? _self._notificationSounds : notificationSounds // ignore: cast_nullable_to_non_nullable
as List<NotificationSound>,
  ));
}


}

// dart format on
