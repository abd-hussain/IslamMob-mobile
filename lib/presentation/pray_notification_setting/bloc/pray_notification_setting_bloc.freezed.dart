// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pray_notification_setting_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PrayNotificationSettingEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PrayNotificationSettingEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PrayNotificationSettingEvent()';
}


}

/// @nodoc
class $PrayNotificationSettingEventCopyWith<$Res>  {
$PrayNotificationSettingEventCopyWith(PrayNotificationSettingEvent _, $Res Function(PrayNotificationSettingEvent) __);
}


/// Adds pattern-matching-related methods to [PrayNotificationSettingEvent].
extension PrayNotificationSettingEventPatterns on PrayNotificationSettingEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _InitialPrayNotificationSettings value)?  initialPrayNotificationSettings,TResult Function( _ChangePrayNotificationSettings value)?  changePrayNotificationSettings,TResult Function( _SavePrayNotificationSettings value)?  savePrayNotificationSettings,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InitialPrayNotificationSettings() when initialPrayNotificationSettings != null:
return initialPrayNotificationSettings(_that);case _ChangePrayNotificationSettings() when changePrayNotificationSettings != null:
return changePrayNotificationSettings(_that);case _SavePrayNotificationSettings() when savePrayNotificationSettings != null:
return savePrayNotificationSettings(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _InitialPrayNotificationSettings value)  initialPrayNotificationSettings,required TResult Function( _ChangePrayNotificationSettings value)  changePrayNotificationSettings,required TResult Function( _SavePrayNotificationSettings value)  savePrayNotificationSettings,}){
final _that = this;
switch (_that) {
case _InitialPrayNotificationSettings():
return initialPrayNotificationSettings(_that);case _ChangePrayNotificationSettings():
return changePrayNotificationSettings(_that);case _SavePrayNotificationSettings():
return savePrayNotificationSettings(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _InitialPrayNotificationSettings value)?  initialPrayNotificationSettings,TResult? Function( _ChangePrayNotificationSettings value)?  changePrayNotificationSettings,TResult? Function( _SavePrayNotificationSettings value)?  savePrayNotificationSettings,}){
final _that = this;
switch (_that) {
case _InitialPrayNotificationSettings() when initialPrayNotificationSettings != null:
return initialPrayNotificationSettings(_that);case _ChangePrayNotificationSettings() when changePrayNotificationSettings != null:
return changePrayNotificationSettings(_that);case _SavePrayNotificationSettings() when savePrayNotificationSettings != null:
return savePrayNotificationSettings(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initialPrayNotificationSettings,TResult Function( bool status,  DateTime? date,  PrayNotificationTypeState type)?  changePrayNotificationSettings,TResult Function( BuildContext context)?  savePrayNotificationSettings,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InitialPrayNotificationSettings() when initialPrayNotificationSettings != null:
return initialPrayNotificationSettings();case _ChangePrayNotificationSettings() when changePrayNotificationSettings != null:
return changePrayNotificationSettings(_that.status,_that.date,_that.type);case _SavePrayNotificationSettings() when savePrayNotificationSettings != null:
return savePrayNotificationSettings(_that.context);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initialPrayNotificationSettings,required TResult Function( bool status,  DateTime? date,  PrayNotificationTypeState type)  changePrayNotificationSettings,required TResult Function( BuildContext context)  savePrayNotificationSettings,}) {final _that = this;
switch (_that) {
case _InitialPrayNotificationSettings():
return initialPrayNotificationSettings();case _ChangePrayNotificationSettings():
return changePrayNotificationSettings(_that.status,_that.date,_that.type);case _SavePrayNotificationSettings():
return savePrayNotificationSettings(_that.context);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initialPrayNotificationSettings,TResult? Function( bool status,  DateTime? date,  PrayNotificationTypeState type)?  changePrayNotificationSettings,TResult? Function( BuildContext context)?  savePrayNotificationSettings,}) {final _that = this;
switch (_that) {
case _InitialPrayNotificationSettings() when initialPrayNotificationSettings != null:
return initialPrayNotificationSettings();case _ChangePrayNotificationSettings() when changePrayNotificationSettings != null:
return changePrayNotificationSettings(_that.status,_that.date,_that.type);case _SavePrayNotificationSettings() when savePrayNotificationSettings != null:
return savePrayNotificationSettings(_that.context);case _:
  return null;

}
}

}

/// @nodoc


