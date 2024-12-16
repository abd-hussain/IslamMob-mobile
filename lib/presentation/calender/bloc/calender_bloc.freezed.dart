// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calender_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CalenderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() prepareSalahTiming,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? prepareSalahTiming,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? prepareSalahTiming,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PrepareSalahTiming value) prepareSalahTiming,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PrepareSalahTiming value)? prepareSalahTiming,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PrepareSalahTiming value)? prepareSalahTiming,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalenderEventCopyWith<$Res> {
  factory $CalenderEventCopyWith(
          CalenderEvent value, $Res Function(CalenderEvent) then) =
      _$CalenderEventCopyWithImpl<$Res, CalenderEvent>;
}

/// @nodoc
class _$CalenderEventCopyWithImpl<$Res, $Val extends CalenderEvent>
    implements $CalenderEventCopyWith<$Res> {
  _$CalenderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CalenderEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PrepareSalahTimingImplCopyWith<$Res> {
  factory _$$PrepareSalahTimingImplCopyWith(_$PrepareSalahTimingImpl value,
          $Res Function(_$PrepareSalahTimingImpl) then) =
      __$$PrepareSalahTimingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PrepareSalahTimingImplCopyWithImpl<$Res>
    extends _$CalenderEventCopyWithImpl<$Res, _$PrepareSalahTimingImpl>
    implements _$$PrepareSalahTimingImplCopyWith<$Res> {
  __$$PrepareSalahTimingImplCopyWithImpl(_$PrepareSalahTimingImpl _value,
      $Res Function(_$PrepareSalahTimingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CalenderEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PrepareSalahTimingImpl implements _PrepareSalahTiming {
  const _$PrepareSalahTimingImpl();

  @override
  String toString() {
    return 'CalenderEvent.prepareSalahTiming()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PrepareSalahTimingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() prepareSalahTiming,
  }) {
    return prepareSalahTiming();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? prepareSalahTiming,
  }) {
    return prepareSalahTiming?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? prepareSalahTiming,
    required TResult orElse(),
  }) {
    if (prepareSalahTiming != null) {
      return prepareSalahTiming();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PrepareSalahTiming value) prepareSalahTiming,
  }) {
    return prepareSalahTiming(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PrepareSalahTiming value)? prepareSalahTiming,
  }) {
    return prepareSalahTiming?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PrepareSalahTiming value)? prepareSalahTiming,
    required TResult orElse(),
  }) {
    if (prepareSalahTiming != null) {
      return prepareSalahTiming(this);
    }
    return orElse();
  }
}

abstract class _PrepareSalahTiming implements CalenderEvent {
  const factory _PrepareSalahTiming() = _$PrepareSalahTimingImpl;
}

/// @nodoc
mixin _$CalenderState {
  List<CalenderModel> get list => throw _privateConstructorUsedError;
  CalenderProcessState get status => throw _privateConstructorUsedError;

  /// Create a copy of CalenderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CalenderStateCopyWith<CalenderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalenderStateCopyWith<$Res> {
  factory $CalenderStateCopyWith(
          CalenderState value, $Res Function(CalenderState) then) =
      _$CalenderStateCopyWithImpl<$Res, CalenderState>;
  @useResult
  $Res call({List<CalenderModel> list, CalenderProcessState status});

  $CalenderProcessStateCopyWith<$Res> get status;
}

/// @nodoc
class _$CalenderStateCopyWithImpl<$Res, $Val extends CalenderState>
    implements $CalenderStateCopyWith<$Res> {
  _$CalenderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CalenderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<CalenderModel>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CalenderProcessState,
    ) as $Val);
  }

  /// Create a copy of CalenderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CalenderProcessStateCopyWith<$Res> get status {
    return $CalenderProcessStateCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CalenderStateImplCopyWith<$Res>
    implements $CalenderStateCopyWith<$Res> {
  factory _$$CalenderStateImplCopyWith(
          _$CalenderStateImpl value, $Res Function(_$CalenderStateImpl) then) =
      __$$CalenderStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CalenderModel> list, CalenderProcessState status});

  @override
  $CalenderProcessStateCopyWith<$Res> get status;
}

