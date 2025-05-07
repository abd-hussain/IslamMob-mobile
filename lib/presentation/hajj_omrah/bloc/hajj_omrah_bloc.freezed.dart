// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hajj_omrah_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HajjOmrahEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HajjOmrahScreenType screenType) fillInitialValue,
    required TResult Function(VideoProcessState state) loadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HajjOmrahScreenType screenType)? fillInitialValue,
    TResult? Function(VideoProcessState state)? loadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HajjOmrahScreenType screenType)? fillInitialValue,
    TResult Function(VideoProcessState state)? loadingState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FillInitialValue value) fillInitialValue,
    required TResult Function(_LoadingState value) loadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FillInitialValue value)? fillInitialValue,
    TResult? Function(_LoadingState value)? loadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FillInitialValue value)? fillInitialValue,
    TResult Function(_LoadingState value)? loadingState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HajjOmrahEventCopyWith<$Res> {
  factory $HajjOmrahEventCopyWith(
          HajjOmrahEvent value, $Res Function(HajjOmrahEvent) then) =
      _$HajjOmrahEventCopyWithImpl<$Res, HajjOmrahEvent>;
}

/// @nodoc
class _$HajjOmrahEventCopyWithImpl<$Res, $Val extends HajjOmrahEvent>
    implements $HajjOmrahEventCopyWith<$Res> {
  _$HajjOmrahEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HajjOmrahEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FillInitialValueImplCopyWith<$Res> {
  factory _$$FillInitialValueImplCopyWith(_$FillInitialValueImpl value,
          $Res Function(_$FillInitialValueImpl) then) =
      __$$FillInitialValueImplCopyWithImpl<$Res>;
  @useResult
  $Res call({HajjOmrahScreenType screenType});

  $HajjOmrahScreenTypeCopyWith<$Res> get screenType;
}

/// @nodoc
class __$$FillInitialValueImplCopyWithImpl<$Res>
    extends _$HajjOmrahEventCopyWithImpl<$Res, _$FillInitialValueImpl>
    implements _$$FillInitialValueImplCopyWith<$Res> {
  __$$FillInitialValueImplCopyWithImpl(_$FillInitialValueImpl _value,
      $Res Function(_$FillInitialValueImpl) _then)
      : super(_value, _then);

  /// Create a copy of HajjOmrahEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? screenType = null,
  }) {
    return _then(_$FillInitialValueImpl(
      null == screenType
          ? _value.screenType
          : screenType // ignore: cast_nullable_to_non_nullable
              as HajjOmrahScreenType,
    ));
  }

  /// Create a copy of HajjOmrahEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HajjOmrahScreenTypeCopyWith<$Res> get screenType {
    return $HajjOmrahScreenTypeCopyWith<$Res>(_value.screenType, (value) {
      return _then(_value.copyWith(screenType: value));
    });
  }
}

/// @nodoc

class _$FillInitialValueImpl implements _FillInitialValue {
  const _$FillInitialValueImpl(this.screenType);

  @override
  final HajjOmrahScreenType screenType;

  @override
  String toString() {
    return 'HajjOmrahEvent.fillInitialValue(screenType: $screenType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FillInitialValueImpl &&
            (identical(other.screenType, screenType) ||
                other.screenType == screenType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, screenType);

  /// Create a copy of HajjOmrahEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FillInitialValueImplCopyWith<_$FillInitialValueImpl> get copyWith =>
      __$$FillInitialValueImplCopyWithImpl<_$FillInitialValueImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HajjOmrahScreenType screenType) fillInitialValue,
    required TResult Function(VideoProcessState state) loadingState,
  }) {
    return fillInitialValue(screenType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HajjOmrahScreenType screenType)? fillInitialValue,
    TResult? Function(VideoProcessState state)? loadingState,
  }) {
    return fillInitialValue?.call(screenType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HajjOmrahScreenType screenType)? fillInitialValue,
    TResult Function(VideoProcessState state)? loadingState,
    required TResult orElse(),
  }) {
    if (fillInitialValue != null) {
      return fillInitialValue(screenType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FillInitialValue value) fillInitialValue,
    required TResult Function(_LoadingState value) loadingState,
  }) {
    return fillInitialValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FillInitialValue value)? fillInitialValue,
    TResult? Function(_LoadingState value)? loadingState,
  }) {
    return fillInitialValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FillInitialValue value)? fillInitialValue,
    TResult Function(_LoadingState value)? loadingState,
    required TResult orElse(),
  }) {
    if (fillInitialValue != null) {
      return fillInitialValue(this);
    }
    return orElse();
  }
}

