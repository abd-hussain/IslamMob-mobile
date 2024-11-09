// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_tab_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeTabEvent {
  bool get status => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool status) updateExpandedStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool status)? updateExpandedStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool status)? updateExpandedStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateExpandedStatus value) updateExpandedStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateExpandedStatus value)? updateExpandedStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateExpandedStatus value)? updateExpandedStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of HomeTabEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeTabEventCopyWith<HomeTabEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeTabEventCopyWith<$Res> {
  factory $HomeTabEventCopyWith(
          HomeTabEvent value, $Res Function(HomeTabEvent) then) =
      _$HomeTabEventCopyWithImpl<$Res, HomeTabEvent>;
  @useResult
  $Res call({bool status});
}

/// @nodoc
class _$HomeTabEventCopyWithImpl<$Res, $Val extends HomeTabEvent>
    implements $HomeTabEventCopyWith<$Res> {
  _$HomeTabEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeTabEvent
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
abstract class _$$UpdateExpandedStatusImplCopyWith<$Res>
    implements $HomeTabEventCopyWith<$Res> {
  factory _$$UpdateExpandedStatusImplCopyWith(_$UpdateExpandedStatusImpl value,
          $Res Function(_$UpdateExpandedStatusImpl) then) =
      __$$UpdateExpandedStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool status});
}

/// @nodoc
class __$$UpdateExpandedStatusImplCopyWithImpl<$Res>
    extends _$HomeTabEventCopyWithImpl<$Res, _$UpdateExpandedStatusImpl>
    implements _$$UpdateExpandedStatusImplCopyWith<$Res> {
  __$$UpdateExpandedStatusImplCopyWithImpl(_$UpdateExpandedStatusImpl _value,
      $Res Function(_$UpdateExpandedStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeTabEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$UpdateExpandedStatusImpl(
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UpdateExpandedStatusImpl implements _UpdateExpandedStatus {
  _$UpdateExpandedStatusImpl(this.status);

  @override
  final bool status;

  @override
  String toString() {
    return 'HomeTabEvent.updateExpandedStatus(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateExpandedStatusImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of HomeTabEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateExpandedStatusImplCopyWith<_$UpdateExpandedStatusImpl>
      get copyWith =>
          __$$UpdateExpandedStatusImplCopyWithImpl<_$UpdateExpandedStatusImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool status) updateExpandedStatus,
  }) {
    return updateExpandedStatus(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool status)? updateExpandedStatus,
  }) {
    return updateExpandedStatus?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool status)? updateExpandedStatus,
    required TResult orElse(),
  }) {
    if (updateExpandedStatus != null) {
      return updateExpandedStatus(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateExpandedStatus value) updateExpandedStatus,
  }) {
    return updateExpandedStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateExpandedStatus value)? updateExpandedStatus,
  }) {
    return updateExpandedStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateExpandedStatus value)? updateExpandedStatus,
    required TResult orElse(),
  }) {
    if (updateExpandedStatus != null) {
      return updateExpandedStatus(this);
    }
    return orElse();
  }
}

abstract class _UpdateExpandedStatus implements HomeTabEvent {
  factory _UpdateExpandedStatus(final bool status) = _$UpdateExpandedStatusImpl;

  @override
  bool get status;

  /// Create a copy of HomeTabEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateExpandedStatusImplCopyWith<_$UpdateExpandedStatusImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeTabState {
  bool get isBarExpanded => throw _privateConstructorUsedError;

  /// Create a copy of HomeTabState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeTabStateCopyWith<HomeTabState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeTabStateCopyWith<$Res> {
  factory $HomeTabStateCopyWith(
          HomeTabState value, $Res Function(HomeTabState) then) =
      _$HomeTabStateCopyWithImpl<$Res, HomeTabState>;
  @useResult
  $Res call({bool isBarExpanded});
}

/// @nodoc
class _$HomeTabStateCopyWithImpl<$Res, $Val extends HomeTabState>
    implements $HomeTabStateCopyWith<$Res> {
  _$HomeTabStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeTabState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isBarExpanded = null,
  }) {
    return _then(_value.copyWith(
      isBarExpanded: null == isBarExpanded
          ? _value.isBarExpanded
          : isBarExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeTabStateImplCopyWith<$Res>
    implements $HomeTabStateCopyWith<$Res> {
  factory _$$HomeTabStateImplCopyWith(
          _$HomeTabStateImpl value, $Res Function(_$HomeTabStateImpl) then) =
      __$$HomeTabStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isBarExpanded});
}

/// @nodoc
class __$$HomeTabStateImplCopyWithImpl<$Res>
    extends _$HomeTabStateCopyWithImpl<$Res, _$HomeTabStateImpl>
    implements _$$HomeTabStateImplCopyWith<$Res> {
  __$$HomeTabStateImplCopyWithImpl(
      _$HomeTabStateImpl _value, $Res Function(_$HomeTabStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeTabState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isBarExpanded = null,
  }) {
    return _then(_$HomeTabStateImpl(
      isBarExpanded: null == isBarExpanded
          ? _value.isBarExpanded
          : isBarExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$HomeTabStateImpl implements _HomeTabState {
  const _$HomeTabStateImpl({this.isBarExpanded = true});

  @override
  @JsonKey()
  final bool isBarExpanded;

  @override
  String toString() {
    return 'HomeTabState(isBarExpanded: $isBarExpanded)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeTabStateImpl &&
            (identical(other.isBarExpanded, isBarExpanded) ||
                other.isBarExpanded == isBarExpanded));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isBarExpanded);

  /// Create a copy of HomeTabState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeTabStateImplCopyWith<_$HomeTabStateImpl> get copyWith =>
      __$$HomeTabStateImplCopyWithImpl<_$HomeTabStateImpl>(this, _$identity);
}

abstract class _HomeTabState implements HomeTabState {
  const factory _HomeTabState({final bool isBarExpanded}) = _$HomeTabStateImpl;

  @override
  bool get isBarExpanded;

  /// Create a copy of HomeTabState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeTabStateImplCopyWith<_$HomeTabStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
