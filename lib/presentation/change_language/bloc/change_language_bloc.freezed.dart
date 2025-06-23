// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_language_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChangeLanguageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LanguageModel type)
        changeSelectedCheckBoxLanguage,
    required TResult Function(String langCode) placeNewLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LanguageModel type)? changeSelectedCheckBoxLanguage,
    TResult? Function(String langCode)? placeNewLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LanguageModel type)? changeSelectedCheckBoxLanguage,
    TResult Function(String langCode)? placeNewLanguage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeSelectedCheckBoxLanguage value)
        changeSelectedCheckBoxLanguage,
    required TResult Function(_PlaceNewLanguage value) placeNewLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeSelectedCheckBoxLanguage value)?
        changeSelectedCheckBoxLanguage,
    TResult? Function(_PlaceNewLanguage value)? placeNewLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeSelectedCheckBoxLanguage value)?
        changeSelectedCheckBoxLanguage,
    TResult Function(_PlaceNewLanguage value)? placeNewLanguage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeLanguageEventCopyWith<$Res> {
  factory $ChangeLanguageEventCopyWith(
          ChangeLanguageEvent value, $Res Function(ChangeLanguageEvent) then) =
      _$ChangeLanguageEventCopyWithImpl<$Res, ChangeLanguageEvent>;
}

/// @nodoc
class _$ChangeLanguageEventCopyWithImpl<$Res, $Val extends ChangeLanguageEvent>
    implements $ChangeLanguageEventCopyWith<$Res> {
  _$ChangeLanguageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChangeLanguageEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ChangeSelectedCheckBoxLanguageImplCopyWith<$Res> {
  factory _$$ChangeSelectedCheckBoxLanguageImplCopyWith(
          _$ChangeSelectedCheckBoxLanguageImpl value,
          $Res Function(_$ChangeSelectedCheckBoxLanguageImpl) then) =
      __$$ChangeSelectedCheckBoxLanguageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LanguageModel type});

  $LanguageModelCopyWith<$Res> get type;
}

/// @nodoc
class __$$ChangeSelectedCheckBoxLanguageImplCopyWithImpl<$Res>
    extends _$ChangeLanguageEventCopyWithImpl<$Res,
        _$ChangeSelectedCheckBoxLanguageImpl>
    implements _$$ChangeSelectedCheckBoxLanguageImplCopyWith<$Res> {
  __$$ChangeSelectedCheckBoxLanguageImplCopyWithImpl(
      _$ChangeSelectedCheckBoxLanguageImpl _value,
      $Res Function(_$ChangeSelectedCheckBoxLanguageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChangeLanguageEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$ChangeSelectedCheckBoxLanguageImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as LanguageModel,
    ));
  }

  /// Create a copy of ChangeLanguageEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LanguageModelCopyWith<$Res> get type {
    return $LanguageModelCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value));
    });
  }
}

/// @nodoc

class _$ChangeSelectedCheckBoxLanguageImpl
    implements _ChangeSelectedCheckBoxLanguage {
  const _$ChangeSelectedCheckBoxLanguageImpl({required this.type});

  @override
  final LanguageModel type;

  @override
  String toString() {
    return 'ChangeLanguageEvent.changeSelectedCheckBoxLanguage(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeSelectedCheckBoxLanguageImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  /// Create a copy of ChangeLanguageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeSelectedCheckBoxLanguageImplCopyWith<
          _$ChangeSelectedCheckBoxLanguageImpl>
      get copyWith => __$$ChangeSelectedCheckBoxLanguageImplCopyWithImpl<
          _$ChangeSelectedCheckBoxLanguageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LanguageModel type)
        changeSelectedCheckBoxLanguage,
    required TResult Function(String langCode) placeNewLanguage,
  }) {
    return changeSelectedCheckBoxLanguage(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LanguageModel type)? changeSelectedCheckBoxLanguage,
    TResult? Function(String langCode)? placeNewLanguage,
  }) {
    return changeSelectedCheckBoxLanguage?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LanguageModel type)? changeSelectedCheckBoxLanguage,
    TResult Function(String langCode)? placeNewLanguage,
    required TResult orElse(),
  }) {
    if (changeSelectedCheckBoxLanguage != null) {
      return changeSelectedCheckBoxLanguage(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeSelectedCheckBoxLanguage value)
        changeSelectedCheckBoxLanguage,
    required TResult Function(_PlaceNewLanguage value) placeNewLanguage,
  }) {
    return changeSelectedCheckBoxLanguage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeSelectedCheckBoxLanguage value)?
        changeSelectedCheckBoxLanguage,
    TResult? Function(_PlaceNewLanguage value)? placeNewLanguage,
  }) {
    return changeSelectedCheckBoxLanguage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeSelectedCheckBoxLanguage value)?
        changeSelectedCheckBoxLanguage,
    TResult Function(_PlaceNewLanguage value)? placeNewLanguage,
    required TResult orElse(),
  }) {
    if (changeSelectedCheckBoxLanguage != null) {
      return changeSelectedCheckBoxLanguage(this);
    }
    return orElse();
  }
}