abstract class _FillInitialValue implements HajjOmrahEvent {
  const factory _FillInitialValue(final HajjOmrahScreenType screenType) =
      _$FillInitialValueImpl;

  HajjOmrahScreenType get screenType;

  /// Create a copy of HajjOmrahEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FillInitialValueImplCopyWith<_$FillInitialValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingStateImplCopyWith<$Res> {
  factory _$$LoadingStateImplCopyWith(
          _$LoadingStateImpl value, $Res Function(_$LoadingStateImpl) then) =
      __$$LoadingStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({VideoProcessState state});

  $VideoProcessStateCopyWith<$Res> get state;
}

/// @nodoc
class __$$LoadingStateImplCopyWithImpl<$Res>
    extends _$HajjOmrahEventCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
      _$LoadingStateImpl _value, $Res Function(_$LoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HajjOmrahEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
  }) {
    return _then(_$LoadingStateImpl(
      null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as VideoProcessState,
    ));
  }

  /// Create a copy of HajjOmrahEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VideoProcessStateCopyWith<$Res> get state {
    return $VideoProcessStateCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }
}

/// @nodoc

class _$LoadingStateImpl implements _LoadingState {
  const _$LoadingStateImpl(this.state);

  @override
  final VideoProcessState state;

  @override
  String toString() {
    return 'HajjOmrahEvent.loadingState(state: $state)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingStateImpl &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state);

  /// Create a copy of HajjOmrahEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingStateImplCopyWith<_$LoadingStateImpl> get copyWith =>
      __$$LoadingStateImplCopyWithImpl<_$LoadingStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HajjOmrahScreenType screenType) fillInitialValue,
    required TResult Function(VideoProcessState state) loadingState,
  }) {
    return loadingState(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HajjOmrahScreenType screenType)? fillInitialValue,
    TResult? Function(VideoProcessState state)? loadingState,
  }) {
    return loadingState?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HajjOmrahScreenType screenType)? fillInitialValue,
    TResult Function(VideoProcessState state)? loadingState,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState(state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FillInitialValue value) fillInitialValue,
    required TResult Function(_LoadingState value) loadingState,
  }) {
    return loadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FillInitialValue value)? fillInitialValue,
    TResult? Function(_LoadingState value)? loadingState,
  }) {
    return loadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FillInitialValue value)? fillInitialValue,
    TResult Function(_LoadingState value)? loadingState,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements HajjOmrahEvent {
  const factory _LoadingState(final VideoProcessState state) =
      _$LoadingStateImpl;

  VideoProcessState get state;

  /// Create a copy of HajjOmrahEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadingStateImplCopyWith<_$LoadingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HajjOmrahState {
  List<HajjOmrahData> get listOfItems => throw _privateConstructorUsedError;
  VideoProcessState get processState => throw _privateConstructorUsedError;

  /// Create a copy of HajjOmrahState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HajjOmrahStateCopyWith<HajjOmrahState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HajjOmrahStateCopyWith<$Res> {
  factory $HajjOmrahStateCopyWith(
          HajjOmrahState value, $Res Function(HajjOmrahState) then) =
      _$HajjOmrahStateCopyWithImpl<$Res, HajjOmrahState>;
  @useResult
  $Res call({List<HajjOmrahData> listOfItems, VideoProcessState processState});

  $VideoProcessStateCopyWith<$Res> get processState;
}

