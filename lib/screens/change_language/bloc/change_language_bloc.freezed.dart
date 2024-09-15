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
  LanguageModel get type => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LanguageModel type) changeSelectedLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LanguageModel type)? changeSelectedLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LanguageModel type)? changeSelectedLanguage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeSelectedLanguage value)
        changeSelectedLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeSelectedLanguage value)? changeSelectedLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeSelectedLanguage value)? changeSelectedLanguage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ChangeLanguageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChangeLanguageEventCopyWith<ChangeLanguageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeLanguageEventCopyWith<$Res> {
  factory $ChangeLanguageEventCopyWith(
          ChangeLanguageEvent value, $Res Function(ChangeLanguageEvent) then) =
      _$ChangeLanguageEventCopyWithImpl<$Res, ChangeLanguageEvent>;
  @useResult
  $Res call({LanguageModel type});
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
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as LanguageModel,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangeSelectedLanguageImplCopyWith<$Res>
    implements $ChangeLanguageEventCopyWith<$Res> {
  factory _$$ChangeSelectedLanguageImplCopyWith(
          _$ChangeSelectedLanguageImpl value,
          $Res Function(_$ChangeSelectedLanguageImpl) then) =
      __$$ChangeSelectedLanguageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LanguageModel type});
}

/// @nodoc
class __$$ChangeSelectedLanguageImplCopyWithImpl<$Res>
    extends _$ChangeLanguageEventCopyWithImpl<$Res,
        _$ChangeSelectedLanguageImpl>
    implements _$$ChangeSelectedLanguageImplCopyWith<$Res> {
  __$$ChangeSelectedLanguageImplCopyWithImpl(
      _$ChangeSelectedLanguageImpl _value,
      $Res Function(_$ChangeSelectedLanguageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChangeLanguageEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$ChangeSelectedLanguageImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as LanguageModel,
    ));
  }
}

/// @nodoc

class _$ChangeSelectedLanguageImpl implements _ChangeSelectedLanguage {
  const _$ChangeSelectedLanguageImpl({required this.type});

  @override
  final LanguageModel type;

  @override
  String toString() {
    return 'ChangeLanguageEvent.changeSelectedLanguage(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeSelectedLanguageImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  /// Create a copy of ChangeLanguageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeSelectedLanguageImplCopyWith<_$ChangeSelectedLanguageImpl>
      get copyWith => __$$ChangeSelectedLanguageImplCopyWithImpl<
          _$ChangeSelectedLanguageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LanguageModel type) changeSelectedLanguage,
  }) {
    return changeSelectedLanguage(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LanguageModel type)? changeSelectedLanguage,
  }) {
    return changeSelectedLanguage?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LanguageModel type)? changeSelectedLanguage,
    required TResult orElse(),
  }) {
    if (changeSelectedLanguage != null) {
      return changeSelectedLanguage(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeSelectedLanguage value)
        changeSelectedLanguage,
  }) {
    return changeSelectedLanguage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeSelectedLanguage value)? changeSelectedLanguage,
  }) {
    return changeSelectedLanguage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeSelectedLanguage value)? changeSelectedLanguage,
    required TResult orElse(),
  }) {
    if (changeSelectedLanguage != null) {
      return changeSelectedLanguage(this);
    }
    return orElse();
  }
}

abstract class _ChangeSelectedLanguage implements ChangeLanguageEvent {
  const factory _ChangeSelectedLanguage({required final LanguageModel type}) =
      _$ChangeSelectedLanguageImpl;

  @override
  LanguageModel get type;

  /// Create a copy of ChangeLanguageEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeSelectedLanguageImplCopyWith<_$ChangeSelectedLanguageImpl>
      get copyWith => throw _privateConstructorUsedError;
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
