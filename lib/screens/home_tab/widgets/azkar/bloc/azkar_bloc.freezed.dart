// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'azkar_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AzkarEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool status) updateShowingAzkarStatus,
    required TResult Function() resetCounters,
    required TResult Function(int counterIndex) incrementCounter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool status)? updateShowingAzkarStatus,
    TResult? Function()? resetCounters,
    TResult? Function(int counterIndex)? incrementCounter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool status)? updateShowingAzkarStatus,
    TResult Function()? resetCounters,
    TResult Function(int counterIndex)? incrementCounter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateShowingAzkarStatus value)
        updateShowingAzkarStatus,
    required TResult Function(_ResetCounters value) resetCounters,
    required TResult Function(_IncrementCounter value) incrementCounter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateShowingAzkarStatus value)?
        updateShowingAzkarStatus,
    TResult? Function(_ResetCounters value)? resetCounters,
    TResult? Function(_IncrementCounter value)? incrementCounter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateShowingAzkarStatus value)? updateShowingAzkarStatus,
    TResult Function(_ResetCounters value)? resetCounters,
    TResult Function(_IncrementCounter value)? incrementCounter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AzkarEventCopyWith<$Res> {
  factory $AzkarEventCopyWith(
          AzkarEvent value, $Res Function(AzkarEvent) then) =
      _$AzkarEventCopyWithImpl<$Res, AzkarEvent>;
}

/// @nodoc
class _$AzkarEventCopyWithImpl<$Res, $Val extends AzkarEvent>
    implements $AzkarEventCopyWith<$Res> {
  _$AzkarEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AzkarEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UpdateShowingAzkarStatusImplCopyWith<$Res> {
  factory _$$UpdateShowingAzkarStatusImplCopyWith(
          _$UpdateShowingAzkarStatusImpl value,
          $Res Function(_$UpdateShowingAzkarStatusImpl) then) =
      __$$UpdateShowingAzkarStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool status});
}

/// @nodoc
class __$$UpdateShowingAzkarStatusImplCopyWithImpl<$Res>
    extends _$AzkarEventCopyWithImpl<$Res, _$UpdateShowingAzkarStatusImpl>
    implements _$$UpdateShowingAzkarStatusImplCopyWith<$Res> {
  __$$UpdateShowingAzkarStatusImplCopyWithImpl(
      _$UpdateShowingAzkarStatusImpl _value,
      $Res Function(_$UpdateShowingAzkarStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of AzkarEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$UpdateShowingAzkarStatusImpl(
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UpdateShowingAzkarStatusImpl implements _UpdateShowingAzkarStatus {
  _$UpdateShowingAzkarStatusImpl(this.status);

  @override
  final bool status;

  @override
  String toString() {
    return 'AzkarEvent.updateShowingAzkarStatus(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateShowingAzkarStatusImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of AzkarEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateShowingAzkarStatusImplCopyWith<_$UpdateShowingAzkarStatusImpl>
      get copyWith => __$$UpdateShowingAzkarStatusImplCopyWithImpl<
          _$UpdateShowingAzkarStatusImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool status) updateShowingAzkarStatus,
    required TResult Function() resetCounters,
    required TResult Function(int counterIndex) incrementCounter,
  }) {
    return updateShowingAzkarStatus(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool status)? updateShowingAzkarStatus,
    TResult? Function()? resetCounters,
    TResult? Function(int counterIndex)? incrementCounter,
  }) {
    return updateShowingAzkarStatus?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool status)? updateShowingAzkarStatus,
    TResult Function()? resetCounters,
    TResult Function(int counterIndex)? incrementCounter,
    required TResult orElse(),
  }) {
    if (updateShowingAzkarStatus != null) {
      return updateShowingAzkarStatus(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateShowingAzkarStatus value)
        updateShowingAzkarStatus,
    required TResult Function(_ResetCounters value) resetCounters,
    required TResult Function(_IncrementCounter value) incrementCounter,
  }) {
    return updateShowingAzkarStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateShowingAzkarStatus value)?
        updateShowingAzkarStatus,
    TResult? Function(_ResetCounters value)? resetCounters,
    TResult? Function(_IncrementCounter value)? incrementCounter,
  }) {
    return updateShowingAzkarStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateShowingAzkarStatus value)? updateShowingAzkarStatus,
    TResult Function(_ResetCounters value)? resetCounters,
    TResult Function(_IncrementCounter value)? incrementCounter,
    required TResult orElse(),
  }) {
    if (updateShowingAzkarStatus != null) {
      return updateShowingAzkarStatus(this);
    }
    return orElse();
  }
}