/// @nodoc
class _$HajjOmrahStateCopyWithImpl<$Res, $Val extends HajjOmrahState>
    implements $HajjOmrahStateCopyWith<$Res> {
  _$HajjOmrahStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HajjOmrahState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listOfItems = null,
    Object? processState = null,
  }) {
    return _then(_value.copyWith(
      listOfItems: null == listOfItems
          ? _value.listOfItems
          : listOfItems // ignore: cast_nullable_to_non_nullable
              as List<HajjOmrahData>,
      processState: null == processState
          ? _value.processState
          : processState // ignore: cast_nullable_to_non_nullable
              as VideoProcessState,
    ) as $Val);
  }

  /// Create a copy of HajjOmrahState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VideoProcessStateCopyWith<$Res> get processState {
    return $VideoProcessStateCopyWith<$Res>(_value.processState, (value) {
      return _then(_value.copyWith(processState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HajjOmrahStateImplCopyWith<$Res>
    implements $HajjOmrahStateCopyWith<$Res> {
  factory _$$HajjOmrahStateImplCopyWith(_$HajjOmrahStateImpl value,
          $Res Function(_$HajjOmrahStateImpl) then) =
      __$$HajjOmrahStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<HajjOmrahData> listOfItems, VideoProcessState processState});

  @override
  $VideoProcessStateCopyWith<$Res> get processState;
}

/// @nodoc
class __$$HajjOmrahStateImplCopyWithImpl<$Res>
    extends _$HajjOmrahStateCopyWithImpl<$Res, _$HajjOmrahStateImpl>
    implements _$$HajjOmrahStateImplCopyWith<$Res> {
  __$$HajjOmrahStateImplCopyWithImpl(
      _$HajjOmrahStateImpl _value, $Res Function(_$HajjOmrahStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HajjOmrahState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listOfItems = null,
    Object? processState = null,
  }) {
    return _then(_$HajjOmrahStateImpl(
      listOfItems: null == listOfItems
          ? _value._listOfItems
          : listOfItems // ignore: cast_nullable_to_non_nullable
              as List<HajjOmrahData>,
      processState: null == processState
          ? _value.processState
          : processState // ignore: cast_nullable_to_non_nullable
              as VideoProcessState,
    ));
  }
}

/// @nodoc

class _$HajjOmrahStateImpl implements _HajjOmrahState {
  const _$HajjOmrahStateImpl(
      {final List<HajjOmrahData> listOfItems = const [],
      this.processState = const VideoProcessState.loading()})
      : _listOfItems = listOfItems;

  final List<HajjOmrahData> _listOfItems;
  @override
  @JsonKey()
  List<HajjOmrahData> get listOfItems {
    if (_listOfItems is EqualUnmodifiableListView) return _listOfItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listOfItems);
  }

  @override
  @JsonKey()
  final VideoProcessState processState;

  @override
  String toString() {
    return 'HajjOmrahState(listOfItems: $listOfItems, processState: $processState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HajjOmrahStateImpl &&
            const DeepCollectionEquality()
                .equals(other._listOfItems, _listOfItems) &&
            (identical(other.processState, processState) ||
                other.processState == processState));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_listOfItems), processState);

  /// Create a copy of HajjOmrahState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HajjOmrahStateImplCopyWith<_$HajjOmrahStateImpl> get copyWith =>
      __$$HajjOmrahStateImplCopyWithImpl<_$HajjOmrahStateImpl>(
          this, _$identity);
}

abstract class _HajjOmrahState implements HajjOmrahState {
  const factory _HajjOmrahState(
      {final List<HajjOmrahData> listOfItems,
      final VideoProcessState processState}) = _$HajjOmrahStateImpl;

  @override
  List<HajjOmrahData> get listOfItems;
  @override
  VideoProcessState get processState;

  /// Create a copy of HajjOmrahState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HajjOmrahStateImplCopyWith<_$HajjOmrahStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VideoProcessState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoProcessStateCopyWith<$Res> {
  factory $VideoProcessStateCopyWith(
          VideoProcessState value, $Res Function(VideoProcessState) then) =
      _$VideoProcessStateCopyWithImpl<$Res, VideoProcessState>;
}

/// @nodoc
class _$VideoProcessStateCopyWithImpl<$Res, $Val extends VideoProcessState>
    implements $VideoProcessStateCopyWith<$Res> {
  _$VideoProcessStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VideoProcessState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$VideoProcessStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoProcessState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'VideoProcessState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements VideoProcessState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$VideoProcessStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoProcessState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl();

  @override
  String toString() {
    return 'VideoProcessState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements VideoProcessState {
  const factory _Success() = _$SuccessImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$VideoProcessStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoProcessState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl();

  @override
  String toString() {
    return 'VideoProcessState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements VideoProcessState {
  const factory _Error() = _$ErrorImpl;
}

/// @nodoc
mixin _$HajjOmrahScreenType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() hajj,
    required TResult Function() omrah,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? hajj,
    TResult? Function()? omrah,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? hajj,
    TResult Function()? omrah,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Hajj value) hajj,
    required TResult Function(_Omrah value) omrah,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Hajj value)? hajj,
    TResult? Function(_Omrah value)? omrah,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Hajj value)? hajj,
    TResult Function(_Omrah value)? omrah,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HajjOmrahScreenTypeCopyWith<$Res> {
  factory $HajjOmrahScreenTypeCopyWith(
          HajjOmrahScreenType value, $Res Function(HajjOmrahScreenType) then) =
      _$HajjOmrahScreenTypeCopyWithImpl<$Res, HajjOmrahScreenType>;
}