class _InitialPrayNotificationSettings implements PrayNotificationSettingEvent {
  const _InitialPrayNotificationSettings();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InitialPrayNotificationSettings);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PrayNotificationSettingEvent.initialPrayNotificationSettings()';
}


}




/// @nodoc


class _ChangePrayNotificationSettings implements PrayNotificationSettingEvent {
  const _ChangePrayNotificationSettings({required this.status, this.date, required this.type});
  

 final  bool status;
 final  DateTime? date;
 final  PrayNotificationTypeState type;

/// Create a copy of PrayNotificationSettingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangePrayNotificationSettingsCopyWith<_ChangePrayNotificationSettings> get copyWith => __$ChangePrayNotificationSettingsCopyWithImpl<_ChangePrayNotificationSettings>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangePrayNotificationSettings&&(identical(other.status, status) || other.status == status)&&(identical(other.date, date) || other.date == date)&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,status,date,type);

@override
String toString() {
  return 'PrayNotificationSettingEvent.changePrayNotificationSettings(status: $status, date: $date, type: $type)';
}


}

/// @nodoc
abstract mixin class _$ChangePrayNotificationSettingsCopyWith<$Res> implements $PrayNotificationSettingEventCopyWith<$Res> {
  factory _$ChangePrayNotificationSettingsCopyWith(_ChangePrayNotificationSettings value, $Res Function(_ChangePrayNotificationSettings) _then) = __$ChangePrayNotificationSettingsCopyWithImpl;
@useResult
$Res call({
 bool status, DateTime? date, PrayNotificationTypeState type
});


$PrayNotificationTypeStateCopyWith<$Res> get type;

}
/// @nodoc
class __$ChangePrayNotificationSettingsCopyWithImpl<$Res>
    implements _$ChangePrayNotificationSettingsCopyWith<$Res> {
  __$ChangePrayNotificationSettingsCopyWithImpl(this._self, this._then);

  final _ChangePrayNotificationSettings _self;
  final $Res Function(_ChangePrayNotificationSettings) _then;

/// Create a copy of PrayNotificationSettingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? status = null,Object? date = freezed,Object? type = null,}) {
  return _then(_ChangePrayNotificationSettings(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as PrayNotificationTypeState,
  ));
}

/// Create a copy of PrayNotificationSettingEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PrayNotificationTypeStateCopyWith<$Res> get type {
  
  return $PrayNotificationTypeStateCopyWith<$Res>(_self.type, (value) {
    return _then(_self.copyWith(type: value));
  });
}
}

/// @nodoc


class _SavePrayNotificationSettings implements PrayNotificationSettingEvent {
  const _SavePrayNotificationSettings({required this.context});
  

 final  BuildContext context;

/// Create a copy of PrayNotificationSettingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SavePrayNotificationSettingsCopyWith<_SavePrayNotificationSettings> get copyWith => __$SavePrayNotificationSettingsCopyWithImpl<_SavePrayNotificationSettings>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SavePrayNotificationSettings&&(identical(other.context, context) || other.context == context));
}


@override
int get hashCode => Object.hash(runtimeType,context);

@override
String toString() {
  return 'PrayNotificationSettingEvent.savePrayNotificationSettings(context: $context)';
}


}

/// @nodoc
abstract mixin class _$SavePrayNotificationSettingsCopyWith<$Res> implements $PrayNotificationSettingEventCopyWith<$Res> {
  factory _$SavePrayNotificationSettingsCopyWith(_SavePrayNotificationSettings value, $Res Function(_SavePrayNotificationSettings) _then) = __$SavePrayNotificationSettingsCopyWithImpl;
@useResult
$Res call({
 BuildContext context
});




}
/// @nodoc
class __$SavePrayNotificationSettingsCopyWithImpl<$Res>
    implements _$SavePrayNotificationSettingsCopyWith<$Res> {
  __$SavePrayNotificationSettingsCopyWithImpl(this._self, this._then);

  final _SavePrayNotificationSettings _self;
  final $Res Function(_SavePrayNotificationSettings) _then;

/// Create a copy of PrayNotificationSettingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? context = null,}) {
  return _then(_SavePrayNotificationSettings(
context: null == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as BuildContext,
  ));
}


}