abstract class _UpdateShowingAzkarStatus implements AzkarEvent {
  factory _UpdateShowingAzkarStatus(final bool status) =
      _$UpdateShowingAzkarStatusImpl;

  bool get status;

  /// Create a copy of AzkarEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateShowingAzkarStatusImplCopyWith<_$UpdateShowingAzkarStatusImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetCountersImplCopyWith<$Res> {
  factory _$$ResetCountersImplCopyWith(
          _$ResetCountersImpl value, $Res Function(_$ResetCountersImpl) then) =
      __$$ResetCountersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetCountersImplCopyWithImpl<$Res>
    extends _$AzkarEventCopyWithImpl<$Res, _$ResetCountersImpl>
    implements _$$ResetCountersImplCopyWith<$Res> {
  __$$ResetCountersImplCopyWithImpl(
      _$ResetCountersImpl _value, $Res Function(_$ResetCountersImpl) _then)
      : super(_value, _then);

  /// Create a copy of AzkarEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResetCountersImpl implements _ResetCounters {
  const _$ResetCountersImpl();

  @override
  String toString() {
    return 'AzkarEvent.resetCounters()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetCountersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool status) updateShowingAzkarStatus,
    required TResult Function() resetCounters,
    required TResult Function(int counterIndex) incrementCounter,
  }) {
    return resetCounters();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool status)? updateShowingAzkarStatus,
    TResult? Function()? resetCounters,
    TResult? Function(int counterIndex)? incrementCounter,
  }) {
    return resetCounters?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool status)? updateShowingAzkarStatus,
    TResult Function()? resetCounters,
    TResult Function(int counterIndex)? incrementCounter,
    required TResult orElse(),
  }) {
    if (resetCounters != null) {
      return resetCounters();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateShowingAzkarStatus value)
        updateShowingAzkarStatus,
    required TResult Function(_ResetCounters value) resetCounters,
    required TResult Function(_IncrementCounter value) incrementCounter,
  }) {
    return resetCounters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateShowingAzkarStatus value)?
        updateShowingAzkarStatus,
    TResult? Function(_ResetCounters value)? resetCounters,
    TResult? Function(_IncrementCounter value)? incrementCounter,
  }) {
    return resetCounters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateShowingAzkarStatus value)? updateShowingAzkarStatus,
    TResult Function(_ResetCounters value)? resetCounters,
    TResult Function(_IncrementCounter value)? incrementCounter,
    required TResult orElse(),
  }) {
    if (resetCounters != null) {
      return resetCounters(this);
    }
    return orElse();
  }
}

abstract class _ResetCounters implements AzkarEvent {
  const factory _ResetCounters() = _$ResetCountersImpl;
}

/// @nodoc
abstract class _$$IncrementCounterImplCopyWith<$Res> {
  factory _$$IncrementCounterImplCopyWith(_$IncrementCounterImpl value,
          $Res Function(_$IncrementCounterImpl) then) =
      __$$IncrementCounterImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int counterIndex});
}

