// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'azkar_after_salah_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AzkarAfterSalahEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AzkarSalahTimeState state) initializeAzkar,
    required TResult Function() resetCounters,
    required TResult Function(AzkarModel zeker) incrementCounter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AzkarSalahTimeState state)? initializeAzkar,
    TResult? Function()? resetCounters,
    TResult? Function(AzkarModel zeker)? incrementCounter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AzkarSalahTimeState state)? initializeAzkar,
    TResult Function()? resetCounters,
    TResult Function(AzkarModel zeker)? incrementCounter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeAzkar value) initializeAzkar,
    required TResult Function(_ResetCounters value) resetCounters,
    required TResult Function(_IncrementCounter value) incrementCounter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeAzkar value)? initializeAzkar,
    TResult? Function(_ResetCounters value)? resetCounters,
    TResult? Function(_IncrementCounter value)? incrementCounter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeAzkar value)? initializeAzkar,
    TResult Function(_ResetCounters value)? resetCounters,
    TResult Function(_IncrementCounter value)? incrementCounter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AzkarAfterSalahEventCopyWith<$Res> {
  factory $AzkarAfterSalahEventCopyWith(AzkarAfterSalahEvent value,
          $Res Function(AzkarAfterSalahEvent) then) =
      _$AzkarAfterSalahEventCopyWithImpl<$Res, AzkarAfterSalahEvent>;
}

/// @nodoc
class _$AzkarAfterSalahEventCopyWithImpl<$Res,
        $Val extends AzkarAfterSalahEvent>
    implements $AzkarAfterSalahEventCopyWith<$Res> {
  _$AzkarAfterSalahEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AzkarAfterSalahEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitializeAzkarImplCopyWith<$Res> {
  factory _$$InitializeAzkarImplCopyWith(_$InitializeAzkarImpl value,
          $Res Function(_$InitializeAzkarImpl) then) =
      __$$InitializeAzkarImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AzkarSalahTimeState state});

  $AzkarSalahTimeStateCopyWith<$Res> get state;
}

/// @nodoc
class __$$InitializeAzkarImplCopyWithImpl<$Res>
    extends _$AzkarAfterSalahEventCopyWithImpl<$Res, _$InitializeAzkarImpl>
    implements _$$InitializeAzkarImplCopyWith<$Res> {
  __$$InitializeAzkarImplCopyWithImpl(
      _$InitializeAzkarImpl _value, $Res Function(_$InitializeAzkarImpl) _then)
      : super(_value, _then);

  /// Create a copy of AzkarAfterSalahEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
  }) {
    return _then(_$InitializeAzkarImpl(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as AzkarSalahTimeState,
    ));
  }

  /// Create a copy of AzkarAfterSalahEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AzkarSalahTimeStateCopyWith<$Res> get state {
    return $AzkarSalahTimeStateCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }
}

/// @nodoc

class _$InitializeAzkarImpl implements _InitializeAzkar {
  _$InitializeAzkarImpl({required this.state});

  @override
  final AzkarSalahTimeState state;

  @override
  String toString() {
    return 'AzkarAfterSalahEvent.initializeAzkar(state: $state)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializeAzkarImpl &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state);

  /// Create a copy of AzkarAfterSalahEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializeAzkarImplCopyWith<_$InitializeAzkarImpl> get copyWith =>
      __$$InitializeAzkarImplCopyWithImpl<_$InitializeAzkarImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AzkarSalahTimeState state) initializeAzkar,
    required TResult Function() resetCounters,
    required TResult Function(AzkarModel zeker) incrementCounter,
  }) {
    return initializeAzkar(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AzkarSalahTimeState state)? initializeAzkar,
    TResult? Function()? resetCounters,
    TResult? Function(AzkarModel zeker)? incrementCounter,
  }) {
    return initializeAzkar?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AzkarSalahTimeState state)? initializeAzkar,
    TResult Function()? resetCounters,
    TResult Function(AzkarModel zeker)? incrementCounter,
    required TResult orElse(),
  }) {
    if (initializeAzkar != null) {
      return initializeAzkar(state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeAzkar value) initializeAzkar,
    required TResult Function(_ResetCounters value) resetCounters,
    required TResult Function(_IncrementCounter value) incrementCounter,
  }) {
    return initializeAzkar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeAzkar value)? initializeAzkar,
    TResult? Function(_ResetCounters value)? resetCounters,
    TResult? Function(_IncrementCounter value)? incrementCounter,
  }) {
    return initializeAzkar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeAzkar value)? initializeAzkar,
    TResult Function(_ResetCounters value)? resetCounters,
    TResult Function(_IncrementCounter value)? incrementCounter,
    required TResult orElse(),
  }) {
    if (initializeAzkar != null) {
      return initializeAzkar(this);
    }
    return orElse();
  }
}

abstract class _InitializeAzkar implements AzkarAfterSalahEvent {
  factory _InitializeAzkar({required final AzkarSalahTimeState state}) =
      _$InitializeAzkarImpl;

