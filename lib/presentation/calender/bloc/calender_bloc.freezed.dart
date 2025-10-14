// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calender_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CalenderEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CalenderEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CalenderEvent()';
}


}

/// @nodoc
class $CalenderEventCopyWith<$Res>  {
$CalenderEventCopyWith(CalenderEvent _, $Res Function(CalenderEvent) __);
}


/// Adds pattern-matching-related methods to [CalenderEvent].
extension CalenderEventPatterns on CalenderEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _PrepareSalahTiming value)?  prepareSalahTiming,TResult Function( _FillMonthNameFirstTime value)?  fillMonthNameFirstTime,TResult Function( _NextMonth value)?  nextMonth,TResult Function( _PreviousMonth value)?  previousMonth,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PrepareSalahTiming() when prepareSalahTiming != null:
return prepareSalahTiming(_that);case _FillMonthNameFirstTime() when fillMonthNameFirstTime != null:
return fillMonthNameFirstTime(_that);case _NextMonth() when nextMonth != null:
return nextMonth(_that);case _PreviousMonth() when previousMonth != null:
return previousMonth(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _PrepareSalahTiming value)  prepareSalahTiming,required TResult Function( _FillMonthNameFirstTime value)  fillMonthNameFirstTime,required TResult Function( _NextMonth value)  nextMonth,required TResult Function( _PreviousMonth value)  previousMonth,}){
final _that = this;
switch (_that) {
case _PrepareSalahTiming():
return prepareSalahTiming(_that);case _FillMonthNameFirstTime():
return fillMonthNameFirstTime(_that);case _NextMonth():
return nextMonth(_that);case _PreviousMonth():
return previousMonth(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _PrepareSalahTiming value)?  prepareSalahTiming,TResult? Function( _FillMonthNameFirstTime value)?  fillMonthNameFirstTime,TResult? Function( _NextMonth value)?  nextMonth,TResult? Function( _PreviousMonth value)?  previousMonth,}){
final _that = this;
switch (_that) {
case _PrepareSalahTiming() when prepareSalahTiming != null:
return prepareSalahTiming(_that);case _FillMonthNameFirstTime() when fillMonthNameFirstTime != null:
return fillMonthNameFirstTime(_that);case _NextMonth() when nextMonth != null:
return nextMonth(_that);case _PreviousMonth() when previousMonth != null:
return previousMonth(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  prepareSalahTiming,TResult Function()?  fillMonthNameFirstTime,TResult Function( String currentMonthName)?  nextMonth,TResult Function( String currentMonthName)?  previousMonth,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PrepareSalahTiming() when prepareSalahTiming != null:
return prepareSalahTiming();case _FillMonthNameFirstTime() when fillMonthNameFirstTime != null:
return fillMonthNameFirstTime();case _NextMonth() when nextMonth != null:
return nextMonth(_that.currentMonthName);case _PreviousMonth() when previousMonth != null:
return previousMonth(_that.currentMonthName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  prepareSalahTiming,required TResult Function()  fillMonthNameFirstTime,required TResult Function( String currentMonthName)  nextMonth,required TResult Function( String currentMonthName)  previousMonth,}) {final _that = this;
switch (_that) {
case _PrepareSalahTiming():
return prepareSalahTiming();case _FillMonthNameFirstTime():
return fillMonthNameFirstTime();case _NextMonth():
return nextMonth(_that.currentMonthName);case _PreviousMonth():
return previousMonth(_that.currentMonthName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  prepareSalahTiming,TResult? Function()?  fillMonthNameFirstTime,TResult? Function( String currentMonthName)?  nextMonth,TResult? Function( String currentMonthName)?  previousMonth,}) {final _that = this;
switch (_that) {
case _PrepareSalahTiming() when prepareSalahTiming != null:
return prepareSalahTiming();case _FillMonthNameFirstTime() when fillMonthNameFirstTime != null:
return fillMonthNameFirstTime();case _NextMonth() when nextMonth != null:
return nextMonth(_that.currentMonthName);case _PreviousMonth() when previousMonth != null:
return previousMonth(_that.currentMonthName);case _:
  return null;

}
}

}

/// @nodoc


class _PrepareSalahTiming implements CalenderEvent {
  const _PrepareSalahTiming();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PrepareSalahTiming);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CalenderEvent.prepareSalahTiming()';
}


}




/// @nodoc


class _FillMonthNameFirstTime implements CalenderEvent {
  const _FillMonthNameFirstTime();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FillMonthNameFirstTime);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CalenderEvent.fillMonthNameFirstTime()';
}


}




/// @nodoc


class _NextMonth implements CalenderEvent {
  const _NextMonth(this.currentMonthName);
  

 final  String currentMonthName;

/// Create a copy of CalenderEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NextMonthCopyWith<_NextMonth> get copyWith => __$NextMonthCopyWithImpl<_NextMonth>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NextMonth&&(identical(other.currentMonthName, currentMonthName) || other.currentMonthName == currentMonthName));
}


@override
int get hashCode => Object.hash(runtimeType,currentMonthName);