abstract class _ChangeSelectedCheckBoxLanguage implements ChangeLanguageEvent {
  const factory _ChangeSelectedCheckBoxLanguage(
          {required final LanguageModel type}) =
      _$ChangeSelectedCheckBoxLanguageImpl;

  LanguageModel get type;

  /// Create a copy of ChangeLanguageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeSelectedCheckBoxLanguageImplCopyWith<
          _$ChangeSelectedCheckBoxLanguageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlaceNewLanguageImplCopyWith<$Res> {
  factory _$$PlaceNewLanguageImplCopyWith(_$PlaceNewLanguageImpl value,
          $Res Function(_$PlaceNewLanguageImpl) then) =
      __$$PlaceNewLanguageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String langCode});
}

/// @nodoc
class __$$PlaceNewLanguageImplCopyWithImpl<$Res>
    extends _$ChangeLanguageEventCopyWithImpl<$Res, _$PlaceNewLanguageImpl>
    implements _$$PlaceNewLanguageImplCopyWith<$Res> {
  __$$PlaceNewLanguageImplCopyWithImpl(_$PlaceNewLanguageImpl _value,
      $Res Function(_$PlaceNewLanguageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChangeLanguageEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? langCode = null,
  }) {
    return _then(_$PlaceNewLanguageImpl(
      langCode: null == langCode
          ? _value.langCode
          : langCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PlaceNewLanguageImpl implements _PlaceNewLanguage {
  const _$PlaceNewLanguageImpl({required this.langCode});

  @override
  final String langCode;

  @override
  String toString() {
    return 'ChangeLanguageEvent.placeNewLanguage(langCode: $langCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceNewLanguageImpl &&
            (identical(other.langCode, langCode) ||
                other.langCode == langCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, langCode);

  /// Create a copy of ChangeLanguageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceNewLanguageImplCopyWith<_$PlaceNewLanguageImpl> get copyWith =>
      __$$PlaceNewLanguageImplCopyWithImpl<_$PlaceNewLanguageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LanguageModel type)
        changeSelectedCheckBoxLanguage,
    required TResult Function(String langCode) placeNewLanguage,
  }) {
    return placeNewLanguage(langCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LanguageModel type)? changeSelectedCheckBoxLanguage,
    TResult? Function(String langCode)? placeNewLanguage,
  }) {
    return placeNewLanguage?.call(langCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LanguageModel type)? changeSelectedCheckBoxLanguage,
    TResult Function(String langCode)? placeNewLanguage,
    required TResult orElse(),
  }) {
    if (placeNewLanguage != null) {
      return placeNewLanguage(langCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeSelectedCheckBoxLanguage value)
        changeSelectedCheckBoxLanguage,
    required TResult Function(_PlaceNewLanguage value) placeNewLanguage,
  }) {
    return placeNewLanguage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeSelectedCheckBoxLanguage value)?
        changeSelectedCheckBoxLanguage,
    TResult? Function(_PlaceNewLanguage value)? placeNewLanguage,
  }) {
    return placeNewLanguage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeSelectedCheckBoxLanguage value)?
        changeSelectedCheckBoxLanguage,
    TResult Function(_PlaceNewLanguage value)? placeNewLanguage,
    required TResult orElse(),
  }) {
    if (placeNewLanguage != null) {
      return placeNewLanguage(this);
    }
    return orElse();
  }
}