/// @nodoc
mixin _$PrayNotificationSettingState {

/// Whether all notifications are enabled for today only.
 String get allNotificationForToday;/// Whether all notifications are enabled for weekdays.
 String get allNotificationForWeekDay;/// Whether Fajr prayer notifications are enabled.
 bool get fajir;/// Whether Dhuhr prayer notifications are enabled.
 bool get duhir;/// Whether Asr prayer notifications are enabled.
 bool get asr;/// Whether Maghrib prayer notifications are enabled.
 bool get magrieb;/// Whether Isha prayer notifications are enabled.
 bool get isha;/// Whether sunrise time notifications are enabled.
 bool get sunriseTime;/// Whether Friday Al-Kahf notifications are enabled.
 bool get jom3aAlkahf;/// Whether Friday prayer notifications are enabled.
 bool get jom3aDo3aa;/// Whether night prayer (Qiyam al-Layl) notifications are enabled.
 bool get qeyamAlLayel;/// Whether 15-minute before prayer notifications are enabled.
 bool get before15Min;/// The current loading/processing status of the settings.
 dynamic get loadingStatus;
/// Create a copy of PrayNotificationSettingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PrayNotificationSettingStateCopyWith<PrayNotificationSettingState> get copyWith => _$PrayNotificationSettingStateCopyWithImpl<PrayNotificationSettingState>(this as PrayNotificationSettingState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PrayNotificationSettingState&&(identical(other.allNotificationForToday, allNotificationForToday) || other.allNotificationForToday == allNotificationForToday)&&(identical(other.allNotificationForWeekDay, allNotificationForWeekDay) || other.allNotificationForWeekDay == allNotificationForWeekDay)&&(identical(other.fajir, fajir) || other.fajir == fajir)&&(identical(other.duhir, duhir) || other.duhir == duhir)&&(identical(other.asr, asr) || other.asr == asr)&&(identical(other.magrieb, magrieb) || other.magrieb == magrieb)&&(identical(other.isha, isha) || other.isha == isha)&&(identical(other.sunriseTime, sunriseTime) || other.sunriseTime == sunriseTime)&&(identical(other.jom3aAlkahf, jom3aAlkahf) || other.jom3aAlkahf == jom3aAlkahf)&&(identical(other.jom3aDo3aa, jom3aDo3aa) || other.jom3aDo3aa == jom3aDo3aa)&&(identical(other.qeyamAlLayel, qeyamAlLayel) || other.qeyamAlLayel == qeyamAlLayel)&&(identical(other.before15Min, before15Min) || other.before15Min == before15Min)&&const DeepCollectionEquality().equals(other.loadingStatus, loadingStatus));
}


@override
int get hashCode => Object.hash(runtimeType,allNotificationForToday,allNotificationForWeekDay,fajir,duhir,asr,magrieb,isha,sunriseTime,jom3aAlkahf,jom3aDo3aa,qeyamAlLayel,before15Min,const DeepCollectionEquality().hash(loadingStatus));

@override
String toString() {
  return 'PrayNotificationSettingState(allNotificationForToday: $allNotificationForToday, allNotificationForWeekDay: $allNotificationForWeekDay, fajir: $fajir, duhir: $duhir, asr: $asr, magrieb: $magrieb, isha: $isha, sunriseTime: $sunriseTime, jom3aAlkahf: $jom3aAlkahf, jom3aDo3aa: $jom3aDo3aa, qeyamAlLayel: $qeyamAlLayel, before15Min: $before15Min, loadingStatus: $loadingStatus)';
}


}

