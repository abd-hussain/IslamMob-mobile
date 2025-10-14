// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_language_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChangeLanguageEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeLanguageEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChangeLanguageEvent()';
}


}

/// @nodoc
class $ChangeLanguageEventCopyWith<$Res>  {
$ChangeLanguageEventCopyWith(ChangeLanguageEvent _, $Res Function(ChangeLanguageEvent) __);
}


/// Adds pattern-matching-related methods to [ChangeLanguageEvent].
extension ChangeLanguageEventPatterns on ChangeLanguageEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ChangeSelectedCheckBoxLanguage value)?  changeSelectedCheckBoxLanguage,TResult Function( _PlaceNewLanguage value)?  placeNewLanguage,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChangeSelectedCheckBoxLanguage() when changeSelectedCheckBoxLanguage != null:
return changeSelectedCheckBoxLanguage(_that);case _PlaceNewLanguage() when placeNewLanguage != null:
return placeNewLanguage(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ChangeSelectedCheckBoxLanguage value)  changeSelectedCheckBoxLanguage,required TResult Function( _PlaceNewLanguage value)  placeNewLanguage,}){
final _that = this;
switch (_that) {
case _ChangeSelectedCheckBoxLanguage():
return changeSelectedCheckBoxLanguage(_that);case _PlaceNewLanguage():
return placeNewLanguage(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ChangeSelectedCheckBoxLanguage value)?  changeSelectedCheckBoxLanguage,TResult? Function( _PlaceNewLanguage value)?  placeNewLanguage,}){
final _that = this;
switch (_that) {
case _ChangeSelectedCheckBoxLanguage() when changeSelectedCheckBoxLanguage != null:
return changeSelectedCheckBoxLanguage(_that);case _PlaceNewLanguage() when placeNewLanguage != null:
return placeNewLanguage(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( LanguageModel type)?  changeSelectedCheckBoxLanguage,TResult Function( String langCode)?  placeNewLanguage,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChangeSelectedCheckBoxLanguage() when changeSelectedCheckBoxLanguage != null:
return changeSelectedCheckBoxLanguage(_that.type);case _PlaceNewLanguage() when placeNewLanguage != null:
return placeNewLanguage(_that.langCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( LanguageModel type)  changeSelectedCheckBoxLanguage,required TResult Function( String langCode)  placeNewLanguage,}) {final _that = this;
switch (_that) {
case _ChangeSelectedCheckBoxLanguage():
return changeSelectedCheckBoxLanguage(_that.type);case _PlaceNewLanguage():
return placeNewLanguage(_that.langCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( LanguageModel type)?  changeSelectedCheckBoxLanguage,TResult? Function( String langCode)?  placeNewLanguage,}) {final _that = this;
switch (_that) {
case _ChangeSelectedCheckBoxLanguage() when changeSelectedCheckBoxLanguage != null:
return changeSelectedCheckBoxLanguage(_that.type);case _PlaceNewLanguage() when placeNewLanguage != null:
return placeNewLanguage(_that.langCode);case _:
  return null;

}
}

}

/// @nodoc


class _ChangeSelectedCheckBoxLanguage implements ChangeLanguageEvent {
  const _ChangeSelectedCheckBoxLanguage({required this.type});
  

 final  LanguageModel type;

/// Create a copy of ChangeLanguageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangeSelectedCheckBoxLanguageCopyWith<_ChangeSelectedCheckBoxLanguage> get copyWith => __$ChangeSelectedCheckBoxLanguageCopyWithImpl<_ChangeSelectedCheckBoxLanguage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangeSelectedCheckBoxLanguage&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,type);

@override
String toString() {
  return 'ChangeLanguageEvent.changeSelectedCheckBoxLanguage(type: $type)';
}


}

/// @nodoc
abstract mixin class _$ChangeSelectedCheckBoxLanguageCopyWith<$Res> implements $ChangeLanguageEventCopyWith<$Res> {
  factory _$ChangeSelectedCheckBoxLanguageCopyWith(_ChangeSelectedCheckBoxLanguage value, $Res Function(_ChangeSelectedCheckBoxLanguage) _then) = __$ChangeSelectedCheckBoxLanguageCopyWithImpl;
@useResult
$Res call({
 LanguageModel type
});


$LanguageModelCopyWith<$Res> get type;

}
/// @nodoc
class __$ChangeSelectedCheckBoxLanguageCopyWithImpl<$Res>
    implements _$ChangeSelectedCheckBoxLanguageCopyWith<$Res> {
  __$ChangeSelectedCheckBoxLanguageCopyWithImpl(this._self, this._then);

  final _ChangeSelectedCheckBoxLanguage _self;
  final $Res Function(_ChangeSelectedCheckBoxLanguage) _then;

/// Create a copy of ChangeLanguageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? type = null,}) {
  return _then(_ChangeSelectedCheckBoxLanguage(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as LanguageModel,
  ));
}

/// Create a copy of ChangeLanguageEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LanguageModelCopyWith<$Res> get type {
  
  return $LanguageModelCopyWith<$Res>(_self.type, (value) {
    return _then(_self.copyWith(type: value));
  });
}
}