/// @nodoc
class _$HajjOmrahScreenTypeCopyWithImpl<$Res, $Val extends HajjOmrahScreenType>
    implements $HajjOmrahScreenTypeCopyWith<$Res> {
  _$HajjOmrahScreenTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HajjOmrahScreenType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$HajjImplCopyWith<$Res> {
  factory _$$HajjImplCopyWith(
          _$HajjImpl value, $Res Function(_$HajjImpl) then) =
      __$$HajjImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HajjImplCopyWithImpl<$Res>
    extends _$HajjOmrahScreenTypeCopyWithImpl<$Res, _$HajjImpl>
    implements _$$HajjImplCopyWith<$Res> {
  __$$HajjImplCopyWithImpl(_$HajjImpl _value, $Res Function(_$HajjImpl) _then)
      : super(_value, _then);

  /// Create a copy of HajjOmrahScreenType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HajjImpl implements _Hajj {
  const _$HajjImpl();

  @override
  String toString() {
    return 'HajjOmrahScreenType.hajj()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HajjImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() hajj,
    required TResult Function() omrah,
  }) {
    return hajj();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? hajj,
    TResult? Function()? omrah,
  }) {
    return hajj?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? hajj,
    TResult Function()? omrah,
    required TResult orElse(),
  }) {
    if (hajj != null) {
      return hajj();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Hajj value) hajj,
    required TResult Function(_Omrah value) omrah,
  }) {
    return hajj(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Hajj value)? hajj,
    TResult? Function(_Omrah value)? omrah,
  }) {
    return hajj?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Hajj value)? hajj,
    TResult Function(_Omrah value)? omrah,
    required TResult orElse(),
  }) {
    if (hajj != null) {
      return hajj(this);
    }
    return orElse();
  }
}

abstract class _Hajj implements HajjOmrahScreenType {
  const factory _Hajj() = _$HajjImpl;
}

/// @nodoc
abstract class _$$OmrahImplCopyWith<$Res> {
  factory _$$OmrahImplCopyWith(
          _$OmrahImpl value, $Res Function(_$OmrahImpl) then) =
      __$$OmrahImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OmrahImplCopyWithImpl<$Res>
    extends _$HajjOmrahScreenTypeCopyWithImpl<$Res, _$OmrahImpl>
    implements _$$OmrahImplCopyWith<$Res> {
  __$$OmrahImplCopyWithImpl(
      _$OmrahImpl _value, $Res Function(_$OmrahImpl) _then)
      : super(_value, _then);

  /// Create a copy of HajjOmrahScreenType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OmrahImpl implements _Omrah {
  const _$OmrahImpl();

  @override
  String toString() {
    return 'HajjOmrahScreenType.omrah()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OmrahImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() hajj,
    required TResult Function() omrah,
  }) {
    return omrah();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? hajj,
    TResult? Function()? omrah,
  }) {
    return omrah?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? hajj,
    TResult Function()? omrah,
    required TResult orElse(),
  }) {
    if (omrah != null) {
      return omrah();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Hajj value) hajj,
    required TResult Function(_Omrah value) omrah,
  }) {
    return omrah(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Hajj value)? hajj,
    TResult? Function(_Omrah value)? omrah,
  }) {
    return omrah?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Hajj value)? hajj,
    TResult Function(_Omrah value)? omrah,
    required TResult orElse(),
  }) {
    if (omrah != null) {
      return omrah(this);
    }
    return orElse();
  }
}

abstract class _Omrah implements HajjOmrahScreenType {
  const factory _Omrah() = _$OmrahImpl;
}