  AzkarSalahTimeState get state;

  /// Create a copy of AzkarAfterSalahEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitializeAzkarImplCopyWith<_$InitializeAzkarImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetCountersImplCopyWith<$Res> {
  factory _$$ResetCountersImplCopyWith(
          _$ResetCountersImpl value, $Res Function(_$ResetCountersImpl) then) =
      __$$ResetCountersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetCountersImplCopyWithImpl<$Res>
    extends _$AzkarAfterSalahEventCopyWithImpl<$Res, _$ResetCountersImpl>
    implements _$$ResetCountersImplCopyWith<$Res> {
  __$$ResetCountersImplCopyWithImpl(
      _$ResetCountersImpl _value, $Res Function(_$ResetCountersImpl) _then)
      : super(_value, _then);

  /// Create a copy of AzkarAfterSalahEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResetCountersImpl implements _ResetCounters {
  const _$ResetCountersImpl();

  @override
  String toString() {
    return 'AzkarAfterSalahEvent.resetCounters()';
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
    required TResult Function(AzkarSalahTimeState state) initializeAzkar,
    required TResult Function() resetCounters,
    required TResult Function(AzkarModel zeker) incrementCounter,
  }) {
    return resetCounters();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AzkarSalahTimeState state)? initializeAzkar,
    TResult? Function()? resetCounters,
    TResult? Function(AzkarModel zeker)? incrementCounter,
  }) {
    return resetCounters?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AzkarSalahTimeState state)? initializeAzkar,
    TResult Function()? resetCounters,
    TResult Function(AzkarModel zeker)? incrementCounter,
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
    required TResult Function(_InitializeAzkar value) initializeAzkar,
    required TResult Function(_ResetCounters value) resetCounters,
    required TResult Function(_IncrementCounter value) incrementCounter,
  }) {
    return resetCounters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeAzkar value)? initializeAzkar,
    TResult? Function(_ResetCounters value)? resetCounters,
    TResult? Function(_IncrementCounter value)? incrementCounter,
  }) {
    return resetCounters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeAzkar value)? initializeAzkar,
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

abstract class _ResetCounters implements AzkarAfterSalahEvent {
  const factory _ResetCounters() = _$ResetCountersImpl;
}

/// @nodoc
abstract class _$$IncrementCounterImplCopyWith<$Res> {
  factory _$$IncrementCounterImplCopyWith(_$IncrementCounterImpl value,
          $Res Function(_$IncrementCounterImpl) then) =
      __$$IncrementCounterImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AzkarModel zeker});
}

/// @nodoc
class __$$IncrementCounterImplCopyWithImpl<$Res>
    extends _$AzkarAfterSalahEventCopyWithImpl<$Res, _$IncrementCounterImpl>
    implements _$$IncrementCounterImplCopyWith<$Res> {
  __$$IncrementCounterImplCopyWithImpl(_$IncrementCounterImpl _value,
      $Res Function(_$IncrementCounterImpl) _then)
      : super(_value, _then);

  /// Create a copy of AzkarAfterSalahEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? zeker = null,
  }) {
    return _then(_$IncrementCounterImpl(
      null == zeker
          ? _value.zeker
          : zeker // ignore: cast_nullable_to_non_nullable
              as AzkarModel,
    ));
  }
}

/// @nodoc

class _$IncrementCounterImpl implements _IncrementCounter {
  const _$IncrementCounterImpl(this.zeker);

  @override
  final AzkarModel zeker;

  @override
  String toString() {
    return 'AzkarAfterSalahEvent.incrementCounter(zeker: $zeker)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IncrementCounterImpl &&
            (identical(other.zeker, zeker) || other.zeker == zeker));
  }

  @override
  int get hashCode => Object.hash(runtimeType, zeker);

  /// Create a copy of AzkarAfterSalahEvent
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
    required TResult Function(AzkarSalahTimeState state) initializeAzkar,
    required TResult Function() resetCounters,
    required TResult Function(AzkarModel zeker) incrementCounter,
  }) {
    return incrementCounter(zeker);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AzkarSalahTimeState state)? initializeAzkar,
    TResult? Function()? resetCounters,
    TResult? Function(AzkarModel zeker)? incrementCounter,
  }) {
    return incrementCounter?.call(zeker);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AzkarSalahTimeState state)? initializeAzkar,
    TResult Function()? resetCounters,
    TResult Function(AzkarModel zeker)? incrementCounter,
    required TResult orElse(),
  }) {
    if (incrementCounter != null) {
      return incrementCounter(zeker);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeAzkar value) initializeAzkar,
    required TResult Function(_ResetCounters value) resetCounters,
    required TResult Function(_IncrementCounter value) incrementCounter,
  }) {
    return incrementCounter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeAzkar value)? initializeAzkar,
    TResult? Function(_ResetCounters value)? resetCounters,
    TResult? Function(_IncrementCounter value)? incrementCounter,
  }) {
    return incrementCounter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeAzkar value)? initializeAzkar,
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