/// @nodoc
class __$$CalenderStateImplCopyWithImpl<$Res>
    extends _$CalenderStateCopyWithImpl<$Res, _$CalenderStateImpl>
    implements _$$CalenderStateImplCopyWith<$Res> {
  __$$CalenderStateImplCopyWithImpl(
      _$CalenderStateImpl _value, $Res Function(_$CalenderStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CalenderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? status = null,
  }) {
    return _then(_$CalenderStateImpl(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<CalenderModel>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CalenderProcessState,
    ));
  }
}

/// @nodoc

class _$CalenderStateImpl implements _CalenderState {
  const _$CalenderStateImpl(
      {final List<CalenderModel> list = const [],
      this.status = const CalenderProcessState.loading()})
      : _list = list;

  final List<CalenderModel> _list;
  @override
  @JsonKey()
  List<CalenderModel> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  @JsonKey()
  final CalenderProcessState status;

  @override
  String toString() {
    return 'CalenderState(list: $list, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalenderStateImpl &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_list), status);

  /// Create a copy of CalenderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CalenderStateImplCopyWith<_$CalenderStateImpl> get copyWith =>
      __$$CalenderStateImplCopyWithImpl<_$CalenderStateImpl>(this, _$identity);
}

abstract class _CalenderState implements CalenderState {
  const factory _CalenderState(
      {final List<CalenderModel> list,
      final CalenderProcessState status}) = _$CalenderStateImpl;

  @override
  List<CalenderModel> get list;
  @override
  CalenderProcessState get status;

  /// Create a copy of CalenderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CalenderStateImplCopyWith<_$CalenderStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CalenderProcessState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() succss,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function()? succss,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? succss,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CalenderProcessStateLoading value) loading,
    required TResult Function(CalenderProcessStateError value) error,
    required TResult Function(CalenderProcessStateSuccss value) succss,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CalenderProcessStateLoading value)? loading,
    TResult? Function(CalenderProcessStateError value)? error,
    TResult? Function(CalenderProcessStateSuccss value)? succss,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CalenderProcessStateLoading value)? loading,
    TResult Function(CalenderProcessStateError value)? error,
    TResult Function(CalenderProcessStateSuccss value)? succss,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalenderProcessStateCopyWith<$Res> {
  factory $CalenderProcessStateCopyWith(CalenderProcessState value,
          $Res Function(CalenderProcessState) then) =
      _$CalenderProcessStateCopyWithImpl<$Res, CalenderProcessState>;
}

