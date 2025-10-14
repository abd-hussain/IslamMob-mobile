// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quran_copy_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$QuranCopyEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuranCopyEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'QuranCopyEvent()';
}


}

/// @nodoc
class $QuranCopyEventCopyWith<$Res>  {
$QuranCopyEventCopyWith(QuranCopyEvent _, $Res Function(QuranCopyEvent) __);
}


/// Adds pattern-matching-related methods to [QuranCopyEvent].
extension QuranCopyEventPatterns on QuranCopyEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetListOfPrints value)?  getlistOfPrints,TResult Function( _UpdateInternetConnectionStatus value)?  updateInternetConnectionStatus,TResult Function( _UpdatePrintsDownloading value)?  updatePrintsDownloading,TResult Function( _SetupCopy value)?  setupCopy,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetListOfPrints() when getlistOfPrints != null:
return getlistOfPrints(_that);case _UpdateInternetConnectionStatus() when updateInternetConnectionStatus != null:
return updateInternetConnectionStatus(_that);case _UpdatePrintsDownloading() when updatePrintsDownloading != null:
return updatePrintsDownloading(_that);case _SetupCopy() when setupCopy != null:
return setupCopy(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetListOfPrints value)  getlistOfPrints,required TResult Function( _UpdateInternetConnectionStatus value)  updateInternetConnectionStatus,required TResult Function( _UpdatePrintsDownloading value)  updatePrintsDownloading,required TResult Function( _SetupCopy value)  setupCopy,}){
final _that = this;
switch (_that) {
case _GetListOfPrints():
return getlistOfPrints(_that);case _UpdateInternetConnectionStatus():
return updateInternetConnectionStatus(_that);case _UpdatePrintsDownloading():
return updatePrintsDownloading(_that);case _SetupCopy():
return setupCopy(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetListOfPrints value)?  getlistOfPrints,TResult? Function( _UpdateInternetConnectionStatus value)?  updateInternetConnectionStatus,TResult? Function( _UpdatePrintsDownloading value)?  updatePrintsDownloading,TResult? Function( _SetupCopy value)?  setupCopy,}){
final _that = this;
switch (_that) {
case _GetListOfPrints() when getlistOfPrints != null:
return getlistOfPrints(_that);case _UpdateInternetConnectionStatus() when updateInternetConnectionStatus != null:
return updateInternetConnectionStatus(_that);case _UpdatePrintsDownloading() when updatePrintsDownloading != null:
return updatePrintsDownloading(_that);case _SetupCopy() when setupCopy != null:
return setupCopy(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getlistOfPrints,TResult Function( bool status)?  updateInternetConnectionStatus,TResult Function( List<String> print)?  updatePrintsDownloading,TResult Function( QuranPrints printItem)?  setupCopy,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetListOfPrints() when getlistOfPrints != null:
return getlistOfPrints();case _UpdateInternetConnectionStatus() when updateInternetConnectionStatus != null:
return updateInternetConnectionStatus(_that.status);case _UpdatePrintsDownloading() when updatePrintsDownloading != null:
return updatePrintsDownloading(_that.print);case _SetupCopy() when setupCopy != null:
return setupCopy(_that.printItem);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getlistOfPrints,required TResult Function( bool status)  updateInternetConnectionStatus,required TResult Function( List<String> print)  updatePrintsDownloading,required TResult Function( QuranPrints printItem)  setupCopy,}) {final _that = this;
switch (_that) {
case _GetListOfPrints():
return getlistOfPrints();case _UpdateInternetConnectionStatus():
return updateInternetConnectionStatus(_that.status);case _UpdatePrintsDownloading():
return updatePrintsDownloading(_that.print);case _SetupCopy():
return setupCopy(_that.printItem);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getlistOfPrints,TResult? Function( bool status)?  updateInternetConnectionStatus,TResult? Function( List<String> print)?  updatePrintsDownloading,TResult? Function( QuranPrints printItem)?  setupCopy,}) {final _that = this;
switch (_that) {
case _GetListOfPrints() when getlistOfPrints != null:
return getlistOfPrints();case _UpdateInternetConnectionStatus() when updateInternetConnectionStatus != null:
return updateInternetConnectionStatus(_that.status);case _UpdatePrintsDownloading() when updatePrintsDownloading != null:
return updatePrintsDownloading(_that.print);case _SetupCopy() when setupCopy != null:
return setupCopy(_that.printItem);case _:
  return null;

}
}

}

/// @nodoc


class _GetListOfPrints implements QuranCopyEvent {
   _GetListOfPrints();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetListOfPrints);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'QuranCopyEvent.getlistOfPrints()';
}


}




/// @nodoc


class _UpdateInternetConnectionStatus implements QuranCopyEvent {
   _UpdateInternetConnectionStatus(this.status);
  

 final  bool status;

/// Create a copy of QuranCopyEvent
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
  return 'QuranCopyEvent.updateInternetConnectionStatus(status: $status)';
}


}