abstract class _PlaceNewLanguage implements ChangeLanguageEvent {
  const factory _PlaceNewLanguage({required final String langCode}) =
      _$PlaceNewLanguageImpl;

  String get langCode;

  /// Create a copy of ChangeLanguageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlaceNewLanguageImplCopyWith<_$PlaceNewLanguageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChangeLanguageState {
  LanguageModel? get selectedLanguage => throw _privateConstructorUsedError;

  /// Create a copy of ChangeLanguageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChangeLanguageStateCopyWith<ChangeLanguageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeLanguageStateCopyWith<$Res> {
  factory $ChangeLanguageStateCopyWith(
          ChangeLanguageState value, $Res Function(ChangeLanguageState) then) =
      _$ChangeLanguageStateCopyWithImpl<$Res, ChangeLanguageState>;
  @useResult
  $Res call({LanguageModel? selectedLanguage});

  $LanguageModelCopyWith<$Res>? get selectedLanguage;
}

/// @nodoc
class _$ChangeLanguageStateCopyWithImpl<$Res, $Val extends ChangeLanguageState>
    implements $ChangeLanguageStateCopyWith<$Res> {
  _$ChangeLanguageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChangeLanguageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedLanguage = freezed,
  }) {
    return _then(_value.copyWith(
      selectedLanguage: freezed == selectedLanguage
          ? _value.selectedLanguage
          : selectedLanguage // ignore: cast_nullable_to_non_nullable
              as LanguageModel?,
    ) as $Val);
  }

  /// Create a copy of ChangeLanguageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LanguageModelCopyWith<$Res>? get selectedLanguage {
    if (_value.selectedLanguage == null) {
      return null;
    }

    return $LanguageModelCopyWith<$Res>(_value.selectedLanguage!, (value) {
      return _then(_value.copyWith(selectedLanguage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChangeLanguageStateImplCopyWith<$Res>
    implements $ChangeLanguageStateCopyWith<$Res> {
  factory _$$ChangeLanguageStateImplCopyWith(_$ChangeLanguageStateImpl value,
          $Res Function(_$ChangeLanguageStateImpl) then) =
      __$$ChangeLanguageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LanguageModel? selectedLanguage});

  @override
  $LanguageModelCopyWith<$Res>? get selectedLanguage;
}

/// @nodoc
class __$$ChangeLanguageStateImplCopyWithImpl<$Res>
    extends _$ChangeLanguageStateCopyWithImpl<$Res, _$ChangeLanguageStateImpl>
    implements _$$ChangeLanguageStateImplCopyWith<$Res> {
  __$$ChangeLanguageStateImplCopyWithImpl(_$ChangeLanguageStateImpl _value,
      $Res Function(_$ChangeLanguageStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChangeLanguageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedLanguage = freezed,
  }) {
    return _then(_$ChangeLanguageStateImpl(
      selectedLanguage: freezed == selectedLanguage
          ? _value.selectedLanguage
          : selectedLanguage // ignore: cast_nullable_to_non_nullable
              as LanguageModel?,
    ));
  }
}

/// @nodoc

class _$ChangeLanguageStateImpl implements _ChangeLanguageState {
  const _$ChangeLanguageStateImpl({this.selectedLanguage});

  @override
  final LanguageModel? selectedLanguage;

  @override
  String toString() {
    return 'ChangeLanguageState(selectedLanguage: $selectedLanguage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeLanguageStateImpl &&
            (identical(other.selectedLanguage, selectedLanguage) ||
                other.selectedLanguage == selectedLanguage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedLanguage);

  /// Create a copy of ChangeLanguageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeLanguageStateImplCopyWith<_$ChangeLanguageStateImpl> get copyWith =>
      __$$ChangeLanguageStateImplCopyWithImpl<_$ChangeLanguageStateImpl>(
          this, _$identity);
}

abstract class _ChangeLanguageState implements ChangeLanguageState {
  const factory _ChangeLanguageState({final LanguageModel? selectedLanguage}) =
      _$ChangeLanguageStateImpl;

  @override
  LanguageModel? get selectedLanguage;

  /// Create a copy of ChangeLanguageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeLanguageStateImplCopyWith<_$ChangeLanguageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