/// @nodoc
class _$CalenderProcessStateCopyWithImpl<$Res,
        $Val extends CalenderProcessState>
    implements $CalenderProcessStateCopyWith<$Res> {
  _$CalenderProcessStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CalenderProcessState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CalenderProcessStateLoadingImplCopyWith<$Res> {
  factory _$$CalenderProcessStateLoadingImplCopyWith(
          _$CalenderProcessStateLoadingImpl value,
          $Res Function(_$CalenderProcessStateLoadingImpl) then) =
      __$$CalenderProcessStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CalenderProcessStateLoadingImplCopyWithImpl<$Res>
    extends _$CalenderProcessStateCopyWithImpl<$Res,
        _$CalenderProcessStateLoadingImpl>
    implements _$$CalenderProcessStateLoadingImplCopyWith<$Res> {
  __$$CalenderProcessStateLoadingImplCopyWithImpl(
      _$CalenderProcessStateLoadingImpl _value,
      $Res Function(_$CalenderProcessStateLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CalenderProcessState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CalenderProcessStateLoadingImpl implements CalenderProcessStateLoading {
  const _$CalenderProcessStateLoadingImpl();

  @override
  String toString() {
    return 'CalenderProcessState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalenderProcessStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() succss,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function()? succss,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? succss,
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
    required TResult Function(CalenderProcessStateLoading value) loading,
    required TResult Function(CalenderProcessStateError value) error,
    required TResult Function(CalenderProcessStateSuccss value) succss,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CalenderProcessStateLoading value)? loading,
    TResult? Function(CalenderProcessStateError value)? error,
    TResult? Function(CalenderProcessStateSuccss value)? succss,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CalenderProcessStateLoading value)? loading,
    TResult Function(CalenderProcessStateError value)? error,
    TResult Function(CalenderProcessStateSuccss value)? succss,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CalenderProcessStateLoading implements CalenderProcessState {
  const factory CalenderProcessStateLoading() =
      _$CalenderProcessStateLoadingImpl;
}

/// @nodoc
abstract class _$$CalenderProcessStateErrorImplCopyWith<$Res> {
  factory _$$CalenderProcessStateErrorImplCopyWith(
          _$CalenderProcessStateErrorImpl value,
          $Res Function(_$CalenderProcessStateErrorImpl) then) =
      __$$CalenderProcessStateErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CalenderProcessStateErrorImplCopyWithImpl<$Res>
    extends _$CalenderProcessStateCopyWithImpl<$Res,
        _$CalenderProcessStateErrorImpl>
    implements _$$CalenderProcessStateErrorImplCopyWith<$Res> {
  __$$CalenderProcessStateErrorImplCopyWithImpl(
      _$CalenderProcessStateErrorImpl _value,
      $Res Function(_$CalenderProcessStateErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of CalenderProcessState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CalenderProcessStateErrorImpl implements CalenderProcessStateError {
  const _$CalenderProcessStateErrorImpl();

  @override
  String toString() {
    return 'CalenderProcessState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalenderProcessStateErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() succss,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function()? succss,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? succss,
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
    required TResult Function(CalenderProcessStateLoading value) loading,
    required TResult Function(CalenderProcessStateError value) error,
    required TResult Function(CalenderProcessStateSuccss value) succss,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CalenderProcessStateLoading value)? loading,
    TResult? Function(CalenderProcessStateError value)? error,
    TResult? Function(CalenderProcessStateSuccss value)? succss,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CalenderProcessStateLoading value)? loading,
    TResult Function(CalenderProcessStateError value)? error,
    TResult Function(CalenderProcessStateSuccss value)? succss,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CalenderProcessStateError implements CalenderProcessState {
  const factory CalenderProcessStateError() = _$CalenderProcessStateErrorImpl;
}

/// @nodoc
abstract class _$$CalenderProcessStateSuccssImplCopyWith<$Res> {
  factory _$$CalenderProcessStateSuccssImplCopyWith(
          _$CalenderProcessStateSuccssImpl value,
          $Res Function(_$CalenderProcessStateSuccssImpl) then) =
      __$$CalenderProcessStateSuccssImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CalenderProcessStateSuccssImplCopyWithImpl<$Res>
    extends _$CalenderProcessStateCopyWithImpl<$Res,
        _$CalenderProcessStateSuccssImpl>
    implements _$$CalenderProcessStateSuccssImplCopyWith<$Res> {
  __$$CalenderProcessStateSuccssImplCopyWithImpl(
      _$CalenderProcessStateSuccssImpl _value,
      $Res Function(_$CalenderProcessStateSuccssImpl) _then)
      : super(_value, _then);

  /// Create a copy of CalenderProcessState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CalenderProcessStateSuccssImpl implements CalenderProcessStateSuccss {
  const _$CalenderProcessStateSuccssImpl();

  @override
  String toString() {
    return 'CalenderProcessState.succss()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalenderProcessStateSuccssImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() succss,
  }) {
    return succss();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function()? succss,
  }) {
    return succss?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? succss,
    required TResult orElse(),
  }) {
    if (succss != null) {
      return succss();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CalenderProcessStateLoading value) loading,
    required TResult Function(CalenderProcessStateError value) error,
    required TResult Function(CalenderProcessStateSuccss value) succss,
  }) {
    return succss(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CalenderProcessStateLoading value)? loading,
    TResult? Function(CalenderProcessStateError value)? error,
    TResult? Function(CalenderProcessStateSuccss value)? succss,
  }) {
    return succss?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CalenderProcessStateLoading value)? loading,
    TResult Function(CalenderProcessStateError value)? error,
    TResult Function(CalenderProcessStateSuccss value)? succss,
    required TResult orElse(),
  }) {
    if (succss != null) {
      return succss(this);
    }
    return orElse();
  }
}

abstract class CalenderProcessStateSuccss implements CalenderProcessState {
  const factory CalenderProcessStateSuccss() = _$CalenderProcessStateSuccssImpl;
}