/// @nodoc
abstract mixin class _$UpdateInternetConnectionStatusCopyWith<$Res> implements $QuranCopyEventCopyWith<$Res> {
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

/// Create a copy of QuranCopyEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? status = null,}) {
  return _then(_UpdateInternetConnectionStatus(
null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _UpdatePrintsDownloading implements QuranCopyEvent {
   _UpdatePrintsDownloading(final  List<String> print): _print = print;
  

 final  List<String> _print;
 List<String> get print {
  if (_print is EqualUnmodifiableListView) return _print;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_print);
}


/// Create a copy of QuranCopyEvent
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
  return 'QuranCopyEvent.updatePrintsDownloading(print: $print)';
}


}

/// @nodoc
abstract mixin class _$UpdatePrintsDownloadingCopyWith<$Res> implements $QuranCopyEventCopyWith<$Res> {
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

/// Create a copy of QuranCopyEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? print = null,}) {
  return _then(_UpdatePrintsDownloading(
null == print ? _self._print : print // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc


class _SetupCopy implements QuranCopyEvent {
  const _SetupCopy({required this.printItem});
  

 final  QuranPrints printItem;

/// Create a copy of QuranCopyEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetupCopyCopyWith<_SetupCopy> get copyWith => __$SetupCopyCopyWithImpl<_SetupCopy>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetupCopy&&(identical(other.printItem, printItem) || other.printItem == printItem));
}


@override
int get hashCode => Object.hash(runtimeType,printItem);

@override
String toString() {
  return 'QuranCopyEvent.setupCopy(printItem: $printItem)';
}


}

/// @nodoc
abstract mixin class _$SetupCopyCopyWith<$Res> implements $QuranCopyEventCopyWith<$Res> {
  factory _$SetupCopyCopyWith(_SetupCopy value, $Res Function(_SetupCopy) _then) = __$SetupCopyCopyWithImpl;
@useResult
$Res call({
 QuranPrints printItem
});


$QuranPrintsCopyWith<$Res> get printItem;

}
/// @nodoc
class __$SetupCopyCopyWithImpl<$Res>
    implements _$SetupCopyCopyWith<$Res> {
  __$SetupCopyCopyWithImpl(this._self, this._then);

  final _SetupCopy _self;
  final $Res Function(_SetupCopy) _then;

/// Create a copy of QuranCopyEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? printItem = null,}) {
  return _then(_SetupCopy(
printItem: null == printItem ? _self.printItem : printItem // ignore: cast_nullable_to_non_nullable
as QuranPrints,
  ));
}

/// Create a copy of QuranCopyEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$QuranPrintsCopyWith<$Res> get printItem {
  
  return $QuranPrintsCopyWith<$Res>(_self.printItem, (value) {
    return _then(_self.copyWith(printItem: value));
  });
}
}

/// @nodoc
mixin _$QuranCopyState {

 List<QuranPrints>? get listOfPrints; bool get internetConnectionStauts; List<String> get printsAlreadyDownloaded;
/// Create a copy of QuranCopyState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuranCopyStateCopyWith<QuranCopyState> get copyWith => _$QuranCopyStateCopyWithImpl<QuranCopyState>(this as QuranCopyState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuranCopyState&&const DeepCollectionEquality().equals(other.listOfPrints, listOfPrints)&&(identical(other.internetConnectionStauts, internetConnectionStauts) || other.internetConnectionStauts == internetConnectionStauts)&&const DeepCollectionEquality().equals(other.printsAlreadyDownloaded, printsAlreadyDownloaded));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(listOfPrints),internetConnectionStauts,const DeepCollectionEquality().hash(printsAlreadyDownloaded));

@override
String toString() {
  return 'QuranCopyState(listOfPrints: $listOfPrints, internetConnectionStauts: $internetConnectionStauts, printsAlreadyDownloaded: $printsAlreadyDownloaded)';
}


}

/// @nodoc
abstract mixin class $QuranCopyStateCopyWith<$Res>  {
  factory $QuranCopyStateCopyWith(QuranCopyState value, $Res Function(QuranCopyState) _then) = _$QuranCopyStateCopyWithImpl;
@useResult
$Res call({
 List<QuranPrints>? listOfPrints, bool internetConnectionStauts, List<String> printsAlreadyDownloaded
});




}
/// @nodoc
class _$QuranCopyStateCopyWithImpl<$Res>
    implements $QuranCopyStateCopyWith<$Res> {
  _$QuranCopyStateCopyWithImpl(this._self, this._then);

  final QuranCopyState _self;
  final $Res Function(QuranCopyState) _then;

/// Create a copy of QuranCopyState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? listOfPrints = freezed,Object? internetConnectionStauts = null,Object? printsAlreadyDownloaded = null,}) {
  return _then(_self.copyWith(
listOfPrints: freezed == listOfPrints ? _self.listOfPrints : listOfPrints // ignore: cast_nullable_to_non_nullable
as List<QuranPrints>?,internetConnectionStauts: null == internetConnectionStauts ? _self.internetConnectionStauts : internetConnectionStauts // ignore: cast_nullable_to_non_nullable
as bool,printsAlreadyDownloaded: null == printsAlreadyDownloaded ? _self.printsAlreadyDownloaded : printsAlreadyDownloaded // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [QuranCopyState].
extension QuranCopyStatePatterns on QuranCopyState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuranCopyState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuranCopyState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuranCopyState value)  $default,){
final _that = this;
switch (_that) {
case _QuranCopyState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuranCopyState value)?  $default,){
final _that = this;
switch (_that) {
case _QuranCopyState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<QuranPrints>? listOfPrints,  bool internetConnectionStauts,  List<String> printsAlreadyDownloaded)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuranCopyState() when $default != null:
return $default(_that.listOfPrints,_that.internetConnectionStauts,_that.printsAlreadyDownloaded);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<QuranPrints>? listOfPrints,  bool internetConnectionStauts,  List<String> printsAlreadyDownloaded)  $default,) {final _that = this;
switch (_that) {
case _QuranCopyState():
return $default(_that.listOfPrints,_that.internetConnectionStauts,_that.printsAlreadyDownloaded);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<QuranPrints>? listOfPrints,  bool internetConnectionStauts,  List<String> printsAlreadyDownloaded)?  $default,) {final _that = this;
switch (_that) {
case _QuranCopyState() when $default != null:
return $default(_that.listOfPrints,_that.internetConnectionStauts,_that.printsAlreadyDownloaded);case _:
  return null;

}
}

}