/// @nodoc
abstract mixin class $PrayNotificationSettingStateCopyWith<$Res>  {
  factory $PrayNotificationSettingStateCopyWith(PrayNotificationSettingState value, $Res Function(PrayNotificationSettingState) _then) = _$PrayNotificationSettingStateCopyWithImpl;
@useResult
$Res call({
 String allNotificationForToday, String allNotificationForWeekDay, bool fajir, bool duhir, bool asr, bool magrieb, bool isha, bool sunriseTime, bool jom3aAlkahf, bool jom3aDo3aa, bool qeyamAlLayel, bool before15Min, dynamic loadingStatus
});




}
/// @nodoc
class _$PrayNotificationSettingStateCopyWithImpl<$Res>
    implements $PrayNotificationSettingStateCopyWith<$Res> {
  _$PrayNotificationSettingStateCopyWithImpl(this._self, this._then);

  final PrayNotificationSettingState _self;
  final $Res Function(PrayNotificationSettingState) _then;

/// Create a copy of PrayNotificationSettingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? allNotificationForToday = null,Object? allNotificationForWeekDay = null,Object? fajir = null,Object? duhir = null,Object? asr = null,Object? magrieb = null,Object? isha = null,Object? sunriseTime = null,Object? jom3aAlkahf = null,Object? jom3aDo3aa = null,Object? qeyamAlLayel = null,Object? before15Min = null,Object? loadingStatus = freezed,}) {
  return _then(_self.copyWith(
allNotificationForToday: null == allNotificationForToday ? _self.allNotificationForToday : allNotificationForToday // ignore: cast_nullable_to_non_nullable
as String,allNotificationForWeekDay: null == allNotificationForWeekDay ? _self.allNotificationForWeekDay : allNotificationForWeekDay // ignore: cast_nullable_to_non_nullable
as String,fajir: null == fajir ? _self.fajir : fajir // ignore: cast_nullable_to_non_nullable
as bool,duhir: null == duhir ? _self.duhir : duhir // ignore: cast_nullable_to_non_nullable
as bool,asr: null == asr ? _self.asr : asr // ignore: cast_nullable_to_non_nullable
as bool,magrieb: null == magrieb ? _self.magrieb : magrieb // ignore: cast_nullable_to_non_nullable
as bool,isha: null == isha ? _self.isha : isha // ignore: cast_nullable_to_non_nullable
as bool,sunriseTime: null == sunriseTime ? _self.sunriseTime : sunriseTime // ignore: cast_nullable_to_non_nullable
as bool,jom3aAlkahf: null == jom3aAlkahf ? _self.jom3aAlkahf : jom3aAlkahf // ignore: cast_nullable_to_non_nullable
as bool,jom3aDo3aa: null == jom3aDo3aa ? _self.jom3aDo3aa : jom3aDo3aa // ignore: cast_nullable_to_non_nullable
as bool,qeyamAlLayel: null == qeyamAlLayel ? _self.qeyamAlLayel : qeyamAlLayel // ignore: cast_nullable_to_non_nullable
as bool,before15Min: null == before15Min ? _self.before15Min : before15Min // ignore: cast_nullable_to_non_nullable
as bool,loadingStatus: freezed == loadingStatus ? _self.loadingStatus : loadingStatus // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [PrayNotificationSettingState].
extension PrayNotificationSettingStatePatterns on PrayNotificationSettingState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PrayNotificationSettingState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PrayNotificationSettingState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PrayNotificationSettingState value)  $default,){
final _that = this;
switch (_that) {
case _PrayNotificationSettingState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PrayNotificationSettingState value)?  $default,){
final _that = this;
switch (_that) {
case _PrayNotificationSettingState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String allNotificationForToday,  String allNotificationForWeekDay,  bool fajir,  bool duhir,  bool asr,  bool magrieb,  bool isha,  bool sunriseTime,  bool jom3aAlkahf,  bool jom3aDo3aa,  bool qeyamAlLayel,  bool before15Min,  dynamic loadingStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PrayNotificationSettingState() when $default != null:
return $default(_that.allNotificationForToday,_that.allNotificationForWeekDay,_that.fajir,_that.duhir,_that.asr,_that.magrieb,_that.isha,_that.sunriseTime,_that.jom3aAlkahf,_that.jom3aDo3aa,_that.qeyamAlLayel,_that.before15Min,_that.loadingStatus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String allNotificationForToday,  String allNotificationForWeekDay,  bool fajir,  bool duhir,  bool asr,  bool magrieb,  bool isha,  bool sunriseTime,  bool jom3aAlkahf,  bool jom3aDo3aa,  bool qeyamAlLayel,  bool before15Min,  dynamic loadingStatus)  $default,) {final _that = this;
switch (_that) {
case _PrayNotificationSettingState():
return $default(_that.allNotificationForToday,_that.allNotificationForWeekDay,_that.fajir,_that.duhir,_that.asr,_that.magrieb,_that.isha,_that.sunriseTime,_that.jom3aAlkahf,_that.jom3aDo3aa,_that.qeyamAlLayel,_that.before15Min,_that.loadingStatus);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String allNotificationForToday,  String allNotificationForWeekDay,  bool fajir,  bool duhir,  bool asr,  bool magrieb,  bool isha,  bool sunriseTime,  bool jom3aAlkahf,  bool jom3aDo3aa,  bool qeyamAlLayel,  bool before15Min,  dynamic loadingStatus)?  $default,) {final _that = this;
switch (_that) {
case _PrayNotificationSettingState() when $default != null:
return $default(_that.allNotificationForToday,_that.allNotificationForWeekDay,_that.fajir,_that.duhir,_that.asr,_that.magrieb,_that.isha,_that.sunriseTime,_that.jom3aAlkahf,_that.jom3aDo3aa,_that.qeyamAlLayel,_that.before15Min,_that.loadingStatus);case _:
  return null;

}
}

}

/// @nodoc


class _PrayNotificationSettingState implements PrayNotificationSettingState {
  const _PrayNotificationSettingState({this.allNotificationForToday = "", this.allNotificationForWeekDay = "", this.fajir = true, this.duhir = true, this.asr = true, this.magrieb = true, this.isha = true, this.sunriseTime = true, this.jom3aAlkahf = true, this.jom3aDo3aa = true, this.qeyamAlLayel = true, this.before15Min = true, this.loadingStatus = const PrayNotificationSettingProcessState.loading()});
  

/// Whether all notifications are enabled for today only.
@override@JsonKey() final  String allNotificationForToday;
/// Whether all notifications are enabled for weekdays.
@override@JsonKey() final  String allNotificationForWeekDay;
/// Whether Fajr prayer notifications are enabled.
@override@JsonKey() final  bool fajir;
/// Whether Dhuhr prayer notifications are enabled.
@override@JsonKey() final  bool duhir;
/// Whether Asr prayer notifications are enabled.
@override@JsonKey() final  bool asr;
/// Whether Maghrib prayer notifications are enabled.
@override@JsonKey() final  bool magrieb;
/// Whether Isha prayer notifications are enabled.
@override@JsonKey() final  bool isha;
/// Whether sunrise time notifications are enabled.
@override@JsonKey() final  bool sunriseTime;
/// Whether Friday Al-Kahf notifications are enabled.
@override@JsonKey() final  bool jom3aAlkahf;
/// Whether Friday prayer notifications are enabled.
@override@JsonKey() final  bool jom3aDo3aa;
/// Whether night prayer (Qiyam al-Layl) notifications are enabled.
@override@JsonKey() final  bool qeyamAlLayel;
/// Whether 15-minute before prayer notifications are enabled.
@override@JsonKey() final  bool before15Min;
/// The current loading/processing status of the settings.
@override@JsonKey() final  dynamic loadingStatus;

/// Create a copy of PrayNotificationSettingState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PrayNotificationSettingStateCopyWith<_PrayNotificationSettingState> get copyWith => __$PrayNotificationSettingStateCopyWithImpl<_PrayNotificationSettingState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PrayNotificationSettingState&&(identical(other.allNotificationForToday, allNotificationForToday) || other.allNotificationForToday == allNotificationForToday)&&(identical(other.allNotificationForWeekDay, allNotificationForWeekDay) || other.allNotificationForWeekDay == allNotificationForWeekDay)&&(identical(other.fajir, fajir) || other.fajir == fajir)&&(identical(other.duhir, duhir) || other.duhir == duhir)&&(identical(other.asr, asr) || other.asr == asr)&&(identical(other.magrieb, magrieb) || other.magrieb == magrieb)&&(identical(other.isha, isha) || other.isha == isha)&&(identical(other.sunriseTime, sunriseTime) || other.sunriseTime == sunriseTime)&&(identical(other.jom3aAlkahf, jom3aAlkahf) || other.jom3aAlkahf == jom3aAlkahf)&&(identical(other.jom3aDo3aa, jom3aDo3aa) || other.jom3aDo3aa == jom3aDo3aa)&&(identical(other.qeyamAlLayel, qeyamAlLayel) || other.qeyamAlLayel == qeyamAlLayel)&&(identical(other.before15Min, before15Min) || other.before15Min == before15Min)&&const DeepCollectionEquality().equals(other.loadingStatus, loadingStatus));
}


@override
int get hashCode => Object.hash(runtimeType,allNotificationForToday,allNotificationForWeekDay,fajir,duhir,asr,magrieb,isha,sunriseTime,jom3aAlkahf,jom3aDo3aa,qeyamAlLayel,before15Min,const DeepCollectionEquality().hash(loadingStatus));

@override
String toString() {
  return 'PrayNotificationSettingState(allNotificationForToday: $allNotificationForToday, allNotificationForWeekDay: $allNotificationForWeekDay, fajir: $fajir, duhir: $duhir, asr: $asr, magrieb: $magrieb, isha: $isha, sunriseTime: $sunriseTime, jom3aAlkahf: $jom3aAlkahf, jom3aDo3aa: $jom3aDo3aa, qeyamAlLayel: $qeyamAlLayel, before15Min: $before15Min, loadingStatus: $loadingStatus)';
}


}