/// @nodoc


class _PlaceNewLanguage implements ChangeLanguageEvent {
  const _PlaceNewLanguage({required this.langCode});
  

 final  String langCode;

/// Create a copy of ChangeLanguageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlaceNewLanguageCopyWith<_PlaceNewLanguage> get copyWith => __$PlaceNewLanguageCopyWithImpl<_PlaceNewLanguage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlaceNewLanguage&&(identical(other.langCode, langCode) || other.langCode == langCode));
}


@override
int get hashCode => Object.hash(runtimeType,langCode);

@override
String toString() {
  return 'ChangeLanguageEvent.placeNewLanguage(langCode: $langCode)';
}


}

/// @nodoc
abstract mixin class _$PlaceNewLanguageCopyWith<$Res> implements $ChangeLanguageEventCopyWith<$Res> {
  factory _$PlaceNewLanguageCopyWith(_PlaceNewLanguage value, $Res Function(_PlaceNewLanguage) _then) = __$PlaceNewLanguageCopyWithImpl;
@useResult
$Res call({
 String langCode
});




}
/// @nodoc
class __$PlaceNewLanguageCopyWithImpl<$Res>
    implements _$PlaceNewLanguageCopyWith<$Res> {
  __$PlaceNewLanguageCopyWithImpl(this._self, this._then);

  final _PlaceNewLanguage _self;
  final $Res Function(_PlaceNewLanguage) _then;

/// Create a copy of ChangeLanguageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? langCode = null,}) {
  return _then(_PlaceNewLanguage(
langCode: null == langCode ? _self.langCode : langCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$ChangeLanguageState {

 LanguageModel? get selectedLanguage;
/// Create a copy of ChangeLanguageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeLanguageStateCopyWith<ChangeLanguageState> get copyWith => _$ChangeLanguageStateCopyWithImpl<ChangeLanguageState>(this as ChangeLanguageState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeLanguageState&&(identical(other.selectedLanguage, selectedLanguage) || other.selectedLanguage == selectedLanguage));
}


@override
int get hashCode => Object.hash(runtimeType,selectedLanguage);

@override
String toString() {
  return 'ChangeLanguageState(selectedLanguage: $selectedLanguage)';
}


}

/// @nodoc
abstract mixin class $ChangeLanguageStateCopyWith<$Res>  {
  factory $ChangeLanguageStateCopyWith(ChangeLanguageState value, $Res Function(ChangeLanguageState) _then) = _$ChangeLanguageStateCopyWithImpl;
@useResult
$Res call({
 LanguageModel? selectedLanguage
});


$LanguageModelCopyWith<$Res>? get selectedLanguage;

}
/// @nodoc
class _$ChangeLanguageStateCopyWithImpl<$Res>
    implements $ChangeLanguageStateCopyWith<$Res> {
  _$ChangeLanguageStateCopyWithImpl(this._self, this._then);

  final ChangeLanguageState _self;
  final $Res Function(ChangeLanguageState) _then;

/// Create a copy of ChangeLanguageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selectedLanguage = freezed,}) {
  return _then(_self.copyWith(
selectedLanguage: freezed == selectedLanguage ? _self.selectedLanguage : selectedLanguage // ignore: cast_nullable_to_non_nullable
as LanguageModel?,
  ));
}
/// Create a copy of ChangeLanguageState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LanguageModelCopyWith<$Res>? get selectedLanguage {
    if (_self.selectedLanguage == null) {
    return null;
  }

  return $LanguageModelCopyWith<$Res>(_self.selectedLanguage!, (value) {
    return _then(_self.copyWith(selectedLanguage: value));
  });
}
}


