// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'language_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LanguageEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LanguageEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LanguageEvent()';
}


}

/// @nodoc
class $LanguageEventCopyWith<$Res>  {
$LanguageEventCopyWith(LanguageEvent _, $Res Function(LanguageEvent) __);
}


/// Adds pattern-matching-related methods to [LanguageEvent].
extension LanguageEventPatterns on LanguageEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ChangeSelectedLanguage value)?  changeSelectedLanguage,TResult Function( _SetupLanguage value)?  setupLanguage,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChangeSelectedLanguage() when changeSelectedLanguage != null:
return changeSelectedLanguage(_that);case _SetupLanguage() when setupLanguage != null:
return setupLanguage(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ChangeSelectedLanguage value)  changeSelectedLanguage,required TResult Function( _SetupLanguage value)  setupLanguage,}){
final _that = this;
switch (_that) {
case _ChangeSelectedLanguage():
return changeSelectedLanguage(_that);case _SetupLanguage():
return setupLanguage(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ChangeSelectedLanguage value)?  changeSelectedLanguage,TResult? Function( _SetupLanguage value)?  setupLanguage,}){
final _that = this;
switch (_that) {
case _ChangeSelectedLanguage() when changeSelectedLanguage != null:
return changeSelectedLanguage(_that);case _SetupLanguage() when setupLanguage != null:
return setupLanguage(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( LanguageModel type)?  changeSelectedLanguage,TResult Function( BuildContext context)?  setupLanguage,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChangeSelectedLanguage() when changeSelectedLanguage != null:
return changeSelectedLanguage(_that.type);case _SetupLanguage() when setupLanguage != null:
return setupLanguage(_that.context);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( LanguageModel type)  changeSelectedLanguage,required TResult Function( BuildContext context)  setupLanguage,}) {final _that = this;
switch (_that) {
case _ChangeSelectedLanguage():
return changeSelectedLanguage(_that.type);case _SetupLanguage():
return setupLanguage(_that.context);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( LanguageModel type)?  changeSelectedLanguage,TResult? Function( BuildContext context)?  setupLanguage,}) {final _that = this;
switch (_that) {
case _ChangeSelectedLanguage() when changeSelectedLanguage != null:
return changeSelectedLanguage(_that.type);case _SetupLanguage() when setupLanguage != null:
return setupLanguage(_that.context);case _:
  return null;

}
}

}

/// @nodoc


class _ChangeSelectedLanguage implements LanguageEvent {
  const _ChangeSelectedLanguage({required this.type});
  

 final  LanguageModel type;

/// Create a copy of LanguageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangeSelectedLanguageCopyWith<_ChangeSelectedLanguage> get copyWith => __$ChangeSelectedLanguageCopyWithImpl<_ChangeSelectedLanguage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangeSelectedLanguage&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,type);

@override
String toString() {
  return 'LanguageEvent.changeSelectedLanguage(type: $type)';
}


}

/// @nodoc
abstract mixin class _$ChangeSelectedLanguageCopyWith<$Res> implements $LanguageEventCopyWith<$Res> {
  factory _$ChangeSelectedLanguageCopyWith(_ChangeSelectedLanguage value, $Res Function(_ChangeSelectedLanguage) _then) = __$ChangeSelectedLanguageCopyWithImpl;
@useResult
$Res call({
 LanguageModel type
});


$LanguageModelCopyWith<$Res> get type;

}
/// @nodoc
class __$ChangeSelectedLanguageCopyWithImpl<$Res>
    implements _$ChangeSelectedLanguageCopyWith<$Res> {
  __$ChangeSelectedLanguageCopyWithImpl(this._self, this._then);

  final _ChangeSelectedLanguage _self;
  final $Res Function(_ChangeSelectedLanguage) _then;

/// Create a copy of LanguageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? type = null,}) {
  return _then(_ChangeSelectedLanguage(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as LanguageModel,
  ));
}

/// Create a copy of LanguageEvent
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


class _SetupLanguage implements LanguageEvent {
  const _SetupLanguage({required this.context});
  

 final  BuildContext context;

/// Create a copy of LanguageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetupLanguageCopyWith<_SetupLanguage> get copyWith => __$SetupLanguageCopyWithImpl<_SetupLanguage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetupLanguage&&(identical(other.context, context) || other.context == context));
}


@override
int get hashCode => Object.hash(runtimeType,context);

@override
String toString() {
  return 'LanguageEvent.setupLanguage(context: $context)';
}


}

