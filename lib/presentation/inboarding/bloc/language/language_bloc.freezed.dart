// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'language_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LanguageEvent {
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

  /// Create a copy of LanguageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LanguageEventCopyWith<LanguageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageEventCopyWith<$Res> {
  factory $LanguageEventCopyWith(
          LanguageEvent value, $Res Function(LanguageEvent) then) =
      _$LanguageEventCopyWithImpl<$Res, LanguageEvent>;
  @useResult
  $Res call({LanguageModel type});
}

/// @nodoc
class _$LanguageEventCopyWithImpl<$Res, $Val extends LanguageEvent>
    implements $LanguageEventCopyWith<$Res> {
  _$LanguageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LanguageEvent
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
    implements $LanguageEventCopyWith<$Res> {
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
    extends _$LanguageEventCopyWithImpl<$Res, _$ChangeSelectedLanguageImpl>
    implements _$$ChangeSelectedLanguageImplCopyWith<$Res> {
  __$$ChangeSelectedLanguageImplCopyWithImpl(
      _$ChangeSelectedLanguageImpl _value,
      $Res Function(_$ChangeSelectedLanguageImpl) _then)
      : super(_value, _then);

  /// Create a copy of LanguageEvent
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
    return 'LanguageEvent.changeSelectedLanguage(type: $type)';
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

  /// Create a copy of LanguageEvent
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

abstract class _ChangeSelectedLanguage implements LanguageEvent {
  const factory _ChangeSelectedLanguage({required final LanguageModel type}) =
      _$ChangeSelectedLanguageImpl;

  @override
  LanguageModel get type;

  /// Create a copy of LanguageEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeSelectedLanguageImplCopyWith<_$ChangeSelectedLanguageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LanguageState {
  LanguageModel? get selectedLanguage => throw _privateConstructorUsedError;

  /// Create a copy of LanguageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LanguageStateCopyWith<LanguageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageStateCopyWith<$Res> {
  factory $LanguageStateCopyWith(
          LanguageState value, $Res Function(LanguageState) then) =
      _$LanguageStateCopyWithImpl<$Res, LanguageState>;
  @useResult
  $Res call({LanguageModel? selectedLanguage});
}

/// @nodoc
class _$LanguageStateCopyWithImpl<$Res, $Val extends LanguageState>
    implements $LanguageStateCopyWith<$Res> {
  _$LanguageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LanguageState
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
abstract class _$$LanguageStateImplCopyWith<$Res>
    implements $LanguageStateCopyWith<$Res> {
  factory _$$LanguageStateImplCopyWith(
          _$LanguageStateImpl value, $Res Function(_$LanguageStateImpl) then) =
      __$$LanguageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LanguageModel? selectedLanguage});
}

/// @nodoc
class __$$LanguageStateImplCopyWithImpl<$Res>
    extends _$LanguageStateCopyWithImpl<$Res, _$LanguageStateImpl>
    implements _$$LanguageStateImplCopyWith<$Res> {
  __$$LanguageStateImplCopyWithImpl(
      _$LanguageStateImpl _value, $Res Function(_$LanguageStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LanguageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedLanguage = freezed,
  }) {
    return _then(_$LanguageStateImpl(
      selectedLanguage: freezed == selectedLanguage
          ? _value.selectedLanguage
          : selectedLanguage // ignore: cast_nullable_to_non_nullable
              as LanguageModel?,
    ));
  }
}

/// @nodoc

class _$LanguageStateImpl implements _LanguageState {
  const _$LanguageStateImpl({this.selectedLanguage});

  @override
  final LanguageModel? selectedLanguage;

  @override
  String toString() {
    return 'LanguageState(selectedLanguage: $selectedLanguage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LanguageStateImpl &&
            (identical(other.selectedLanguage, selectedLanguage) ||
                other.selectedLanguage == selectedLanguage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedLanguage);

  /// Create a copy of LanguageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LanguageStateImplCopyWith<_$LanguageStateImpl> get copyWith =>
      __$$LanguageStateImplCopyWithImpl<_$LanguageStateImpl>(this, _$identity);
}

abstract class _LanguageState implements LanguageState {
  const factory _LanguageState({final LanguageModel? selectedLanguage}) =
      _$LanguageStateImpl;

  @override
  LanguageModel? get selectedLanguage;

  /// Create a copy of LanguageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LanguageStateImplCopyWith<_$LanguageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
