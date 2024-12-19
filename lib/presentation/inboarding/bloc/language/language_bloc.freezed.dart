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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LanguageModel type) changeSelectedLanguage,
    required TResult Function(BuildContext context) setupLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LanguageModel type)? changeSelectedLanguage,
    TResult? Function(BuildContext context)? setupLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LanguageModel type)? changeSelectedLanguage,
    TResult Function(BuildContext context)? setupLanguage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeSelectedLanguage value)
        changeSelectedLanguage,
    required TResult Function(_SetupLanguage value) setupLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeSelectedLanguage value)? changeSelectedLanguage,
    TResult? Function(_SetupLanguage value)? setupLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeSelectedLanguage value)? changeSelectedLanguage,
    TResult Function(_SetupLanguage value)? setupLanguage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageEventCopyWith<$Res> {
  factory $LanguageEventCopyWith(
          LanguageEvent value, $Res Function(LanguageEvent) then) =
      _$LanguageEventCopyWithImpl<$Res, LanguageEvent>;
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
}

/// @nodoc
abstract class _$$ChangeSelectedLanguageImplCopyWith<$Res> {
  factory _$$ChangeSelectedLanguageImplCopyWith(
          _$ChangeSelectedLanguageImpl value,
          $Res Function(_$ChangeSelectedLanguageImpl) then) =
      __$$ChangeSelectedLanguageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LanguageModel type});

  $LanguageModelCopyWith<$Res> get type;
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

  /// Create a copy of LanguageEvent
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
    required TResult Function(BuildContext context) setupLanguage,
  }) {
    return changeSelectedLanguage(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LanguageModel type)? changeSelectedLanguage,
    TResult? Function(BuildContext context)? setupLanguage,
  }) {
    return changeSelectedLanguage?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LanguageModel type)? changeSelectedLanguage,
    TResult Function(BuildContext context)? setupLanguage,
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
    required TResult Function(_SetupLanguage value) setupLanguage,
  }) {
    return changeSelectedLanguage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeSelectedLanguage value)? changeSelectedLanguage,
    TResult? Function(_SetupLanguage value)? setupLanguage,
  }) {
    return changeSelectedLanguage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeSelectedLanguage value)? changeSelectedLanguage,
    TResult Function(_SetupLanguage value)? setupLanguage,
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

  LanguageModel get type;

  /// Create a copy of LanguageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeSelectedLanguageImplCopyWith<_$ChangeSelectedLanguageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetupLanguageImplCopyWith<$Res> {
  factory _$$SetupLanguageImplCopyWith(
          _$SetupLanguageImpl value, $Res Function(_$SetupLanguageImpl) then) =
      __$$SetupLanguageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$SetupLanguageImplCopyWithImpl<$Res>
    extends _$LanguageEventCopyWithImpl<$Res, _$SetupLanguageImpl>
    implements _$$SetupLanguageImplCopyWith<$Res> {
  __$$SetupLanguageImplCopyWithImpl(
      _$SetupLanguageImpl _value, $Res Function(_$SetupLanguageImpl) _then)
      : super(_value, _then);

  /// Create a copy of LanguageEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$SetupLanguageImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$SetupLanguageImpl implements _SetupLanguage {
  const _$SetupLanguageImpl({required this.context});

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'LanguageEvent.setupLanguage(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetupLanguageImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  /// Create a copy of LanguageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetupLanguageImplCopyWith<_$SetupLanguageImpl> get copyWith =>
      __$$SetupLanguageImplCopyWithImpl<_$SetupLanguageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LanguageModel type) changeSelectedLanguage,
    required TResult Function(BuildContext context) setupLanguage,
  }) {
    return setupLanguage(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LanguageModel type)? changeSelectedLanguage,
    TResult? Function(BuildContext context)? setupLanguage,
  }) {
    return setupLanguage?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LanguageModel type)? changeSelectedLanguage,
    TResult Function(BuildContext context)? setupLanguage,
    required TResult orElse(),
  }) {
    if (setupLanguage != null) {
      return setupLanguage(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeSelectedLanguage value)
        changeSelectedLanguage,
    required TResult Function(_SetupLanguage value) setupLanguage,
  }) {
    return setupLanguage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeSelectedLanguage value)? changeSelectedLanguage,
    TResult? Function(_SetupLanguage value)? setupLanguage,
  }) {
    return setupLanguage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeSelectedLanguage value)? changeSelectedLanguage,
    TResult Function(_SetupLanguage value)? setupLanguage,
    required TResult orElse(),
  }) {
    if (setupLanguage != null) {
      return setupLanguage(this);
    }
    return orElse();
  }
}

abstract class _SetupLanguage implements LanguageEvent {
  const factory _SetupLanguage({required final BuildContext context}) =
      _$SetupLanguageImpl;

  BuildContext get context;

  /// Create a copy of LanguageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetupLanguageImplCopyWith<_$SetupLanguageImpl> get copyWith =>
      throw _privateConstructorUsedError;
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

  $LanguageModelCopyWith<$Res>? get selectedLanguage;
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

  /// Create a copy of LanguageState
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
abstract class _$$LanguageStateImplCopyWith<$Res>
    implements $LanguageStateCopyWith<$Res> {
  factory _$$LanguageStateImplCopyWith(
          _$LanguageStateImpl value, $Res Function(_$LanguageStateImpl) then) =
      __$$LanguageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LanguageModel? selectedLanguage});

  @override
  $LanguageModelCopyWith<$Res>? get selectedLanguage;
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