/// @nodoc
class __$$IncrementCounterImplCopyWithImpl<$Res>
    extends _$AzkarEventCopyWithImpl<$Res, _$IncrementCounterImpl>
    implements _$$IncrementCounterImplCopyWith<$Res> {
  __$$IncrementCounterImplCopyWithImpl(_$IncrementCounterImpl _value,
      $Res Function(_$IncrementCounterImpl) _then)
      : super(_value, _then);

  /// Create a copy of AzkarEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counterIndex = null,
  }) {
    return _then(_$IncrementCounterImpl(
      null == counterIndex
          ? _value.counterIndex
          : counterIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$IncrementCounterImpl implements _IncrementCounter {
  const _$IncrementCounterImpl(this.counterIndex);

  @override
  final int counterIndex;

  @override
  String toString() {
    return 'AzkarEvent.incrementCounter(counterIndex: $counterIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IncrementCounterImpl &&
            (identical(other.counterIndex, counterIndex) ||
                other.counterIndex == counterIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, counterIndex);

  /// Create a copy of AzkarEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IncrementCounterImplCopyWith<_$IncrementCounterImpl> get copyWith =>
      __$$IncrementCounterImplCopyWithImpl<_$IncrementCounterImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool status) updateShowingAzkarStatus,
    required TResult Function() resetCounters,
    required TResult Function(int counterIndex) incrementCounter,
  }) {
    return incrementCounter(counterIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool status)? updateShowingAzkarStatus,
    TResult? Function()? resetCounters,
    TResult? Function(int counterIndex)? incrementCounter,
  }) {
    return incrementCounter?.call(counterIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool status)? updateShowingAzkarStatus,
    TResult Function()? resetCounters,
    TResult Function(int counterIndex)? incrementCounter,
    required TResult orElse(),
  }) {
    if (incrementCounter != null) {
      return incrementCounter(counterIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateShowingAzkarStatus value)
        updateShowingAzkarStatus,
    required TResult Function(_ResetCounters value) resetCounters,
    required TResult Function(_IncrementCounter value) incrementCounter,
  }) {
    return incrementCounter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateShowingAzkarStatus value)?
        updateShowingAzkarStatus,
    TResult? Function(_ResetCounters value)? resetCounters,
    TResult? Function(_IncrementCounter value)? incrementCounter,
  }) {
    return incrementCounter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateShowingAzkarStatus value)? updateShowingAzkarStatus,
    TResult Function(_ResetCounters value)? resetCounters,
    TResult Function(_IncrementCounter value)? incrementCounter,
    required TResult orElse(),
  }) {
    if (incrementCounter != null) {
      return incrementCounter(this);
    }
    return orElse();
  }
}

abstract class _IncrementCounter implements AzkarEvent {
  const factory _IncrementCounter(final int counterIndex) =
      _$IncrementCounterImpl;

  int get counterIndex;

  /// Create a copy of AzkarEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IncrementCounterImplCopyWith<_$IncrementCounterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AzkarState {
  bool get showAzkarView => throw _privateConstructorUsedError;
  AzkarCounters get counters => throw _privateConstructorUsedError;

  /// Create a copy of AzkarState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AzkarStateCopyWith<AzkarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AzkarStateCopyWith<$Res> {
  factory $AzkarStateCopyWith(
          AzkarState value, $Res Function(AzkarState) then) =
      _$AzkarStateCopyWithImpl<$Res, AzkarState>;
  @useResult
  $Res call({bool showAzkarView, AzkarCounters counters});

  $AzkarCountersCopyWith<$Res> get counters;
}

