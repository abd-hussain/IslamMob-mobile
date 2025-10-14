// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quran_prints_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$QuranPrintsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuranPrintsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'QuranPrintsEvent()';
}


}

/// @nodoc
class $QuranPrintsEventCopyWith<$Res>  {
$QuranPrintsEventCopyWith(QuranPrintsEvent _, $Res Function(QuranPrintsEvent) __);
}


/// Adds pattern-matching-related methods to [QuranPrintsEvent].
extension QuranPrintsEventPatterns on QuranPrintsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _InitializeFetchingData value)?  initializeFetchingData,TResult Function( _UpdatelistOfPrints value)?  updatelistOfPrints,TResult Function( _UpdateInternetConnectionStatus value)?  updateInternetConnectionStatus,TResult Function( _UpdatePrintsDownloading value)?  updatePrintsDownloading,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InitializeFetchingData() when initializeFetchingData != null:
return initializeFetchingData(_that);case _UpdatelistOfPrints() when updatelistOfPrints != null:
return updatelistOfPrints(_that);case _UpdateInternetConnectionStatus() when updateInternetConnectionStatus != null:
return updateInternetConnectionStatus(_that);case _UpdatePrintsDownloading() when updatePrintsDownloading != null:
return updatePrintsDownloading(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _InitializeFetchingData value)  initializeFetchingData,required TResult Function( _UpdatelistOfPrints value)  updatelistOfPrints,required TResult Function( _UpdateInternetConnectionStatus value)  updateInternetConnectionStatus,required TResult Function( _UpdatePrintsDownloading value)  updatePrintsDownloading,}){
final _that = this;
switch (_that) {
case _InitializeFetchingData():
return initializeFetchingData(_that);case _UpdatelistOfPrints():
return updatelistOfPrints(_that);case _UpdateInternetConnectionStatus():
return updateInternetConnectionStatus(_that);case _UpdatePrintsDownloading():
return updatePrintsDownloading(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _InitializeFetchingData value)?  initializeFetchingData,TResult? Function( _UpdatelistOfPrints value)?  updatelistOfPrints,TResult? Function( _UpdateInternetConnectionStatus value)?  updateInternetConnectionStatus,TResult? Function( _UpdatePrintsDownloading value)?  updatePrintsDownloading,}){
final _that = this;
switch (_that) {
case _InitializeFetchingData() when initializeFetchingData != null:
return initializeFetchingData(_that);case _UpdatelistOfPrints() when updatelistOfPrints != null:
return updatelistOfPrints(_that);case _UpdateInternetConnectionStatus() when updateInternetConnectionStatus != null:
return updateInternetConnectionStatus(_that);case _UpdatePrintsDownloading() when updatePrintsDownloading != null:
return updatePrintsDownloading(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initializeFetchingData,TResult Function( List<QuranPrints>? list)?  updatelistOfPrints,TResult Function( bool status)?  updateInternetConnectionStatus,TResult Function( List<String> print)?  updatePrintsDownloading,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InitializeFetchingData() when initializeFetchingData != null:
return initializeFetchingData();case _UpdatelistOfPrints() when updatelistOfPrints != null:
return updatelistOfPrints(_that.list);case _UpdateInternetConnectionStatus() when updateInternetConnectionStatus != null:
return updateInternetConnectionStatus(_that.status);case _UpdatePrintsDownloading() when updatePrintsDownloading != null:
return updatePrintsDownloading(_that.print);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initializeFetchingData,required TResult Function( List<QuranPrints>? list)  updatelistOfPrints,required TResult Function( bool status)  updateInternetConnectionStatus,required TResult Function( List<String> print)  updatePrintsDownloading,}) {final _that = this;
switch (_that) {
case _InitializeFetchingData():
return initializeFetchingData();case _UpdatelistOfPrints():
return updatelistOfPrints(_that.list);case _UpdateInternetConnectionStatus():
return updateInternetConnectionStatus(_that.status);case _UpdatePrintsDownloading():
return updatePrintsDownloading(_that.print);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initializeFetchingData,TResult? Function( List<QuranPrints>? list)?  updatelistOfPrints,TResult? Function( bool status)?  updateInternetConnectionStatus,TResult? Function( List<String> print)?  updatePrintsDownloading,}) {final _that = this;
switch (_that) {
case _InitializeFetchingData() when initializeFetchingData != null:
return initializeFetchingData();case _UpdatelistOfPrints() when updatelistOfPrints != null:
return updatelistOfPrints(_that.list);case _UpdateInternetConnectionStatus() when updateInternetConnectionStatus != null:
return updateInternetConnectionStatus(_that.status);case _UpdatePrintsDownloading() when updatePrintsDownloading != null:
return updatePrintsDownloading(_that.print);case _:
  return null;

}
}

}