abstract class _IncrementCounter implements AzkarAfterSalahEvent {
  const factory _IncrementCounter(final AzkarModel zeker) =
      _$IncrementCounterImpl;

  AzkarModel get zeker;

  /// Create a copy of AzkarAfterSalahEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IncrementCounterImplCopyWith<_$IncrementCounterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AzkarAfterSalahState {
  bool get showAzkarView => throw _privateConstructorUsedError;
  List<AzkarModel> get azkarList => throw _privateConstructorUsedError;

  /// Create a copy of AzkarAfterSalahState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AzkarAfterSalahStateCopyWith<AzkarAfterSalahState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AzkarAfterSalahStateCopyWith<$Res> {
  factory $AzkarAfterSalahStateCopyWith(AzkarAfterSalahState value,
          $Res Function(AzkarAfterSalahState) then) =
      _$AzkarAfterSalahStateCopyWithImpl<$Res, AzkarAfterSalahState>;
  @useResult
  $Res call({bool showAzkarView, List<AzkarModel> azkarList});
}

/// @nodoc
class _$AzkarAfterSalahStateCopyWithImpl<$Res,
        $Val extends AzkarAfterSalahState>
    implements $AzkarAfterSalahStateCopyWith<$Res> {
  _$AzkarAfterSalahStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AzkarAfterSalahState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showAzkarView = null,
    Object? azkarList = null,
  }) {
    return _then(_value.copyWith(
      showAzkarView: null == showAzkarView
          ? _value.showAzkarView
          : showAzkarView // ignore: cast_nullable_to_non_nullable
              as bool,
      azkarList: null == azkarList
          ? _value.azkarList
          : azkarList // ignore: cast_nullable_to_non_nullable
              as List<AzkarModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AzkarAfterSalahStateImplCopyWith<$Res>
    implements $AzkarAfterSalahStateCopyWith<$Res> {
  factory _$$AzkarAfterSalahStateImplCopyWith(_$AzkarAfterSalahStateImpl value,
          $Res Function(_$AzkarAfterSalahStateImpl) then) =
      __$$AzkarAfterSalahStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool showAzkarView, List<AzkarModel> azkarList});
}

/// @nodoc
class __$$AzkarAfterSalahStateImplCopyWithImpl<$Res>
    extends _$AzkarAfterSalahStateCopyWithImpl<$Res, _$AzkarAfterSalahStateImpl>
    implements _$$AzkarAfterSalahStateImplCopyWith<$Res> {
  __$$AzkarAfterSalahStateImplCopyWithImpl(_$AzkarAfterSalahStateImpl _value,
      $Res Function(_$AzkarAfterSalahStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AzkarAfterSalahState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showAzkarView = null,
    Object? azkarList = null,
  }) {
    return _then(_$AzkarAfterSalahStateImpl(
      showAzkarView: null == showAzkarView
          ? _value.showAzkarView
          : showAzkarView // ignore: cast_nullable_to_non_nullable
              as bool,
      azkarList: null == azkarList
          ? _value._azkarList
          : azkarList // ignore: cast_nullable_to_non_nullable
              as List<AzkarModel>,
    ));
  }
}

/// @nodoc

class _$AzkarAfterSalahStateImpl implements _AzkarAfterSalahState {
  const _$AzkarAfterSalahStateImpl(
      {this.showAzkarView = false, final List<AzkarModel> azkarList = const []})
      : _azkarList = azkarList;

  @override
  @JsonKey()
  final bool showAzkarView;
  final List<AzkarModel> _azkarList;
  @override
  @JsonKey()
  List<AzkarModel> get azkarList {
    if (_azkarList is EqualUnmodifiableListView) return _azkarList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_azkarList);
  }

  @override
  String toString() {
    return 'AzkarAfterSalahState(showAzkarView: $showAzkarView, azkarList: $azkarList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AzkarAfterSalahStateImpl &&
            (identical(other.showAzkarView, showAzkarView) ||
                other.showAzkarView == showAzkarView) &&
            const DeepCollectionEquality()
                .equals(other._azkarList, _azkarList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, showAzkarView,
      const DeepCollectionEquality().hash(_azkarList));

  /// Create a copy of AzkarAfterSalahState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AzkarAfterSalahStateImplCopyWith<_$AzkarAfterSalahStateImpl>
      get copyWith =>
          __$$AzkarAfterSalahStateImplCopyWithImpl<_$AzkarAfterSalahStateImpl>(
              this, _$identity);
}

abstract class _AzkarAfterSalahState implements AzkarAfterSalahState {
  const factory _AzkarAfterSalahState(
      {final bool showAzkarView,
      final List<AzkarModel> azkarList}) = _$AzkarAfterSalahStateImpl;

  @override
  bool get showAzkarView;
  @override
  List<AzkarModel> get azkarList;

  /// Create a copy of AzkarAfterSalahState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AzkarAfterSalahStateImplCopyWith<_$AzkarAfterSalahStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}