/// @nodoc
class _$AzkarStateCopyWithImpl<$Res, $Val extends AzkarState>
    implements $AzkarStateCopyWith<$Res> {
  _$AzkarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AzkarState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showAzkarView = null,
    Object? counters = null,
  }) {
    return _then(_value.copyWith(
      showAzkarView: null == showAzkarView
          ? _value.showAzkarView
          : showAzkarView // ignore: cast_nullable_to_non_nullable
              as bool,
      counters: null == counters
          ? _value.counters
          : counters // ignore: cast_nullable_to_non_nullable
              as AzkarCounters,
    ) as $Val);
  }

  /// Create a copy of AzkarState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AzkarCountersCopyWith<$Res> get counters {
    return $AzkarCountersCopyWith<$Res>(_value.counters, (value) {
      return _then(_value.copyWith(counters: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AzkarStateImplCopyWith<$Res>
    implements $AzkarStateCopyWith<$Res> {
  factory _$$AzkarStateImplCopyWith(
          _$AzkarStateImpl value, $Res Function(_$AzkarStateImpl) then) =
      __$$AzkarStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool showAzkarView, AzkarCounters counters});

  @override
  $AzkarCountersCopyWith<$Res> get counters;
}

/// @nodoc
class __$$AzkarStateImplCopyWithImpl<$Res>
    extends _$AzkarStateCopyWithImpl<$Res, _$AzkarStateImpl>
    implements _$$AzkarStateImplCopyWith<$Res> {
  __$$AzkarStateImplCopyWithImpl(
      _$AzkarStateImpl _value, $Res Function(_$AzkarStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AzkarState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showAzkarView = null,
    Object? counters = null,
  }) {
    return _then(_$AzkarStateImpl(
      showAzkarView: null == showAzkarView
          ? _value.showAzkarView
          : showAzkarView // ignore: cast_nullable_to_non_nullable
              as bool,
      counters: null == counters
          ? _value.counters
          : counters // ignore: cast_nullable_to_non_nullable
              as AzkarCounters,
    ));
  }
}

/// @nodoc

class _$AzkarStateImpl implements _AzkarState {
  const _$AzkarStateImpl(
      {this.showAzkarView = false, this.counters = const AzkarCounters()});

  @override
  @JsonKey()
  final bool showAzkarView;
  @override
  @JsonKey()
  final AzkarCounters counters;

  @override
  String toString() {
    return 'AzkarState(showAzkarView: $showAzkarView, counters: $counters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AzkarStateImpl &&
            (identical(other.showAzkarView, showAzkarView) ||
                other.showAzkarView == showAzkarView) &&
            (identical(other.counters, counters) ||
                other.counters == counters));
  }

  @override
  int get hashCode => Object.hash(runtimeType, showAzkarView, counters);

  /// Create a copy of AzkarState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AzkarStateImplCopyWith<_$AzkarStateImpl> get copyWith =>
      __$$AzkarStateImplCopyWithImpl<_$AzkarStateImpl>(this, _$identity);
}

abstract class _AzkarState implements AzkarState {
  const factory _AzkarState(
      {final bool showAzkarView,
      final AzkarCounters counters}) = _$AzkarStateImpl;

  @override
  bool get showAzkarView;
  @override
  AzkarCounters get counters;

  /// Create a copy of AzkarState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AzkarStateImplCopyWith<_$AzkarStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AzkarCounters {
  int get counter1 => throw _privateConstructorUsedError;
  int get counter2 => throw _privateConstructorUsedError;
  int get counter3 => throw _privateConstructorUsedError;
  int get counter4 => throw _privateConstructorUsedError;
  int get counter5 => throw _privateConstructorUsedError;
  int get counter6 => throw _privateConstructorUsedError;
  int get counter7 => throw _privateConstructorUsedError;
  int get counter8 => throw _privateConstructorUsedError;
  int get counter9 => throw _privateConstructorUsedError;
  int get counter10 => throw _privateConstructorUsedError;
  int get counter11 => throw _privateConstructorUsedError;

  /// Create a copy of AzkarCounters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AzkarCountersCopyWith<AzkarCounters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AzkarCountersCopyWith<$Res> {
  factory $AzkarCountersCopyWith(
          AzkarCounters value, $Res Function(AzkarCounters) then) =
      _$AzkarCountersCopyWithImpl<$Res, AzkarCounters>;
  @useResult
  $Res call(
      {int counter1,
      int counter2,
      int counter3,
      int counter4,
      int counter5,
      int counter6,
      int counter7,
      int counter8,
      int counter9,
      int counter10,
      int counter11});
}

/// @nodoc
class _$AzkarCountersCopyWithImpl<$Res, $Val extends AzkarCounters>
    implements $AzkarCountersCopyWith<$Res> {
  _$AzkarCountersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AzkarCounters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter1 = null,
    Object? counter2 = null,
    Object? counter3 = null,
    Object? counter4 = null,
    Object? counter5 = null,
    Object? counter6 = null,
    Object? counter7 = null,
    Object? counter8 = null,
    Object? counter9 = null,
    Object? counter10 = null,
    Object? counter11 = null,
  }) {
    return _then(_value.copyWith(
      counter1: null == counter1
          ? _value.counter1
          : counter1 // ignore: cast_nullable_to_non_nullable
              as int,
      counter2: null == counter2
          ? _value.counter2
          : counter2 // ignore: cast_nullable_to_non_nullable
              as int,
      counter3: null == counter3
          ? _value.counter3
          : counter3 // ignore: cast_nullable_to_non_nullable
              as int,
      counter4: null == counter4
          ? _value.counter4
          : counter4 // ignore: cast_nullable_to_non_nullable
              as int,
      counter5: null == counter5
          ? _value.counter5
          : counter5 // ignore: cast_nullable_to_non_nullable
              as int,
      counter6: null == counter6
          ? _value.counter6
          : counter6 // ignore: cast_nullable_to_non_nullable
              as int,
      counter7: null == counter7
          ? _value.counter7
          : counter7 // ignore: cast_nullable_to_non_nullable
              as int,
      counter8: null == counter8
          ? _value.counter8
          : counter8 // ignore: cast_nullable_to_non_nullable
              as int,
      counter9: null == counter9
          ? _value.counter9
          : counter9 // ignore: cast_nullable_to_non_nullable
              as int,
      counter10: null == counter10
          ? _value.counter10
          : counter10 // ignore: cast_nullable_to_non_nullable
              as int,
      counter11: null == counter11
          ? _value.counter11
          : counter11 // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AzkarCountersImplCopyWith<$Res>
    implements $AzkarCountersCopyWith<$Res> {
  factory _$$AzkarCountersImplCopyWith(
          _$AzkarCountersImpl value, $Res Function(_$AzkarCountersImpl) then) =
      __$$AzkarCountersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int counter1,
      int counter2,
      int counter3,
      int counter4,
      int counter5,
      int counter6,
      int counter7,
      int counter8,
      int counter9,
      int counter10,
      int counter11});
}

/// @nodoc
class __$$AzkarCountersImplCopyWithImpl<$Res>
    extends _$AzkarCountersCopyWithImpl<$Res, _$AzkarCountersImpl>
    implements _$$AzkarCountersImplCopyWith<$Res> {
  __$$AzkarCountersImplCopyWithImpl(
      _$AzkarCountersImpl _value, $Res Function(_$AzkarCountersImpl) _then)
      : super(_value, _then);

  /// Create a copy of AzkarCounters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter1 = null,
    Object? counter2 = null,
    Object? counter3 = null,
    Object? counter4 = null,
    Object? counter5 = null,
    Object? counter6 = null,
    Object? counter7 = null,
    Object? counter8 = null,
    Object? counter9 = null,
    Object? counter10 = null,
    Object? counter11 = null,
  }) {
    return _then(_$AzkarCountersImpl(
      counter1: null == counter1
          ? _value.counter1
          : counter1 // ignore: cast_nullable_to_non_nullable
              as int,
      counter2: null == counter2
          ? _value.counter2
          : counter2 // ignore: cast_nullable_to_non_nullable
              as int,
      counter3: null == counter3
          ? _value.counter3
          : counter3 // ignore: cast_nullable_to_non_nullable
              as int,
      counter4: null == counter4
          ? _value.counter4
          : counter4 // ignore: cast_nullable_to_non_nullable
              as int,
      counter5: null == counter5
          ? _value.counter5
          : counter5 // ignore: cast_nullable_to_non_nullable
              as int,
      counter6: null == counter6
          ? _value.counter6
          : counter6 // ignore: cast_nullable_to_non_nullable
              as int,
      counter7: null == counter7
          ? _value.counter7
          : counter7 // ignore: cast_nullable_to_non_nullable
              as int,
      counter8: null == counter8
          ? _value.counter8
          : counter8 // ignore: cast_nullable_to_non_nullable
              as int,
      counter9: null == counter9
          ? _value.counter9
          : counter9 // ignore: cast_nullable_to_non_nullable
              as int,
      counter10: null == counter10
          ? _value.counter10
          : counter10 // ignore: cast_nullable_to_non_nullable
              as int,
      counter11: null == counter11
          ? _value.counter11
          : counter11 // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AzkarCountersImpl implements _AzkarCounters {
  const _$AzkarCountersImpl(
      {this.counter1 = 0,
      this.counter2 = 0,
      this.counter3 = 0,
      this.counter4 = 0,
      this.counter5 = 0,
      this.counter6 = 0,
      this.counter7 = 0,
      this.counter8 = 0,
      this.counter9 = 0,
      this.counter10 = 0,
      this.counter11 = 0});

  @override
  @JsonKey()
  final int counter1;
  @override
  @JsonKey()
  final int counter2;
  @override
  @JsonKey()
  final int counter3;
  @override
  @JsonKey()
  final int counter4;
  @override
  @JsonKey()
  final int counter5;
  @override
  @JsonKey()
  final int counter6;
  @override
  @JsonKey()
  final int counter7;
  @override
  @JsonKey()
  final int counter8;
  @override
  @JsonKey()
  final int counter9;
  @override
  @JsonKey()
  final int counter10;
  @override
  @JsonKey()
  final int counter11;

  @override
  String toString() {
    return 'AzkarCounters(counter1: $counter1, counter2: $counter2, counter3: $counter3, counter4: $counter4, counter5: $counter5, counter6: $counter6, counter7: $counter7, counter8: $counter8, counter9: $counter9, counter10: $counter10, counter11: $counter11)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AzkarCountersImpl &&
            (identical(other.counter1, counter1) ||
                other.counter1 == counter1) &&
            (identical(other.counter2, counter2) ||
                other.counter2 == counter2) &&
            (identical(other.counter3, counter3) ||
                other.counter3 == counter3) &&
            (identical(other.counter4, counter4) ||
                other.counter4 == counter4) &&
            (identical(other.counter5, counter5) ||
                other.counter5 == counter5) &&
            (identical(other.counter6, counter6) ||
                other.counter6 == counter6) &&
            (identical(other.counter7, counter7) ||
                other.counter7 == counter7) &&
            (identical(other.counter8, counter8) ||
                other.counter8 == counter8) &&
            (identical(other.counter9, counter9) ||
                other.counter9 == counter9) &&
            (identical(other.counter10, counter10) ||
                other.counter10 == counter10) &&
            (identical(other.counter11, counter11) ||
                other.counter11 == counter11));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      counter1,
      counter2,
      counter3,
      counter4,
      counter5,
      counter6,
      counter7,
      counter8,
      counter9,
      counter10,
      counter11);

  /// Create a copy of AzkarCounters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AzkarCountersImplCopyWith<_$AzkarCountersImpl> get copyWith =>
      __$$AzkarCountersImplCopyWithImpl<_$AzkarCountersImpl>(this, _$identity);
}

abstract class _AzkarCounters implements AzkarCounters {
  const factory _AzkarCounters(
      {final int counter1,
      final int counter2,
      final int counter3,
      final int counter4,
      final int counter5,
      final int counter6,
      final int counter7,
      final int counter8,
      final int counter9,
      final int counter10,
      final int counter11}) = _$AzkarCountersImpl;

  @override
  int get counter1;
  @override
  int get counter2;
  @override
  int get counter3;
  @override
  int get counter4;
  @override
  int get counter5;
  @override
  int get counter6;
  @override
  int get counter7;
  @override
  int get counter8;
  @override
  int get counter9;
  @override
  int get counter10;
  @override
  int get counter11;

  /// Create a copy of AzkarCounters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AzkarCountersImplCopyWith<_$AzkarCountersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
