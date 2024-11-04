// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'about_us_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AboutUsEvent {
  RewardedAd? get value => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RewardedAd? value) updateRewardedAd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RewardedAd? value)? updateRewardedAd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RewardedAd? value)? updateRewardedAd,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateRewardedAd value) updateRewardedAd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateRewardedAd value)? updateRewardedAd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateRewardedAd value)? updateRewardedAd,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of AboutUsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AboutUsEventCopyWith<AboutUsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AboutUsEventCopyWith<$Res> {
  factory $AboutUsEventCopyWith(
          AboutUsEvent value, $Res Function(AboutUsEvent) then) =
      _$AboutUsEventCopyWithImpl<$Res, AboutUsEvent>;
  @useResult
  $Res call({RewardedAd? value});
}

/// @nodoc
class _$AboutUsEventCopyWithImpl<$Res, $Val extends AboutUsEvent>
    implements $AboutUsEventCopyWith<$Res> {
  _$AboutUsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AboutUsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as RewardedAd?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateRewardedAdImplCopyWith<$Res>
    implements $AboutUsEventCopyWith<$Res> {
  factory _$$UpdateRewardedAdImplCopyWith(_$UpdateRewardedAdImpl value,
          $Res Function(_$UpdateRewardedAdImpl) then) =
      __$$UpdateRewardedAdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RewardedAd? value});
}

/// @nodoc
class __$$UpdateRewardedAdImplCopyWithImpl<$Res>
    extends _$AboutUsEventCopyWithImpl<$Res, _$UpdateRewardedAdImpl>
    implements _$$UpdateRewardedAdImplCopyWith<$Res> {
  __$$UpdateRewardedAdImplCopyWithImpl(_$UpdateRewardedAdImpl _value,
      $Res Function(_$UpdateRewardedAdImpl) _then)
      : super(_value, _then);

  /// Create a copy of AboutUsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$UpdateRewardedAdImpl(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as RewardedAd?,
    ));
  }
}

/// @nodoc

class _$UpdateRewardedAdImpl implements _UpdateRewardedAd {
  _$UpdateRewardedAdImpl(this.value);

  @override
  final RewardedAd? value;

  @override
  String toString() {
    return 'AboutUsEvent.updateRewardedAd(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateRewardedAdImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of AboutUsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateRewardedAdImplCopyWith<_$UpdateRewardedAdImpl> get copyWith =>
      __$$UpdateRewardedAdImplCopyWithImpl<_$UpdateRewardedAdImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RewardedAd? value) updateRewardedAd,
  }) {
    return updateRewardedAd(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RewardedAd? value)? updateRewardedAd,
  }) {
    return updateRewardedAd?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RewardedAd? value)? updateRewardedAd,
    required TResult orElse(),
  }) {
    if (updateRewardedAd != null) {
      return updateRewardedAd(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateRewardedAd value) updateRewardedAd,
  }) {
    return updateRewardedAd(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateRewardedAd value)? updateRewardedAd,
  }) {
    return updateRewardedAd?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateRewardedAd value)? updateRewardedAd,
    required TResult orElse(),
  }) {
    if (updateRewardedAd != null) {
      return updateRewardedAd(this);
    }
    return orElse();
  }
}

abstract class _UpdateRewardedAd implements AboutUsEvent {
  factory _UpdateRewardedAd(final RewardedAd? value) = _$UpdateRewardedAdImpl;

  @override
  RewardedAd? get value;

  /// Create a copy of AboutUsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateRewardedAdImplCopyWith<_$UpdateRewardedAdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AboutUsState {
  RewardedAd? get rewardedAd => throw _privateConstructorUsedError;

  /// Create a copy of AboutUsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AboutUsStateCopyWith<AboutUsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AboutUsStateCopyWith<$Res> {
  factory $AboutUsStateCopyWith(
          AboutUsState value, $Res Function(AboutUsState) then) =
      _$AboutUsStateCopyWithImpl<$Res, AboutUsState>;
  @useResult
  $Res call({RewardedAd? rewardedAd});
}

/// @nodoc
class _$AboutUsStateCopyWithImpl<$Res, $Val extends AboutUsState>
    implements $AboutUsStateCopyWith<$Res> {
  _$AboutUsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AboutUsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rewardedAd = freezed,
  }) {
    return _then(_value.copyWith(
      rewardedAd: freezed == rewardedAd
          ? _value.rewardedAd
          : rewardedAd // ignore: cast_nullable_to_non_nullable
              as RewardedAd?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AboutUsStateImplCopyWith<$Res>
    implements $AboutUsStateCopyWith<$Res> {
  factory _$$AboutUsStateImplCopyWith(
          _$AboutUsStateImpl value, $Res Function(_$AboutUsStateImpl) then) =
      __$$AboutUsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RewardedAd? rewardedAd});
}

/// @nodoc
class __$$AboutUsStateImplCopyWithImpl<$Res>
    extends _$AboutUsStateCopyWithImpl<$Res, _$AboutUsStateImpl>
    implements _$$AboutUsStateImplCopyWith<$Res> {
  __$$AboutUsStateImplCopyWithImpl(
      _$AboutUsStateImpl _value, $Res Function(_$AboutUsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AboutUsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rewardedAd = freezed,
  }) {
    return _then(_$AboutUsStateImpl(
      rewardedAd: freezed == rewardedAd
          ? _value.rewardedAd
          : rewardedAd // ignore: cast_nullable_to_non_nullable
              as RewardedAd?,
    ));
  }
}

/// @nodoc

class _$AboutUsStateImpl implements _AboutUsState {
  const _$AboutUsStateImpl({this.rewardedAd});

  @override
  final RewardedAd? rewardedAd;

  @override
  String toString() {
    return 'AboutUsState(rewardedAd: $rewardedAd)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AboutUsStateImpl &&
            (identical(other.rewardedAd, rewardedAd) ||
                other.rewardedAd == rewardedAd));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rewardedAd);

  /// Create a copy of AboutUsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AboutUsStateImplCopyWith<_$AboutUsStateImpl> get copyWith =>
      __$$AboutUsStateImplCopyWithImpl<_$AboutUsStateImpl>(this, _$identity);
}

abstract class _AboutUsState implements AboutUsState {
  const factory _AboutUsState({final RewardedAd? rewardedAd}) =
      _$AboutUsStateImpl;

  @override
  RewardedAd? get rewardedAd;

  /// Create a copy of AboutUsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AboutUsStateImplCopyWith<_$AboutUsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