@override
String toString() {
  return 'CalenderEvent.nextMonth(currentMonthName: $currentMonthName)';
}


}

/// @nodoc
abstract mixin class _$NextMonthCopyWith<$Res> implements $CalenderEventCopyWith<$Res> {
  factory _$NextMonthCopyWith(_NextMonth value, $Res Function(_NextMonth) _then) = __$NextMonthCopyWithImpl;
@useResult
$Res call({
 String currentMonthName
});




}
/// @nodoc
class __$NextMonthCopyWithImpl<$Res>
    implements _$NextMonthCopyWith<$Res> {
  __$NextMonthCopyWithImpl(this._self, this._then);

  final _NextMonth _self;
  final $Res Function(_NextMonth) _then;

/// Create a copy of CalenderEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? currentMonthName = null,}) {
  return _then(_NextMonth(
null == currentMonthName ? _self.currentMonthName : currentMonthName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _PreviousMonth implements CalenderEvent {
  const _PreviousMonth(this.currentMonthName);
  

 final  String currentMonthName;

/// Create a copy of CalenderEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PreviousMonthCopyWith<_PreviousMonth> get copyWith => __$PreviousMonthCopyWithImpl<_PreviousMonth>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PreviousMonth&&(identical(other.currentMonthName, currentMonthName) || other.currentMonthName == currentMonthName));
}


@override
int get hashCode => Object.hash(runtimeType,currentMonthName);

@override
String toString() {
  return 'CalenderEvent.previousMonth(currentMonthName: $currentMonthName)';
}


}

/// @nodoc
abstract mixin class _$PreviousMonthCopyWith<$Res> implements $CalenderEventCopyWith<$Res> {
  factory _$PreviousMonthCopyWith(_PreviousMonth value, $Res Function(_PreviousMonth) _then) = __$PreviousMonthCopyWithImpl;
@useResult
$Res call({
 String currentMonthName
});




}
/// @nodoc
class __$PreviousMonthCopyWithImpl<$Res>
    implements _$PreviousMonthCopyWith<$Res> {
  __$PreviousMonthCopyWithImpl(this._self, this._then);

  final _PreviousMonth _self;
  final $Res Function(_PreviousMonth) _then;

/// Create a copy of CalenderEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? currentMonthName = null,}) {
  return _then(_PreviousMonth(
null == currentMonthName ? _self.currentMonthName : currentMonthName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$CalenderState {

 List<CalenderModel> get list; String get monthName; CalenderProcessState get status;
/// Create a copy of CalenderState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CalenderStateCopyWith<CalenderState> get copyWith => _$CalenderStateCopyWithImpl<CalenderState>(this as CalenderState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CalenderState&&const DeepCollectionEquality().equals(other.list, list)&&(identical(other.monthName, monthName) || other.monthName == monthName)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(list),monthName,status);

@override
String toString() {
  return 'CalenderState(list: $list, monthName: $monthName, status: $status)';
}


}

/// @nodoc
abstract mixin class $CalenderStateCopyWith<$Res>  {
  factory $CalenderStateCopyWith(CalenderState value, $Res Function(CalenderState) _then) = _$CalenderStateCopyWithImpl;
@useResult
$Res call({
 List<CalenderModel> list, String monthName, CalenderProcessState status
});


$CalenderProcessStateCopyWith<$Res> get status;

}
/// @nodoc
class _$CalenderStateCopyWithImpl<$Res>
    implements $CalenderStateCopyWith<$Res> {
  _$CalenderStateCopyWithImpl(this._self, this._then);

  final CalenderState _self;
  final $Res Function(CalenderState) _then;

/// Create a copy of CalenderState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? list = null,Object? monthName = null,Object? status = null,}) {
  return _then(_self.copyWith(
list: null == list ? _self.list : list // ignore: cast_nullable_to_non_nullable
as List<CalenderModel>,monthName: null == monthName ? _self.monthName : monthName // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CalenderProcessState,
  ));
}
/// Create a copy of CalenderState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CalenderProcessStateCopyWith<$Res> get status {
  
  return $CalenderProcessStateCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}


/// Adds pattern-matching-related methods to [CalenderState].
extension CalenderStatePatterns on CalenderState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CalenderState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CalenderState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CalenderState value)  $default,){
final _that = this;
switch (_that) {
case _CalenderState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CalenderState value)?  $default,){
final _that = this;
switch (_that) {
case _CalenderState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CalenderModel> list,  String monthName,  CalenderProcessState status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CalenderState() when $default != null:
return $default(_that.list,_that.monthName,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CalenderModel> list,  String monthName,  CalenderProcessState status)  $default,) {final _that = this;
switch (_that) {
case _CalenderState():
return $default(_that.list,_that.monthName,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CalenderModel> list,  String monthName,  CalenderProcessState status)?  $default,) {final _that = this;
switch (_that) {
case _CalenderState() when $default != null:
return $default(_that.list,_that.monthName,_that.status);case _:
  return null;

}
}

}

/// @nodoc


class _CalenderState implements CalenderState {
  const _CalenderState({final  List<CalenderModel> list = const [], this.monthName = "", this.status = const CalenderProcessState.loading()}): _list = list;
  

 final  List<CalenderModel> _list;
@override@JsonKey() List<CalenderModel> get list {
  if (_list is EqualUnmodifiableListView) return _list;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_list);
}

@override@JsonKey() final  String monthName;
@override@JsonKey() final  CalenderProcessState status;

/// Create a copy of CalenderState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CalenderStateCopyWith<_CalenderState> get copyWith => __$CalenderStateCopyWithImpl<_CalenderState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CalenderState&&const DeepCollectionEquality().equals(other._list, _list)&&(identical(other.monthName, monthName) || other.monthName == monthName)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_list),monthName,status);

@override
String toString() {
  return 'CalenderState(list: $list, monthName: $monthName, status: $status)';
}


}

/// @nodoc
abstract mixin class _$CalenderStateCopyWith<$Res> implements $CalenderStateCopyWith<$Res> {
  factory _$CalenderStateCopyWith(_CalenderState value, $Res Function(_CalenderState) _then) = __$CalenderStateCopyWithImpl;
@override @useResult
$Res call({
 List<CalenderModel> list, String monthName, CalenderProcessState status
});


@override $CalenderProcessStateCopyWith<$Res> get status;

}
/// @nodoc
class __$CalenderStateCopyWithImpl<$Res>
    implements _$CalenderStateCopyWith<$Res> {
  __$CalenderStateCopyWithImpl(this._self, this._then);

  final _CalenderState _self;
  final $Res Function(_CalenderState) _then;

/// Create a copy of CalenderState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? list = null,Object? monthName = null,Object? status = null,}) {
  return _then(_CalenderState(
list: null == list ? _self._list : list // ignore: cast_nullable_to_non_nullable
as List<CalenderModel>,monthName: null == monthName ? _self.monthName : monthName // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CalenderProcessState,
  ));
}

/// Create a copy of CalenderState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CalenderProcessStateCopyWith<$Res> get status {
  
  return $CalenderProcessStateCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}

/// @nodoc
mixin _$CalenderProcessState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CalenderProcessState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CalenderProcessState()';
}


}