/// @nodoc


class _InitializeFetchingData implements QuranPrintsEvent {
   _InitializeFetchingData();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InitializeFetchingData);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'QuranPrintsEvent.initializeFetchingData()';
}


}




/// @nodoc


class _UpdatelistOfPrints implements QuranPrintsEvent {
   _UpdatelistOfPrints({required final  List<QuranPrints>? list}): _list = list;
  

 final  List<QuranPrints>? _list;
 List<QuranPrints>? get list {
  final value = _list;
  if (value == null) return null;
  if (_list is EqualUnmodifiableListView) return _list;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of QuranPrintsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdatelistOfPrintsCopyWith<_UpdatelistOfPrints> get copyWith => __$UpdatelistOfPrintsCopyWithImpl<_UpdatelistOfPrints>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdatelistOfPrints&&const DeepCollectionEquality().equals(other._list, _list));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_list));

@override
String toString() {
  return 'QuranPrintsEvent.updatelistOfPrints(list: $list)';
}


}

/// @nodoc
abstract mixin class _$UpdatelistOfPrintsCopyWith<$Res> implements $QuranPrintsEventCopyWith<$Res> {
  factory _$UpdatelistOfPrintsCopyWith(_UpdatelistOfPrints value, $Res Function(_UpdatelistOfPrints) _then) = __$UpdatelistOfPrintsCopyWithImpl;
@useResult
$Res call({
 List<QuranPrints>? list
});




}
/// @nodoc
class __$UpdatelistOfPrintsCopyWithImpl<$Res>
    implements _$UpdatelistOfPrintsCopyWith<$Res> {
  __$UpdatelistOfPrintsCopyWithImpl(this._self, this._then);

  final _UpdatelistOfPrints _self;
  final $Res Function(_UpdatelistOfPrints) _then;

/// Create a copy of QuranPrintsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? list = freezed,}) {
  return _then(_UpdatelistOfPrints(
list: freezed == list ? _self._list : list // ignore: cast_nullable_to_non_nullable
as List<QuranPrints>?,
  ));
}


}

/// @nodoc


class _UpdateInternetConnectionStatus implements QuranPrintsEvent {
   _UpdateInternetConnectionStatus({required this.status});
  

 final  bool status;

/// Create a copy of QuranPrintsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateInternetConnectionStatusCopyWith<_UpdateInternetConnectionStatus> get copyWith => __$UpdateInternetConnectionStatusCopyWithImpl<_UpdateInternetConnectionStatus>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateInternetConnectionStatus&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,status);

@override
String toString() {
  return 'QuranPrintsEvent.updateInternetConnectionStatus(status: $status)';
}


}