/// Adds pattern-matching-related methods to [ChangeLanguageState].
extension ChangeLanguageStatePatterns on ChangeLanguageState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChangeLanguageState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChangeLanguageState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChangeLanguageState value)  $default,){
final _that = this;
switch (_that) {
case _ChangeLanguageState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChangeLanguageState value)?  $default,){
final _that = this;
switch (_that) {
case _ChangeLanguageState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( LanguageModel? selectedLanguage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChangeLanguageState() when $default != null:
return $default(_that.selectedLanguage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( LanguageModel? selectedLanguage)  $default,) {final _that = this;
switch (_that) {
case _ChangeLanguageState():
return $default(_that.selectedLanguage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( LanguageModel? selectedLanguage)?  $default,) {final _that = this;
switch (_that) {
case _ChangeLanguageState() when $default != null:
return $default(_that.selectedLanguage);case _:
  return null;

}
}

}

/// @nodoc


class _ChangeLanguageState implements ChangeLanguageState {
  const _ChangeLanguageState({this.selectedLanguage});
  

@override final  LanguageModel? selectedLanguage;

/// Create a copy of ChangeLanguageState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangeLanguageStateCopyWith<_ChangeLanguageState> get copyWith => __$ChangeLanguageStateCopyWithImpl<_ChangeLanguageState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangeLanguageState&&(identical(other.selectedLanguage, selectedLanguage) || other.selectedLanguage == selectedLanguage));
}


@override
int get hashCode => Object.hash(runtimeType,selectedLanguage);

@override
String toString() {
  return 'ChangeLanguageState(selectedLanguage: $selectedLanguage)';
}


}

/// @nodoc
abstract mixin class _$ChangeLanguageStateCopyWith<$Res> implements $ChangeLanguageStateCopyWith<$Res> {
  factory _$ChangeLanguageStateCopyWith(_ChangeLanguageState value, $Res Function(_ChangeLanguageState) _then) = __$ChangeLanguageStateCopyWithImpl;
@override @useResult
$Res call({
 LanguageModel? selectedLanguage
});


@override $LanguageModelCopyWith<$Res>? get selectedLanguage;

}
/// @nodoc
class __$ChangeLanguageStateCopyWithImpl<$Res>
    implements _$ChangeLanguageStateCopyWith<$Res> {
  __$ChangeLanguageStateCopyWithImpl(this._self, this._then);

  final _ChangeLanguageState _self;
  final $Res Function(_ChangeLanguageState) _then;

/// Create a copy of ChangeLanguageState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selectedLanguage = freezed,}) {
  return _then(_ChangeLanguageState(
selectedLanguage: freezed == selectedLanguage ? _self.selectedLanguage : selectedLanguage // ignore: cast_nullable_to_non_nullable
as LanguageModel?,
  ));
}

/// Create a copy of ChangeLanguageState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LanguageModelCopyWith<$Res>? get selectedLanguage {
    if (_self.selectedLanguage == null) {
    return null;
  }

  return $LanguageModelCopyWith<$Res>(_self.selectedLanguage!, (value) {
    return _then(_self.copyWith(selectedLanguage: value));
  });
}
}

// dart format on
