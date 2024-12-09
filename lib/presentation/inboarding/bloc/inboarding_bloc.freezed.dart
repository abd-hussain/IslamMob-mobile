// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inboarding_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InboardingEvent {
  int get stage => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int stage) changeInBoardingStage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int stage)? changeInBoardingStage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int stage)? changeInBoardingStage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeInBoardingStage value)
        changeInBoardingStage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeInBoardingStage value)? changeInBoardingStage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeInBoardingStage value)? changeInBoardingStage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of InboardingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InboardingEventCopyWith<InboardingEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InboardingEventCopyWith<$Res> {
  factory $InboardingEventCopyWith(
          InboardingEvent value, $Res Function(InboardingEvent) then) =
      _$InboardingEventCopyWithImpl<$Res, InboardingEvent>;
  @useResult
  $Res call({int stage});
}

/// @nodoc
class _$InboardingEventCopyWithImpl<$Res, $Val extends InboardingEvent>
    implements $InboardingEventCopyWith<$Res> {
  _$InboardingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InboardingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stage = null,
  }) {
    return _then(_value.copyWith(
      stage: null == stage
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangeInBoardingStageImplCopyWith<$Res>
    implements $InboardingEventCopyWith<$Res> {
  factory _$$ChangeInBoardingStageImplCopyWith(
          _$ChangeInBoardingStageImpl value,
          $Res Function(_$ChangeInBoardingStageImpl) then) =
      __$$ChangeInBoardingStageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int stage});
}

/// @nodoc
class __$$ChangeInBoardingStageImplCopyWithImpl<$Res>
    extends _$InboardingEventCopyWithImpl<$Res, _$ChangeInBoardingStageImpl>
    implements _$$ChangeInBoardingStageImplCopyWith<$Res> {
  __$$ChangeInBoardingStageImplCopyWithImpl(_$ChangeInBoardingStageImpl _value,
      $Res Function(_$ChangeInBoardingStageImpl) _then)
      : super(_value, _then);

  /// Create a copy of InboardingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stage = null,
  }) {
    return _then(_$ChangeInBoardingStageImpl(
      stage: null == stage
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeInBoardingStageImpl implements _ChangeInBoardingStage {
  const _$ChangeInBoardingStageImpl({required this.stage});

  @override
  final int stage;

  @override
  String toString() {
    return 'InboardingEvent.changeInBoardingStage(stage: $stage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeInBoardingStageImpl &&
            (identical(other.stage, stage) || other.stage == stage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stage);

  /// Create a copy of InboardingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeInBoardingStageImplCopyWith<_$ChangeInBoardingStageImpl>
      get copyWith => __$$ChangeInBoardingStageImplCopyWithImpl<
          _$ChangeInBoardingStageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int stage) changeInBoardingStage,
  }) {
    return changeInBoardingStage(stage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int stage)? changeInBoardingStage,
  }) {
    return changeInBoardingStage?.call(stage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int stage)? changeInBoardingStage,
    required TResult orElse(),
  }) {
    if (changeInBoardingStage != null) {
      return changeInBoardingStage(stage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeInBoardingStage value)
        changeInBoardingStage,
  }) {
    return changeInBoardingStage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeInBoardingStage value)? changeInBoardingStage,
  }) {
    return changeInBoardingStage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeInBoardingStage value)? changeInBoardingStage,
    required TResult orElse(),
  }) {
    if (changeInBoardingStage != null) {
      return changeInBoardingStage(this);
    }
    return orElse();
  }
}

abstract class _ChangeInBoardingStage implements InboardingEvent {
  const factory _ChangeInBoardingStage({required final int stage}) =
      _$ChangeInBoardingStageImpl;

  @override
  int get stage;

  /// Create a copy of InboardingEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeInBoardingStageImplCopyWith<_$ChangeInBoardingStageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$InboardingState {
  int get inBoardingStage => throw _privateConstructorUsedError;

  /// Create a copy of InboardingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InboardingStateCopyWith<InboardingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InboardingStateCopyWith<$Res> {
  factory $InboardingStateCopyWith(
          InboardingState value, $Res Function(InboardingState) then) =
      _$InboardingStateCopyWithImpl<$Res, InboardingState>;
  @useResult
  $Res call({int inBoardingStage});
}

/// @nodoc
class _$InboardingStateCopyWithImpl<$Res, $Val extends InboardingState>
    implements $InboardingStateCopyWith<$Res> {
  _$InboardingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InboardingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inBoardingStage = null,
  }) {
    return _then(_value.copyWith(
      inBoardingStage: null == inBoardingStage
          ? _value.inBoardingStage
          : inBoardingStage // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InboardingStateImplCopyWith<$Res>
    implements $InboardingStateCopyWith<$Res> {
  factory _$$InboardingStateImplCopyWith(_$InboardingStateImpl value,
          $Res Function(_$InboardingStateImpl) then) =
      __$$InboardingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int inBoardingStage});
}

/// @nodoc
class __$$InboardingStateImplCopyWithImpl<$Res>
    extends _$InboardingStateCopyWithImpl<$Res, _$InboardingStateImpl>
    implements _$$InboardingStateImplCopyWith<$Res> {
  __$$InboardingStateImplCopyWithImpl(
      _$InboardingStateImpl _value, $Res Function(_$InboardingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of InboardingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inBoardingStage = null,
  }) {
    return _then(_$InboardingStateImpl(
      inBoardingStage: null == inBoardingStage
          ? _value.inBoardingStage
          : inBoardingStage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$InboardingStateImpl implements _InboardingState {
  const _$InboardingStateImpl({this.inBoardingStage = 10});

  @override
  @JsonKey()
  final int inBoardingStage;

  @override
  String toString() {
    return 'InboardingState(inBoardingStage: $inBoardingStage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InboardingStateImpl &&
            (identical(other.inBoardingStage, inBoardingStage) ||
                other.inBoardingStage == inBoardingStage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, inBoardingStage);

  /// Create a copy of InboardingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InboardingStateImplCopyWith<_$InboardingStateImpl> get copyWith =>
      __$$InboardingStateImplCopyWithImpl<_$InboardingStateImpl>(
          this, _$identity);
}

abstract class _InboardingState implements InboardingState {
  const factory _InboardingState({final int inBoardingStage}) =
      _$InboardingStateImpl;

  @override
  int get inBoardingStage;

  /// Create a copy of InboardingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InboardingStateImplCopyWith<_$InboardingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