/// @nodoc
abstract mixin class _$PrayNotificationSettingStateCopyWith<$Res> implements $PrayNotificationSettingStateCopyWith<$Res> {
  factory _$PrayNotificationSettingStateCopyWith(_PrayNotificationSettingState value, $Res Function(_PrayNotificationSettingState) _then) = __$PrayNotificationSettingStateCopyWithImpl;
@override @useResult
$Res call({
 String allNotificationForToday, String allNotificationForWeekDay, bool fajir, bool duhir, bool asr, bool magrieb, bool isha, bool sunriseTime, bool jom3aAlkahf, bool jom3aDo3aa, bool qeyamAlLayel, bool before15Min, dynamic loadingStatus
});




}
/// @nodoc
class __$PrayNotificationSettingStateCopyWithImpl<$Res>
    implements _$PrayNotificationSettingStateCopyWith<$Res> {
  __$PrayNotificationSettingStateCopyWithImpl(this._self, this._then);

  final _PrayNotificationSettingState _self;
  final $Res Function(_PrayNotificationSettingState) _then;

/// Create a copy of PrayNotificationSettingState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? allNotificationForToday = null,Object? allNotificationForWeekDay = null,Object? fajir = null,Object? duhir = null,Object? asr = null,Object? magrieb = null,Object? isha = null,Object? sunriseTime = null,Object? jom3aAlkahf = null,Object? jom3aDo3aa = null,Object? qeyamAlLayel = null,Object? before15Min = null,Object? loadingStatus = freezed,}) {
  return _then(_PrayNotificationSettingState(
allNotificationForToday: null == allNotificationForToday ? _self.allNotificationForToday : allNotificationForToday // ignore: cast_nullable_to_non_nullable
as String,allNotificationForWeekDay: null == allNotificationForWeekDay ? _self.allNotificationForWeekDay : allNotificationForWeekDay // ignore: cast_nullable_to_non_nullable
as String,fajir: null == fajir ? _self.fajir : fajir // ignore: cast_nullable_to_non_nullable
as bool,duhir: null == duhir ? _self.duhir : duhir // ignore: cast_nullable_to_non_nullable
as bool,asr: null == asr ? _self.asr : asr // ignore: cast_nullable_to_non_nullable
as bool,magrieb: null == magrieb ? _self.magrieb : magrieb // ignore: cast_nullable_to_non_nullable
as bool,isha: null == isha ? _self.isha : isha // ignore: cast_nullable_to_non_nullable
as bool,sunriseTime: null == sunriseTime ? _self.sunriseTime : sunriseTime // ignore: cast_nullable_to_non_nullable
as bool,jom3aAlkahf: null == jom3aAlkahf ? _self.jom3aAlkahf : jom3aAlkahf // ignore: cast_nullable_to_non_nullable
as bool,jom3aDo3aa: null == jom3aDo3aa ? _self.jom3aDo3aa : jom3aDo3aa // ignore: cast_nullable_to_non_nullable
as bool,qeyamAlLayel: null == qeyamAlLayel ? _self.qeyamAlLayel : qeyamAlLayel // ignore: cast_nullable_to_non_nullable
as bool,before15Min: null == before15Min ? _self.before15Min : before15Min // ignore: cast_nullable_to_non_nullable
as bool,loadingStatus: freezed == loadingStatus ? _self.loadingStatus : loadingStatus // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

/// @nodoc
mixin _$PrayNotificationSettingProcessState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PrayNotificationSettingProcessState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PrayNotificationSettingProcessState()';
}


}

/// @nodoc
class $PrayNotificationSettingProcessStateCopyWith<$Res>  {
$PrayNotificationSettingProcessStateCopyWith(PrayNotificationSettingProcessState _, $Res Function(PrayNotificationSettingProcessState) __);
}


/// Adds pattern-matching-related methods to [PrayNotificationSettingProcessState].
extension PrayNotificationSettingProcessStatePatterns on PrayNotificationSettingProcessState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( PrayNotificationSettingProcessStateLoading value)?  loading,TResult Function( PrayNotificationSettingProcessStateError value)?  error,TResult Function( PrayNotificationSettingProcessStateSuccess value)?  success,TResult Function( PrayNotificationSettingProcessStateSettingSaved value)?  settingSaved,required TResult orElse(),}){
final _that = this;
switch (_that) {
case PrayNotificationSettingProcessStateLoading() when loading != null:
return loading(_that);case PrayNotificationSettingProcessStateError() when error != null:
return error(_that);case PrayNotificationSettingProcessStateSuccess() when success != null:
return success(_that);case PrayNotificationSettingProcessStateSettingSaved() when settingSaved != null:
return settingSaved(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( PrayNotificationSettingProcessStateLoading value)  loading,required TResult Function( PrayNotificationSettingProcessStateError value)  error,required TResult Function( PrayNotificationSettingProcessStateSuccess value)  success,required TResult Function( PrayNotificationSettingProcessStateSettingSaved value)  settingSaved,}){
final _that = this;
switch (_that) {
case PrayNotificationSettingProcessStateLoading():
return loading(_that);case PrayNotificationSettingProcessStateError():
return error(_that);case PrayNotificationSettingProcessStateSuccess():
return success(_that);case PrayNotificationSettingProcessStateSettingSaved():
return settingSaved(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( PrayNotificationSettingProcessStateLoading value)?  loading,TResult? Function( PrayNotificationSettingProcessStateError value)?  error,TResult? Function( PrayNotificationSettingProcessStateSuccess value)?  success,TResult? Function( PrayNotificationSettingProcessStateSettingSaved value)?  settingSaved,}){
final _that = this;
switch (_that) {
case PrayNotificationSettingProcessStateLoading() when loading != null:
return loading(_that);case PrayNotificationSettingProcessStateError() when error != null:
return error(_that);case PrayNotificationSettingProcessStateSuccess() when success != null:
return success(_that);case PrayNotificationSettingProcessStateSettingSaved() when settingSaved != null:
return settingSaved(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function()?  error,TResult Function()?  success,TResult Function()?  settingSaved,required TResult orElse(),}) {final _that = this;
switch (_that) {
case PrayNotificationSettingProcessStateLoading() when loading != null:
return loading();case PrayNotificationSettingProcessStateError() when error != null:
return error();case PrayNotificationSettingProcessStateSuccess() when success != null:
return success();case PrayNotificationSettingProcessStateSettingSaved() when settingSaved != null:
return settingSaved();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function()  error,required TResult Function()  success,required TResult Function()  settingSaved,}) {final _that = this;
switch (_that) {
case PrayNotificationSettingProcessStateLoading():
return loading();case PrayNotificationSettingProcessStateError():
return error();case PrayNotificationSettingProcessStateSuccess():
return success();case PrayNotificationSettingProcessStateSettingSaved():
return settingSaved();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function()?  error,TResult? Function()?  success,TResult? Function()?  settingSaved,}) {final _that = this;
switch (_that) {
case PrayNotificationSettingProcessStateLoading() when loading != null:
return loading();case PrayNotificationSettingProcessStateError() when error != null:
return error();case PrayNotificationSettingProcessStateSuccess() when success != null:
return success();case PrayNotificationSettingProcessStateSettingSaved() when settingSaved != null:
return settingSaved();case _:
  return null;

}
}

}

/// @nodoc


class PrayNotificationSettingProcessStateLoading implements PrayNotificationSettingProcessState {
  const PrayNotificationSettingProcessStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PrayNotificationSettingProcessStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PrayNotificationSettingProcessState.loading()';
}


}




/// @nodoc


class PrayNotificationSettingProcessStateError implements PrayNotificationSettingProcessState {
  const PrayNotificationSettingProcessStateError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PrayNotificationSettingProcessStateError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PrayNotificationSettingProcessState.error()';
}


}




/// @nodoc


class PrayNotificationSettingProcessStateSuccess implements PrayNotificationSettingProcessState {
  const PrayNotificationSettingProcessStateSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PrayNotificationSettingProcessStateSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PrayNotificationSettingProcessState.success()';
}


}




/// @nodoc


class PrayNotificationSettingProcessStateSettingSaved implements PrayNotificationSettingProcessState {
  const PrayNotificationSettingProcessStateSettingSaved();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PrayNotificationSettingProcessStateSettingSaved);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PrayNotificationSettingProcessState.settingSaved()';
}


}




// dart format on