/// @nodoc
abstract mixin class _$UpdateInternetConnectionStatusCopyWith<$Res> implements $QuranPrintsEventCopyWith<$Res> {
  factory _$UpdateInternetConnectionStatusCopyWith(_UpdateInternetConnectionStatus value, $Res Function(_UpdateInternetConnectionStatus) _then) = __$UpdateInternetConnectionStatusCopyWithImpl;
@useResult
$Res call({
 bool status
});




}
/// @nodoc
class __$UpdateInternetConnectionStatusCopyWithImpl<$Res>
    implements _$UpdateInternetConnectionStatusCopyWith<$Res> {
  __$UpdateInternetConnectionStatusCopyWithImpl(this._self, this._then);

  final _UpdateInternetConnectionStatus _self;
  final $Res Function(_UpdateInternetConnectionStatus) _then;

/// Create a copy of QuranPrintsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? status = null,}) {
  return _then(_UpdateInternetConnectionStatus(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _UpdatePrintsDownloading implements QuranPrintsEvent {
   _UpdatePrintsDownloading({required final  List<String> print}): _print = print;
  

 final  List<String> _print;
 List<String> get print {
  if (_print is EqualUnmodifiableListView) return _print;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_print);
}


/// Create a copy of QuranPrintsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdatePrintsDownloadingCopyWith<_UpdatePrintsDownloading> get copyWith => __$UpdatePrintsDownloadingCopyWithImpl<_UpdatePrintsDownloading>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdatePrintsDownloading&&const DeepCollectionEquality().equals(other._print, _print));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_print));

@override
String toString() {
  return 'QuranPrintsEvent.updatePrintsDownloading(print: $print)';
}


}

/// @nodoc
abstract mixin class _$UpdatePrintsDownloadingCopyWith<$Res> implements $QuranPrintsEventCopyWith<$Res> {
  factory _$UpdatePrintsDownloadingCopyWith(_UpdatePrintsDownloading value, $Res Function(_UpdatePrintsDownloading) _then) = __$UpdatePrintsDownloadingCopyWithImpl;
@useResult
$Res call({
 List<String> print
});




}
/// @nodoc
class __$UpdatePrintsDownloadingCopyWithImpl<$Res>
    implements _$UpdatePrintsDownloadingCopyWith<$Res> {
  __$UpdatePrintsDownloadingCopyWithImpl(this._self, this._then);

  final _UpdatePrintsDownloading _self;
  final $Res Function(_UpdatePrintsDownloading) _then;

/// Create a copy of QuranPrintsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? print = null,}) {
  return _then(_UpdatePrintsDownloading(
print: null == print ? _self._print : print // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc
mixin _$QuranPrintsState {

 List<QuranPrints>? get listOfPrints; bool get internetConnectionStauts; List<String> get printsDownloading;
/// Create a copy of QuranPrintsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuranPrintsStateCopyWith<QuranPrintsState> get copyWith => _$QuranPrintsStateCopyWithImpl<QuranPrintsState>(this as QuranPrintsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuranPrintsState&&const DeepCollectionEquality().equals(other.listOfPrints, listOfPrints)&&(identical(other.internetConnectionStauts, internetConnectionStauts) || other.internetConnectionStauts == internetConnectionStauts)&&const DeepCollectionEquality().equals(other.printsDownloading, printsDownloading));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(listOfPrints),internetConnectionStauts,const DeepCollectionEquality().hash(printsDownloading));

@override
String toString() {
  return 'QuranPrintsState(listOfPrints: $listOfPrints, internetConnectionStauts: $internetConnectionStauts, printsDownloading: $printsDownloading)';
}


}

/// @nodoc
abstract mixin class $QuranPrintsStateCopyWith<$Res>  {
  factory $QuranPrintsStateCopyWith(QuranPrintsState value, $Res Function(QuranPrintsState) _then) = _$QuranPrintsStateCopyWithImpl;
@useResult
$Res call({
 List<QuranPrints>? listOfPrints, bool internetConnectionStauts, List<String> printsDownloading
});




}
/// @nodoc
class _$QuranPrintsStateCopyWithImpl<$Res>
    implements $QuranPrintsStateCopyWith<$Res> {
  _$QuranPrintsStateCopyWithImpl(this._self, this._then);

  final QuranPrintsState _self;
  final $Res Function(QuranPrintsState) _then;

/// Create a copy of QuranPrintsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? listOfPrints = freezed,Object? internetConnectionStauts = null,Object? printsDownloading = null,}) {
  return _then(_self.copyWith(
listOfPrints: freezed == listOfPrints ? _self.listOfPrints : listOfPrints // ignore: cast_nullable_to_non_nullable
as List<QuranPrints>?,internetConnectionStauts: null == internetConnectionStauts ? _self.internetConnectionStauts : internetConnectionStauts // ignore: cast_nullable_to_non_nullable
as bool,printsDownloading: null == printsDownloading ? _self.printsDownloading : printsDownloading // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [QuranPrintsState].
extension QuranPrintsStatePatterns on QuranPrintsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuranPrintsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuranPrintsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuranPrintsState value)  $default,){
final _that = this;
switch (_that) {
case _QuranPrintsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuranPrintsState value)?  $default,){
final _that = this;
switch (_that) {
case _QuranPrintsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<QuranPrints>? listOfPrints,  bool internetConnectionStauts,  List<String> printsDownloading)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuranPrintsState() when $default != null:
return $default(_that.listOfPrints,_that.internetConnectionStauts,_that.printsDownloading);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<QuranPrints>? listOfPrints,  bool internetConnectionStauts,  List<String> printsDownloading)  $default,) {final _that = this;
switch (_that) {
case _QuranPrintsState():
return $default(_that.listOfPrints,_that.internetConnectionStauts,_that.printsDownloading);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<QuranPrints>? listOfPrints,  bool internetConnectionStauts,  List<String> printsDownloading)?  $default,) {final _that = this;
switch (_that) {
case _QuranPrintsState() when $default != null:
return $default(_that.listOfPrints,_that.internetConnectionStauts,_that.printsDownloading);case _:
  return null;

}
}

}

/// @nodoc


class _QuranPrintsState implements QuranPrintsState {
  const _QuranPrintsState({final  List<QuranPrints>? listOfPrints, this.internetConnectionStauts = false, final  List<String> printsDownloading = const []}): _listOfPrints = listOfPrints,_printsDownloading = printsDownloading;
  

 final  List<QuranPrints>? _listOfPrints;
@override List<QuranPrints>? get listOfPrints {
  final value = _listOfPrints;
  if (value == null) return null;
  if (_listOfPrints is EqualUnmodifiableListView) return _listOfPrints;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey() final  bool internetConnectionStauts;
 final  List<String> _printsDownloading;
@override@JsonKey() List<String> get printsDownloading {
  if (_printsDownloading is EqualUnmodifiableListView) return _printsDownloading;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_printsDownloading);
}


/// Create a copy of QuranPrintsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuranPrintsStateCopyWith<_QuranPrintsState> get copyWith => __$QuranPrintsStateCopyWithImpl<_QuranPrintsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuranPrintsState&&const DeepCollectionEquality().equals(other._listOfPrints, _listOfPrints)&&(identical(other.internetConnectionStauts, internetConnectionStauts) || other.internetConnectionStauts == internetConnectionStauts)&&const DeepCollectionEquality().equals(other._printsDownloading, _printsDownloading));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_listOfPrints),internetConnectionStauts,const DeepCollectionEquality().hash(_printsDownloading));

@override
String toString() {
  return 'QuranPrintsState(listOfPrints: $listOfPrints, internetConnectionStauts: $internetConnectionStauts, printsDownloading: $printsDownloading)';
}


}

/// @nodoc
abstract mixin class _$QuranPrintsStateCopyWith<$Res> implements $QuranPrintsStateCopyWith<$Res> {
  factory _$QuranPrintsStateCopyWith(_QuranPrintsState value, $Res Function(_QuranPrintsState) _then) = __$QuranPrintsStateCopyWithImpl;
@override @useResult
$Res call({
 List<QuranPrints>? listOfPrints, bool internetConnectionStauts, List<String> printsDownloading
});




}
/// @nodoc
class __$QuranPrintsStateCopyWithImpl<$Res>
    implements _$QuranPrintsStateCopyWith<$Res> {
  __$QuranPrintsStateCopyWithImpl(this._self, this._then);

  final _QuranPrintsState _self;
  final $Res Function(_QuranPrintsState) _then;

/// Create a copy of QuranPrintsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? listOfPrints = freezed,Object? internetConnectionStauts = null,Object? printsDownloading = null,}) {
  return _then(_QuranPrintsState(
listOfPrints: freezed == listOfPrints ? _self._listOfPrints : listOfPrints // ignore: cast_nullable_to_non_nullable
as List<QuranPrints>?,internetConnectionStauts: null == internetConnectionStauts ? _self.internetConnectionStauts : internetConnectionStauts // ignore: cast_nullable_to_non_nullable
as bool,printsDownloading: null == printsDownloading ? _self._printsDownloading : printsDownloading // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