/// @nodoc
abstract mixin class _$SetupLanguageCopyWith<$Res> implements $LanguageEventCopyWith<$Res> {
  factory _$SetupLanguageCopyWith(_SetupLanguage value, $Res Function(_SetupLanguage) _then) = __$SetupLanguageCopyWithImpl;
@useResult
$Res call({
 BuildContext context
});




}
/// @nodoc
class __$SetupLanguageCopyWithImpl<$Res>
    implements _$SetupLanguageCopyWith<$Res> {
  __$SetupLanguageCopyWithImpl(this._self, this._then);

  final _SetupLanguage _self;
  final $Res Function(_SetupLanguage) _then;

/// Create a copy of LanguageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? context = null,}) {
  return _then(_SetupLanguage(
context: null == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as BuildContext,
  ));
}


}

/// @nodoc
mixin _$LanguageState {

 LanguageModel? get selectedLanguage;
/// Create a copy of LanguageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LanguageStateCopyWith<LanguageState> get copyWith => _$LanguageStateCopyWithImpl<LanguageState>(this as LanguageState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LanguageState&&(identical(other.selectedLanguage, selectedLanguage) || other.selectedLanguage == selectedLanguage));
}


@override
int get hashCode => Object.hash(runtimeType,selectedLanguage);

@override
String toString() {
  return 'LanguageState(selectedLanguage: $selectedLanguage)';
}


}

/// @nodoc
abstract mixin class $LanguageStateCopyWith<$Res>  {
  factory $LanguageStateCopyWith(LanguageState value, $Res Function(LanguageState) _then) = _$LanguageStateCopyWithImpl;
@useResult
$Res call({
 LanguageModel? selectedLanguage
});


$LanguageModelCopyWith<$Res>? get selectedLanguage;

}
/// @nodoc
class _$LanguageStateCopyWithImpl<$Res>
    implements $LanguageStateCopyWith<$Res> {
  _$LanguageStateCopyWithImpl(this._self, this._then);

  final LanguageState _self;
  final $Res Function(LanguageState) _then;

/// Create a copy of LanguageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selectedLanguage = freezed,}) {
  return _then(_self.copyWith(
selectedLanguage: freezed == selectedLanguage ? _self.selectedLanguage : selectedLanguage // ignore: cast_nullable_to_non_nullable
as LanguageModel?,
  ));
}
/// Create a copy of LanguageState
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


/// Adds pattern-matching-related methods to [LanguageState].
extension LanguageStatePatterns on LanguageState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LanguageState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LanguageState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LanguageState value)  $default,){
final _that = this;
switch (_that) {
case _LanguageState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LanguageState value)?  $default,){
final _that = this;
switch (_that) {
case _LanguageState() when $default != null:
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
case _LanguageState() when $default != null:
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
case _LanguageState():
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
case _LanguageState() when $default != null:
return $default(_that.selectedLanguage);case _:
  return null;

}
}

}

/// @nodoc


class _LanguageState implements LanguageState {
  const _LanguageState({this.selectedLanguage});
  

@override final  LanguageModel? selectedLanguage;

/// Create a copy of LanguageState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LanguageStateCopyWith<_LanguageState> get copyWith => __$LanguageStateCopyWithImpl<_LanguageState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LanguageState&&(identical(other.selectedLanguage, selectedLanguage) || other.selectedLanguage == selectedLanguage));
}


@override
int get hashCode => Object.hash(runtimeType,selectedLanguage);

@override
String toString() {
  return 'LanguageState(selectedLanguage: $selectedLanguage)';
}


}

/// @nodoc
abstract mixin class _$LanguageStateCopyWith<$Res> implements $LanguageStateCopyWith<$Res> {
  factory _$LanguageStateCopyWith(_LanguageState value, $Res Function(_LanguageState) _then) = __$LanguageStateCopyWithImpl;
@override @useResult
$Res call({
 LanguageModel? selectedLanguage
});


@override $LanguageModelCopyWith<$Res>? get selectedLanguage;

}
/// @nodoc
class __$LanguageStateCopyWithImpl<$Res>
    implements _$LanguageStateCopyWith<$Res> {
  __$LanguageStateCopyWithImpl(this._self, this._then);

  final _LanguageState _self;
  final $Res Function(_LanguageState) _then;

/// Create a copy of LanguageState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selectedLanguage = freezed,}) {
  return _then(_LanguageState(
selectedLanguage: freezed == selectedLanguage ? _self.selectedLanguage : selectedLanguage // ignore: cast_nullable_to_non_nullable
as LanguageModel?,
  ));
}

/// Create a copy of LanguageState
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