/// @nodoc


class _QuranCopyState implements QuranCopyState {
  const _QuranCopyState({final  List<QuranPrints>? listOfPrints, this.internetConnectionStauts = false, final  List<String> printsAlreadyDownloaded = const []}): _listOfPrints = listOfPrints,_printsAlreadyDownloaded = printsAlreadyDownloaded;
  

 final  List<QuranPrints>? _listOfPrints;
@override List<QuranPrints>? get listOfPrints {
  final value = _listOfPrints;
  if (value == null) return null;
  if (_listOfPrints is EqualUnmodifiableListView) return _listOfPrints;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey() final  bool internetConnectionStauts;
 final  List<String> _printsAlreadyDownloaded;
@override@JsonKey() List<String> get printsAlreadyDownloaded {
  if (_printsAlreadyDownloaded is EqualUnmodifiableListView) return _printsAlreadyDownloaded;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_printsAlreadyDownloaded);
}


/// Create a copy of QuranCopyState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuranCopyStateCopyWith<_QuranCopyState> get copyWith => __$QuranCopyStateCopyWithImpl<_QuranCopyState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuranCopyState&&const DeepCollectionEquality().equals(other._listOfPrints, _listOfPrints)&&(identical(other.internetConnectionStauts, internetConnectionStauts) || other.internetConnectionStauts == internetConnectionStauts)&&const DeepCollectionEquality().equals(other._printsAlreadyDownloaded, _printsAlreadyDownloaded));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_listOfPrints),internetConnectionStauts,const DeepCollectionEquality().hash(_printsAlreadyDownloaded));

@override
String toString() {
  return 'QuranCopyState(listOfPrints: $listOfPrints, internetConnectionStauts: $internetConnectionStauts, printsAlreadyDownloaded: $printsAlreadyDownloaded)';
}


}

/// @nodoc
abstract mixin class _$QuranCopyStateCopyWith<$Res> implements $QuranCopyStateCopyWith<$Res> {
  factory _$QuranCopyStateCopyWith(_QuranCopyState value, $Res Function(_QuranCopyState) _then) = __$QuranCopyStateCopyWithImpl;
@override @useResult
$Res call({
 List<QuranPrints>? listOfPrints, bool internetConnectionStauts, List<String> printsAlreadyDownloaded
});




}
/// @nodoc
class __$QuranCopyStateCopyWithImpl<$Res>
    implements _$QuranCopyStateCopyWith<$Res> {
  __$QuranCopyStateCopyWithImpl(this._self, this._then);

  final _QuranCopyState _self;
  final $Res Function(_QuranCopyState) _then;

/// Create a copy of QuranCopyState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? listOfPrints = freezed,Object? internetConnectionStauts = null,Object? printsAlreadyDownloaded = null,}) {
  return _then(_QuranCopyState(
listOfPrints: freezed == listOfPrints ? _self._listOfPrints : listOfPrints // ignore: cast_nullable_to_non_nullable
as List<QuranPrints>?,internetConnectionStauts: null == internetConnectionStauts ? _self.internetConnectionStauts : internetConnectionStauts // ignore: cast_nullable_to_non_nullable
as bool,printsAlreadyDownloaded: null == printsAlreadyDownloaded ? _self._printsAlreadyDownloaded : printsAlreadyDownloaded // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
