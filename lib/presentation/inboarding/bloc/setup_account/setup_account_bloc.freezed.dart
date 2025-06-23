// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'setup_account_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SetupAccountEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() setup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? setup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? setup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Setup value) setup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Setup value)? setup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Setup value)? setup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetupAccountEventCopyWith<$Res> {
  factory $SetupAccountEventCopyWith(
          SetupAccountEvent value, $Res Function(SetupAccountEvent) then) =
      _$SetupAccountEventCopyWithImpl<$Res, SetupAccountEvent>;
}

/// @nodoc
class _$SetupAccountEventCopyWithImpl<$Res, $Val extends SetupAccountEvent>
    implements $SetupAccountEventCopyWith<$Res> {
  _$SetupAccountEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SetupAccountEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SetupImplCopyWith<$Res> {
  factory _$$SetupImplCopyWith(
          _$SetupImpl value, $Res Function(_$SetupImpl) then) =
      __$$SetupImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SetupImplCopyWithImpl<$Res>
    extends _$SetupAccountEventCopyWithImpl<$Res, _$SetupImpl>
    implements _$$SetupImplCopyWith<$Res> {
  __$$SetupImplCopyWithImpl(
      _$SetupImpl _value, $Res Function(_$SetupImpl) _then)
      : super(_value, _then);

  /// Create a copy of SetupAccountEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SetupImpl implements _Setup {
  const _$SetupImpl();

  @override
  String toString() {
    return 'SetupAccountEvent.setup()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SetupImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() setup,
  }) {
    return setup();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? setup,
  }) {
    return setup?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? setup,
    required TResult orElse(),
  }) {
    if (setup != null) {
      return setup();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Setup value) setup,
  }) {
    return setup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Setup value)? setup,
  }) {
    return setup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Setup value)? setup,
    required TResult orElse(),
  }) {
    if (setup != null) {
      return setup(this);
    }
    return orElse();
  }
}

abstract class _Setup implements SetupAccountEvent {
  const factory _Setup() = _$SetupImpl;
}

/// @nodoc
mixin _$SetupAccountState {
  bool get isLoading => throw _privateConstructorUsedError;

  /// Create a copy of SetupAccountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SetupAccountStateCopyWith<SetupAccountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetupAccountStateCopyWith<$Res> {
  factory $SetupAccountStateCopyWith(
          SetupAccountState value, $Res Function(SetupAccountState) then) =
      _$SetupAccountStateCopyWithImpl<$Res, SetupAccountState>;
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class _$SetupAccountStateCopyWithImpl<$Res, $Val extends SetupAccountState>
    implements $SetupAccountStateCopyWith<$Res> {
  _$SetupAccountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SetupAccountState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SetupAccountStateImplCopyWith<$Res>
    implements $SetupAccountStateCopyWith<$Res> {
  factory _$$SetupAccountStateImplCopyWith(_$SetupAccountStateImpl value,
          $Res Function(_$SetupAccountStateImpl) then) =
      __$$SetupAccountStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$SetupAccountStateImplCopyWithImpl<$Res>
    extends _$SetupAccountStateCopyWithImpl<$Res, _$SetupAccountStateImpl>
    implements _$$SetupAccountStateImplCopyWith<$Res> {
  __$$SetupAccountStateImplCopyWithImpl(_$SetupAccountStateImpl _value,
      $Res Function(_$SetupAccountStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SetupAccountState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_$SetupAccountStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SetupAccountStateImpl implements _SetupAccountState {
  const _$SetupAccountStateImpl({this.isLoading = true});

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'SetupAccountState(isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetupAccountStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading);

  /// Create a copy of SetupAccountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetupAccountStateImplCopyWith<_$SetupAccountStateImpl> get copyWith =>
      __$$SetupAccountStateImplCopyWithImpl<_$SetupAccountStateImpl>(
          this, _$identity);
}

abstract class _SetupAccountState implements SetupAccountState {
  const factory _SetupAccountState({final bool isLoading}) =
      _$SetupAccountStateImpl;

  @override
  bool get isLoading;

  /// Create a copy of SetupAccountState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetupAccountStateImplCopyWith<_$SetupAccountStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
