// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quran_pages_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QuranPagesListEvent {
  bool get status => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool status) changeMarkerStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool status)? changeMarkerStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool status)? changeMarkerStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeMarkerStatus value) changeMarkerStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeMarkerStatus value)? changeMarkerStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeMarkerStatus value)? changeMarkerStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of QuranPagesListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuranPagesListEventCopyWith<QuranPagesListEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuranPagesListEventCopyWith<$Res> {
  factory $QuranPagesListEventCopyWith(
          QuranPagesListEvent value, $Res Function(QuranPagesListEvent) then) =
      _$QuranPagesListEventCopyWithImpl<$Res, QuranPagesListEvent>;
  @useResult
  $Res call({bool status});
}

/// @nodoc
class _$QuranPagesListEventCopyWithImpl<$Res, $Val extends QuranPagesListEvent>
    implements $QuranPagesListEventCopyWith<$Res> {
  _$QuranPagesListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuranPagesListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangeMarkerStatusImplCopyWith<$Res>
    implements $QuranPagesListEventCopyWith<$Res> {
  factory _$$ChangeMarkerStatusImplCopyWith(_$ChangeMarkerStatusImpl value,
          $Res Function(_$ChangeMarkerStatusImpl) then) =
      __$$ChangeMarkerStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool status});
}

/// @nodoc
class __$$ChangeMarkerStatusImplCopyWithImpl<$Res>
    extends _$QuranPagesListEventCopyWithImpl<$Res, _$ChangeMarkerStatusImpl>
    implements _$$ChangeMarkerStatusImplCopyWith<$Res> {
  __$$ChangeMarkerStatusImplCopyWithImpl(_$ChangeMarkerStatusImpl _value,
      $Res Function(_$ChangeMarkerStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuranPagesListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$ChangeMarkerStatusImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ChangeMarkerStatusImpl implements _ChangeMarkerStatus {
  const _$ChangeMarkerStatusImpl({required this.status});

  @override
  final bool status;

  @override
  String toString() {
    return 'QuranPagesListEvent.changeMarkerStatus(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeMarkerStatusImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of QuranPagesListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeMarkerStatusImplCopyWith<_$ChangeMarkerStatusImpl> get copyWith =>
      __$$ChangeMarkerStatusImplCopyWithImpl<_$ChangeMarkerStatusImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool status) changeMarkerStatus,
  }) {
    return changeMarkerStatus(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool status)? changeMarkerStatus,
  }) {
    return changeMarkerStatus?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool status)? changeMarkerStatus,
    required TResult orElse(),
  }) {
    if (changeMarkerStatus != null) {
      return changeMarkerStatus(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeMarkerStatus value) changeMarkerStatus,
  }) {
    return changeMarkerStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeMarkerStatus value)? changeMarkerStatus,
  }) {
    return changeMarkerStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeMarkerStatus value)? changeMarkerStatus,
    required TResult orElse(),
  }) {
    if (changeMarkerStatus != null) {
      return changeMarkerStatus(this);
    }
    return orElse();
  }
}

abstract class _ChangeMarkerStatus implements QuranPagesListEvent {
  const factory _ChangeMarkerStatus({required final bool status}) =
      _$ChangeMarkerStatusImpl;

  @override
  bool get status;

  /// Create a copy of QuranPagesListEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeMarkerStatusImplCopyWith<_$ChangeMarkerStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QuranPagesListState {
  bool get markered => throw _privateConstructorUsedError;

  /// Create a copy of QuranPagesListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuranPagesListStateCopyWith<QuranPagesListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuranPagesListStateCopyWith<$Res> {
  factory $QuranPagesListStateCopyWith(
          QuranPagesListState value, $Res Function(QuranPagesListState) then) =
      _$QuranPagesListStateCopyWithImpl<$Res, QuranPagesListState>;
  @useResult
  $Res call({bool markered});
}

/// @nodoc
class _$QuranPagesListStateCopyWithImpl<$Res, $Val extends QuranPagesListState>
    implements $QuranPagesListStateCopyWith<$Res> {
  _$QuranPagesListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuranPagesListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? markered = null,
  }) {
    return _then(_value.copyWith(
      markered: null == markered
          ? _value.markered
          : markered // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuranPagesListStateImplCopyWith<$Res>
    implements $QuranPagesListStateCopyWith<$Res> {
  factory _$$QuranPagesListStateImplCopyWith(_$QuranPagesListStateImpl value,
          $Res Function(_$QuranPagesListStateImpl) then) =
      __$$QuranPagesListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool markered});
}

/// @nodoc
class __$$QuranPagesListStateImplCopyWithImpl<$Res>
    extends _$QuranPagesListStateCopyWithImpl<$Res, _$QuranPagesListStateImpl>
    implements _$$QuranPagesListStateImplCopyWith<$Res> {
  __$$QuranPagesListStateImplCopyWithImpl(_$QuranPagesListStateImpl _value,
      $Res Function(_$QuranPagesListStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuranPagesListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? markered = null,
  }) {
    return _then(_$QuranPagesListStateImpl(
      markered: null == markered
          ? _value.markered
          : markered // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$QuranPagesListStateImpl implements _QuranPagesListState {
  const _$QuranPagesListStateImpl({this.markered = false});

  @override
  @JsonKey()
  final bool markered;

  @override
  String toString() {
    return 'QuranPagesListState(markered: $markered)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuranPagesListStateImpl &&
            (identical(other.markered, markered) ||
                other.markered == markered));
  }

  @override
  int get hashCode => Object.hash(runtimeType, markered);

  /// Create a copy of QuranPagesListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuranPagesListStateImplCopyWith<_$QuranPagesListStateImpl> get copyWith =>
      __$$QuranPagesListStateImplCopyWithImpl<_$QuranPagesListStateImpl>(
          this, _$identity);
}

abstract class _QuranPagesListState implements QuranPagesListState {
  const factory _QuranPagesListState({final bool markered}) =
      _$QuranPagesListStateImpl;

  @override
  bool get markered;

  /// Create a copy of QuranPagesListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuranPagesListStateImplCopyWith<_$QuranPagesListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