/// @nodoc
class $CalenderProcessStateCopyWith<$Res>  {
$CalenderProcessStateCopyWith(CalenderProcessState _, $Res Function(CalenderProcessState) __);
}


/// Adds pattern-matching-related methods to [CalenderProcessState].
extension CalenderProcessStatePatterns on CalenderProcessState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CalenderProcessStateLoading value)?  loading,TResult Function( CalenderProcessStateError value)?  error,TResult Function( CalenderProcessStateSuccss value)?  succss,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CalenderProcessStateLoading() when loading != null:
return loading(_that);case CalenderProcessStateError() when error != null:
return error(_that);case CalenderProcessStateSuccss() when succss != null:
return succss(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CalenderProcessStateLoading value)  loading,required TResult Function( CalenderProcessStateError value)  error,required TResult Function( CalenderProcessStateSuccss value)  succss,}){
final _that = this;
switch (_that) {
case CalenderProcessStateLoading():
return loading(_that);case CalenderProcessStateError():
return error(_that);case CalenderProcessStateSuccss():
return succss(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CalenderProcessStateLoading value)?  loading,TResult? Function( CalenderProcessStateError value)?  error,TResult? Function( CalenderProcessStateSuccss value)?  succss,}){
final _that = this;
switch (_that) {
case CalenderProcessStateLoading() when loading != null:
return loading(_that);case CalenderProcessStateError() when error != null:
return error(_that);case CalenderProcessStateSuccss() when succss != null:
return succss(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function()?  error,TResult Function()?  succss,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CalenderProcessStateLoading() when loading != null:
return loading();case CalenderProcessStateError() when error != null:
return error();case CalenderProcessStateSuccss() when succss != null:
return succss();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function()  error,required TResult Function()  succss,}) {final _that = this;
switch (_that) {
case CalenderProcessStateLoading():
return loading();case CalenderProcessStateError():
return error();case CalenderProcessStateSuccss():
return succss();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function()?  error,TResult? Function()?  succss,}) {final _that = this;
switch (_that) {
case CalenderProcessStateLoading() when loading != null:
return loading();case CalenderProcessStateError() when error != null:
return error();case CalenderProcessStateSuccss() when succss != null:
return succss();case _:
  return null;

}
}

}

/// @nodoc


class CalenderProcessStateLoading implements CalenderProcessState {
  const CalenderProcessStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CalenderProcessStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CalenderProcessState.loading()';
}


}




/// @nodoc


class CalenderProcessStateError implements CalenderProcessState {
  const CalenderProcessStateError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CalenderProcessStateError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CalenderProcessState.error()';
}


}




/// @nodoc


class CalenderProcessStateSuccss implements CalenderProcessState {
  const CalenderProcessStateSuccss();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CalenderProcessStateSuccss);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CalenderProcessState.succss()';
}


}




// dart format on
