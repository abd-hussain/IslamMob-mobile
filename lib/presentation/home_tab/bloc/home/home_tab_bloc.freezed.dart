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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool status) updateExpandedStatus,
    required TResult Function(bool status) updateShowingNotificationView,
    required TResult Function(SalahTimeState nextPrayType) updateNextPrayType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool status)? updateExpandedStatus,
    TResult? Function(bool status)? updateShowingNotificationView,
    TResult? Function(SalahTimeState nextPrayType)? updateNextPrayType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool status)? updateExpandedStatus,
    TResult Function(bool status)? updateShowingNotificationView,
    TResult Function(SalahTimeState nextPrayType)? updateNextPrayType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateExpandedStatus value) updateExpandedStatus,
    required TResult Function(_UpdateShowingNotificationView value)
        updateShowingNotificationView,
    required TResult Function(_UpdateNextPrayType value) updateNextPrayType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateExpandedStatus value)? updateExpandedStatus,
    TResult? Function(_UpdateShowingNotificationView value)?
        updateShowingNotificationView,
    TResult? Function(_UpdateNextPrayType value)? updateNextPrayType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateExpandedStatus value)? updateExpandedStatus,
    TResult Function(_UpdateShowingNotificationView value)?
        updateShowingNotificationView,
    TResult Function(_UpdateNextPrayType value)? updateNextPrayType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeTabEventCopyWith<$Res> {
  factory $HomeTabEventCopyWith(
          HomeTabEvent value, $Res Function(HomeTabEvent) then) =
      _$HomeTabEventCopyWithImpl<$Res, HomeTabEvent>;
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
}

/// @nodoc
abstract class _$$UpdateExpandedStatusImplCopyWith<$Res> {
  factory _$$UpdateExpandedStatusImplCopyWith(_$UpdateExpandedStatusImpl value,
          $Res Function(_$UpdateExpandedStatusImpl) then) =
      __$$UpdateExpandedStatusImplCopyWithImpl<$Res>;
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
    required TResult Function(bool status) updateShowingNotificationView,
    required TResult Function(SalahTimeState nextPrayType) updateNextPrayType,
  }) {
    return updateExpandedStatus(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool status)? updateExpandedStatus,
    TResult? Function(bool status)? updateShowingNotificationView,
    TResult? Function(SalahTimeState nextPrayType)? updateNextPrayType,
  }) {
    return updateExpandedStatus?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool status)? updateExpandedStatus,
    TResult Function(bool status)? updateShowingNotificationView,
    TResult Function(SalahTimeState nextPrayType)? updateNextPrayType,
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
    required TResult Function(_UpdateShowingNotificationView value)
        updateShowingNotificationView,
    required TResult Function(_UpdateNextPrayType value) updateNextPrayType,
  }) {
    return updateExpandedStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateExpandedStatus value)? updateExpandedStatus,
    TResult? Function(_UpdateShowingNotificationView value)?
        updateShowingNotificationView,
    TResult? Function(_UpdateNextPrayType value)? updateNextPrayType,
  }) {
    return updateExpandedStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateExpandedStatus value)? updateExpandedStatus,
    TResult Function(_UpdateShowingNotificationView value)?
        updateShowingNotificationView,
    TResult Function(_UpdateNextPrayType value)? updateNextPrayType,
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

  bool get status;

  /// Create a copy of HomeTabEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateExpandedStatusImplCopyWith<_$UpdateExpandedStatusImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateShowingNotificationViewImplCopyWith<$Res> {
  factory _$$UpdateShowingNotificationViewImplCopyWith(
          _$UpdateShowingNotificationViewImpl value,
          $Res Function(_$UpdateShowingNotificationViewImpl) then) =
      __$$UpdateShowingNotificationViewImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool status});
}

/// @nodoc
class __$$UpdateShowingNotificationViewImplCopyWithImpl<$Res>
    extends _$HomeTabEventCopyWithImpl<$Res,
        _$UpdateShowingNotificationViewImpl>
    implements _$$UpdateShowingNotificationViewImplCopyWith<$Res> {
  __$$UpdateShowingNotificationViewImplCopyWithImpl(
      _$UpdateShowingNotificationViewImpl _value,
      $Res Function(_$UpdateShowingNotificationViewImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeTabEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$UpdateShowingNotificationViewImpl(
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UpdateShowingNotificationViewImpl
    implements _UpdateShowingNotificationView {
  _$UpdateShowingNotificationViewImpl(this.status);

  @override
  final bool status;

  @override
  String toString() {
    return 'HomeTabEvent.updateShowingNotificationView(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateShowingNotificationViewImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of HomeTabEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateShowingNotificationViewImplCopyWith<
          _$UpdateShowingNotificationViewImpl>
      get copyWith => __$$UpdateShowingNotificationViewImplCopyWithImpl<
          _$UpdateShowingNotificationViewImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool status) updateExpandedStatus,
    required TResult Function(bool status) updateShowingNotificationView,
    required TResult Function(SalahTimeState nextPrayType) updateNextPrayType,
  }) {
    return updateShowingNotificationView(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool status)? updateExpandedStatus,
    TResult? Function(bool status)? updateShowingNotificationView,
    TResult? Function(SalahTimeState nextPrayType)? updateNextPrayType,
  }) {
    return updateShowingNotificationView?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool status)? updateExpandedStatus,
    TResult Function(bool status)? updateShowingNotificationView,
    TResult Function(SalahTimeState nextPrayType)? updateNextPrayType,
    required TResult orElse(),
  }) {
    if (updateShowingNotificationView != null) {
      return updateShowingNotificationView(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateExpandedStatus value) updateExpandedStatus,
    required TResult Function(_UpdateShowingNotificationView value)
        updateShowingNotificationView,
    required TResult Function(_UpdateNextPrayType value) updateNextPrayType,
  }) {
    return updateShowingNotificationView(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateExpandedStatus value)? updateExpandedStatus,
    TResult? Function(_UpdateShowingNotificationView value)?
        updateShowingNotificationView,
    TResult? Function(_UpdateNextPrayType value)? updateNextPrayType,
  }) {
    return updateShowingNotificationView?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateExpandedStatus value)? updateExpandedStatus,
    TResult Function(_UpdateShowingNotificationView value)?
        updateShowingNotificationView,
    TResult Function(_UpdateNextPrayType value)? updateNextPrayType,
    required TResult orElse(),
  }) {
    if (updateShowingNotificationView != null) {
      return updateShowingNotificationView(this);
    }
    return orElse();
  }
}

abstract class _UpdateShowingNotificationView implements HomeTabEvent {
  factory _UpdateShowingNotificationView(final bool status) =
      _$UpdateShowingNotificationViewImpl;

  bool get status;

  /// Create a copy of HomeTabEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateShowingNotificationViewImplCopyWith<
          _$UpdateShowingNotificationViewImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateNextPrayTypeImplCopyWith<$Res> {
  factory _$$UpdateNextPrayTypeImplCopyWith(_$UpdateNextPrayTypeImpl value,
          $Res Function(_$UpdateNextPrayTypeImpl) then) =
      __$$UpdateNextPrayTypeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SalahTimeState nextPrayType});

  $SalahTimeStateCopyWith<$Res> get nextPrayType;
}

/// @nodoc
class __$$UpdateNextPrayTypeImplCopyWithImpl<$Res>
    extends _$HomeTabEventCopyWithImpl<$Res, _$UpdateNextPrayTypeImpl>
    implements _$$UpdateNextPrayTypeImplCopyWith<$Res> {
  __$$UpdateNextPrayTypeImplCopyWithImpl(_$UpdateNextPrayTypeImpl _value,
      $Res Function(_$UpdateNextPrayTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeTabEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nextPrayType = null,
  }) {
    return _then(_$UpdateNextPrayTypeImpl(
      null == nextPrayType
          ? _value.nextPrayType
          : nextPrayType // ignore: cast_nullable_to_non_nullable
              as SalahTimeState,
    ));
  }

  /// Create a copy of HomeTabEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SalahTimeStateCopyWith<$Res> get nextPrayType {
    return $SalahTimeStateCopyWith<$Res>(_value.nextPrayType, (value) {
      return _then(_value.copyWith(nextPrayType: value));
    });
  }
}

/// @nodoc

class _$UpdateNextPrayTypeImpl implements _UpdateNextPrayType {
  _$UpdateNextPrayTypeImpl(this.nextPrayType);

  @override
  final SalahTimeState nextPrayType;

  @override
  String toString() {
    return 'HomeTabEvent.updateNextPrayType(nextPrayType: $nextPrayType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateNextPrayTypeImpl &&
            (identical(other.nextPrayType, nextPrayType) ||
                other.nextPrayType == nextPrayType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nextPrayType);

  /// Create a copy of HomeTabEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateNextPrayTypeImplCopyWith<_$UpdateNextPrayTypeImpl> get copyWith =>
      __$$UpdateNextPrayTypeImplCopyWithImpl<_$UpdateNextPrayTypeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool status) updateExpandedStatus,
    required TResult Function(bool status) updateShowingNotificationView,
    required TResult Function(SalahTimeState nextPrayType) updateNextPrayType,
  }) {
    return updateNextPrayType(nextPrayType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool status)? updateExpandedStatus,
    TResult? Function(bool status)? updateShowingNotificationView,
    TResult? Function(SalahTimeState nextPrayType)? updateNextPrayType,
  }) {
    return updateNextPrayType?.call(nextPrayType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool status)? updateExpandedStatus,
    TResult Function(bool status)? updateShowingNotificationView,
    TResult Function(SalahTimeState nextPrayType)? updateNextPrayType,
    required TResult orElse(),
  }) {
    if (updateNextPrayType != null) {
      return updateNextPrayType(nextPrayType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateExpandedStatus value) updateExpandedStatus,
    required TResult Function(_UpdateShowingNotificationView value)
        updateShowingNotificationView,
    required TResult Function(_UpdateNextPrayType value) updateNextPrayType,
  }) {
    return updateNextPrayType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateExpandedStatus value)? updateExpandedStatus,
    TResult? Function(_UpdateShowingNotificationView value)?
        updateShowingNotificationView,
    TResult? Function(_UpdateNextPrayType value)? updateNextPrayType,
  }) {
    return updateNextPrayType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateExpandedStatus value)? updateExpandedStatus,
    TResult Function(_UpdateShowingNotificationView value)?
        updateShowingNotificationView,
    TResult Function(_UpdateNextPrayType value)? updateNextPrayType,
    required TResult orElse(),
  }) {
    if (updateNextPrayType != null) {
      return updateNextPrayType(this);
    }
    return orElse();
  }
}

abstract class _UpdateNextPrayType implements HomeTabEvent {
  factory _UpdateNextPrayType(final SalahTimeState nextPrayType) =
      _$UpdateNextPrayTypeImpl;

  SalahTimeState get nextPrayType;

  /// Create a copy of HomeTabEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateNextPrayTypeImplCopyWith<_$UpdateNextPrayTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeTabState {
  bool get isBarExpanded => throw _privateConstructorUsedError;
  bool get showAllowNotificationView => throw _privateConstructorUsedError;
  SalahTimeState get nextPrayType => throw _privateConstructorUsedError;

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
  $Res call(
      {bool isBarExpanded,
      bool showAllowNotificationView,
      SalahTimeState nextPrayType});

  $SalahTimeStateCopyWith<$Res> get nextPrayType;
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
    Object? showAllowNotificationView = null,
    Object? nextPrayType = null,
  }) {
    return _then(_value.copyWith(
      isBarExpanded: null == isBarExpanded
          ? _value.isBarExpanded
          : isBarExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
      showAllowNotificationView: null == showAllowNotificationView
          ? _value.showAllowNotificationView
          : showAllowNotificationView // ignore: cast_nullable_to_non_nullable
              as bool,
      nextPrayType: null == nextPrayType
          ? _value.nextPrayType
          : nextPrayType // ignore: cast_nullable_to_non_nullable
              as SalahTimeState,
    ) as $Val);
  }

  /// Create a copy of HomeTabState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SalahTimeStateCopyWith<$Res> get nextPrayType {
    return $SalahTimeStateCopyWith<$Res>(_value.nextPrayType, (value) {
      return _then(_value.copyWith(nextPrayType: value) as $Val);
    });
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
  $Res call(
      {bool isBarExpanded,
      bool showAllowNotificationView,
      SalahTimeState nextPrayType});

  @override
  $SalahTimeStateCopyWith<$Res> get nextPrayType;
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
    Object? showAllowNotificationView = null,
    Object? nextPrayType = null,
  }) {
    return _then(_$HomeTabStateImpl(
      isBarExpanded: null == isBarExpanded
          ? _value.isBarExpanded
          : isBarExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
      showAllowNotificationView: null == showAllowNotificationView
          ? _value.showAllowNotificationView
          : showAllowNotificationView // ignore: cast_nullable_to_non_nullable
              as bool,
      nextPrayType: null == nextPrayType
          ? _value.nextPrayType
          : nextPrayType // ignore: cast_nullable_to_non_nullable
              as SalahTimeState,
    ));
  }
}

/// @nodoc

class _$HomeTabStateImpl implements _HomeTabState {
  const _$HomeTabStateImpl(
      {this.isBarExpanded = true,
      this.showAllowNotificationView = false,
      this.nextPrayType = const SalahTimeState.none()});

  @override
  @JsonKey()
  final bool isBarExpanded;
  @override
  @JsonKey()
  final bool showAllowNotificationView;
  @override
  @JsonKey()
  final SalahTimeState nextPrayType;

  @override
  String toString() {
    return 'HomeTabState(isBarExpanded: $isBarExpanded, showAllowNotificationView: $showAllowNotificationView, nextPrayType: $nextPrayType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeTabStateImpl &&
            (identical(other.isBarExpanded, isBarExpanded) ||
                other.isBarExpanded == isBarExpanded) &&
            (identical(other.showAllowNotificationView,
                    showAllowNotificationView) ||
                other.showAllowNotificationView == showAllowNotificationView) &&
            (identical(other.nextPrayType, nextPrayType) ||
                other.nextPrayType == nextPrayType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isBarExpanded, showAllowNotificationView, nextPrayType);

  /// Create a copy of HomeTabState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeTabStateImplCopyWith<_$HomeTabStateImpl> get copyWith =>
      __$$HomeTabStateImplCopyWithImpl<_$HomeTabStateImpl>(this, _$identity);
}

abstract class _HomeTabState implements HomeTabState {
  const factory _HomeTabState(
      {final bool isBarExpanded,
      final bool showAllowNotificationView,
      final SalahTimeState nextPrayType}) = _$HomeTabStateImpl;

  @override
  bool get isBarExpanded;
  @override
  bool get showAllowNotificationView;
  @override
  SalahTimeState get nextPrayType;

  /// Create a copy of HomeTabState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeTabStateImplCopyWith<_$HomeTabStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SalahTimeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fajir,
    required TResult Function() sunrise,
    required TResult Function() zhur,
    required TResult Function() asr,
    required TResult Function() maghrib,
    required TResult Function() isha,
    required TResult Function() none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fajir,
    TResult? Function()? sunrise,
    TResult? Function()? zhur,
    TResult? Function()? asr,
    TResult? Function()? maghrib,
    TResult? Function()? isha,
    TResult? Function()? none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fajir,
    TResult Function()? sunrise,
    TResult Function()? zhur,
    TResult Function()? asr,
    TResult Function()? maghrib,
    TResult Function()? isha,
    TResult Function()? none,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SalahTimeStateFajir value) fajir,
    required TResult Function(SalahTimeStateSunrise value) sunrise,
    required TResult Function(SalahTimeStateZhur value) zhur,
    required TResult Function(SalahTimeStateAsr value) asr,
    required TResult Function(SalahTimeStateMaghrib value) maghrib,
    required TResult Function(SalahTimeStateIsha value) isha,
    required TResult Function(SalahTimeStateNone value) none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SalahTimeStateFajir value)? fajir,
    TResult? Function(SalahTimeStateSunrise value)? sunrise,
    TResult? Function(SalahTimeStateZhur value)? zhur,
    TResult? Function(SalahTimeStateAsr value)? asr,
    TResult? Function(SalahTimeStateMaghrib value)? maghrib,
    TResult? Function(SalahTimeStateIsha value)? isha,
    TResult? Function(SalahTimeStateNone value)? none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SalahTimeStateFajir value)? fajir,
    TResult Function(SalahTimeStateSunrise value)? sunrise,
    TResult Function(SalahTimeStateZhur value)? zhur,
    TResult Function(SalahTimeStateAsr value)? asr,
    TResult Function(SalahTimeStateMaghrib value)? maghrib,
    TResult Function(SalahTimeStateIsha value)? isha,
    TResult Function(SalahTimeStateNone value)? none,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalahTimeStateCopyWith<$Res> {
  factory $SalahTimeStateCopyWith(
          SalahTimeState value, $Res Function(SalahTimeState) then) =
      _$SalahTimeStateCopyWithImpl<$Res, SalahTimeState>;
}

/// @nodoc
class _$SalahTimeStateCopyWithImpl<$Res, $Val extends SalahTimeState>
    implements $SalahTimeStateCopyWith<$Res> {
  _$SalahTimeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SalahTimeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SalahTimeStateFajirImplCopyWith<$Res> {
  factory _$$SalahTimeStateFajirImplCopyWith(_$SalahTimeStateFajirImpl value,
          $Res Function(_$SalahTimeStateFajirImpl) then) =
      __$$SalahTimeStateFajirImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SalahTimeStateFajirImplCopyWithImpl<$Res>
    extends _$SalahTimeStateCopyWithImpl<$Res, _$SalahTimeStateFajirImpl>
    implements _$$SalahTimeStateFajirImplCopyWith<$Res> {
  __$$SalahTimeStateFajirImplCopyWithImpl(_$SalahTimeStateFajirImpl _value,
      $Res Function(_$SalahTimeStateFajirImpl) _then)
      : super(_value, _then);

  /// Create a copy of SalahTimeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SalahTimeStateFajirImpl implements SalahTimeStateFajir {
  const _$SalahTimeStateFajirImpl();

  @override
  String toString() {
    return 'SalahTimeState.fajir()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SalahTimeStateFajirImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fajir,
    required TResult Function() sunrise,
    required TResult Function() zhur,
    required TResult Function() asr,
    required TResult Function() maghrib,
    required TResult Function() isha,
    required TResult Function() none,
  }) {
    return fajir();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fajir,
    TResult? Function()? sunrise,
    TResult? Function()? zhur,
    TResult? Function()? asr,
    TResult? Function()? maghrib,
    TResult? Function()? isha,
    TResult? Function()? none,
  }) {
    return fajir?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fajir,
    TResult Function()? sunrise,
    TResult Function()? zhur,
    TResult Function()? asr,
    TResult Function()? maghrib,
    TResult Function()? isha,
    TResult Function()? none,
    required TResult orElse(),
  }) {
    if (fajir != null) {
      return fajir();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SalahTimeStateFajir value) fajir,
    required TResult Function(SalahTimeStateSunrise value) sunrise,
    required TResult Function(SalahTimeStateZhur value) zhur,
    required TResult Function(SalahTimeStateAsr value) asr,
    required TResult Function(SalahTimeStateMaghrib value) maghrib,
    required TResult Function(SalahTimeStateIsha value) isha,
    required TResult Function(SalahTimeStateNone value) none,
  }) {
    return fajir(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SalahTimeStateFajir value)? fajir,
    TResult? Function(SalahTimeStateSunrise value)? sunrise,
    TResult? Function(SalahTimeStateZhur value)? zhur,
    TResult? Function(SalahTimeStateAsr value)? asr,
    TResult? Function(SalahTimeStateMaghrib value)? maghrib,
    TResult? Function(SalahTimeStateIsha value)? isha,
    TResult? Function(SalahTimeStateNone value)? none,
  }) {
    return fajir?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SalahTimeStateFajir value)? fajir,
    TResult Function(SalahTimeStateSunrise value)? sunrise,
    TResult Function(SalahTimeStateZhur value)? zhur,
    TResult Function(SalahTimeStateAsr value)? asr,
    TResult Function(SalahTimeStateMaghrib value)? maghrib,
    TResult Function(SalahTimeStateIsha value)? isha,
    TResult Function(SalahTimeStateNone value)? none,
    required TResult orElse(),
  }) {
    if (fajir != null) {
      return fajir(this);
    }
    return orElse();
  }
}

abstract class SalahTimeStateFajir implements SalahTimeState {
  const factory SalahTimeStateFajir() = _$SalahTimeStateFajirImpl;
}

/// @nodoc
abstract class _$$SalahTimeStateSunriseImplCopyWith<$Res> {
  factory _$$SalahTimeStateSunriseImplCopyWith(
          _$SalahTimeStateSunriseImpl value,
          $Res Function(_$SalahTimeStateSunriseImpl) then) =
      __$$SalahTimeStateSunriseImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SalahTimeStateSunriseImplCopyWithImpl<$Res>
    extends _$SalahTimeStateCopyWithImpl<$Res, _$SalahTimeStateSunriseImpl>
    implements _$$SalahTimeStateSunriseImplCopyWith<$Res> {
  __$$SalahTimeStateSunriseImplCopyWithImpl(_$SalahTimeStateSunriseImpl _value,
      $Res Function(_$SalahTimeStateSunriseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SalahTimeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SalahTimeStateSunriseImpl implements SalahTimeStateSunrise {
  const _$SalahTimeStateSunriseImpl();

  @override
  String toString() {
    return 'SalahTimeState.sunrise()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SalahTimeStateSunriseImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fajir,
    required TResult Function() sunrise,
    required TResult Function() zhur,
    required TResult Function() asr,
    required TResult Function() maghrib,
    required TResult Function() isha,
    required TResult Function() none,
  }) {
    return sunrise();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fajir,
    TResult? Function()? sunrise,
    TResult? Function()? zhur,
    TResult? Function()? asr,
    TResult? Function()? maghrib,
    TResult? Function()? isha,
    TResult? Function()? none,
  }) {
    return sunrise?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fajir,
    TResult Function()? sunrise,
    TResult Function()? zhur,
    TResult Function()? asr,
    TResult Function()? maghrib,
    TResult Function()? isha,
    TResult Function()? none,
    required TResult orElse(),
  }) {
    if (sunrise != null) {
      return sunrise();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SalahTimeStateFajir value) fajir,
    required TResult Function(SalahTimeStateSunrise value) sunrise,
    required TResult Function(SalahTimeStateZhur value) zhur,
    required TResult Function(SalahTimeStateAsr value) asr,
    required TResult Function(SalahTimeStateMaghrib value) maghrib,
    required TResult Function(SalahTimeStateIsha value) isha,
    required TResult Function(SalahTimeStateNone value) none,
  }) {
    return sunrise(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SalahTimeStateFajir value)? fajir,
    TResult? Function(SalahTimeStateSunrise value)? sunrise,
    TResult? Function(SalahTimeStateZhur value)? zhur,
    TResult? Function(SalahTimeStateAsr value)? asr,
    TResult? Function(SalahTimeStateMaghrib value)? maghrib,
    TResult? Function(SalahTimeStateIsha value)? isha,
    TResult? Function(SalahTimeStateNone value)? none,
  }) {
    return sunrise?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SalahTimeStateFajir value)? fajir,
    TResult Function(SalahTimeStateSunrise value)? sunrise,
    TResult Function(SalahTimeStateZhur value)? zhur,
    TResult Function(SalahTimeStateAsr value)? asr,
    TResult Function(SalahTimeStateMaghrib value)? maghrib,
    TResult Function(SalahTimeStateIsha value)? isha,
    TResult Function(SalahTimeStateNone value)? none,
    required TResult orElse(),
  }) {
    if (sunrise != null) {
      return sunrise(this);
    }
    return orElse();
  }
}

abstract class SalahTimeStateSunrise implements SalahTimeState {
  const factory SalahTimeStateSunrise() = _$SalahTimeStateSunriseImpl;
}

/// @nodoc
abstract class _$$SalahTimeStateZhurImplCopyWith<$Res> {
  factory _$$SalahTimeStateZhurImplCopyWith(_$SalahTimeStateZhurImpl value,
          $Res Function(_$SalahTimeStateZhurImpl) then) =
      __$$SalahTimeStateZhurImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SalahTimeStateZhurImplCopyWithImpl<$Res>
    extends _$SalahTimeStateCopyWithImpl<$Res, _$SalahTimeStateZhurImpl>
    implements _$$SalahTimeStateZhurImplCopyWith<$Res> {
  __$$SalahTimeStateZhurImplCopyWithImpl(_$SalahTimeStateZhurImpl _value,
      $Res Function(_$SalahTimeStateZhurImpl) _then)
      : super(_value, _then);

  /// Create a copy of SalahTimeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SalahTimeStateZhurImpl implements SalahTimeStateZhur {
  const _$SalahTimeStateZhurImpl();

  @override
  String toString() {
    return 'SalahTimeState.zhur()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SalahTimeStateZhurImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fajir,
    required TResult Function() sunrise,
    required TResult Function() zhur,
    required TResult Function() asr,
    required TResult Function() maghrib,
    required TResult Function() isha,
    required TResult Function() none,
  }) {
    return zhur();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fajir,
    TResult? Function()? sunrise,
    TResult? Function()? zhur,
    TResult? Function()? asr,
    TResult? Function()? maghrib,
    TResult? Function()? isha,
    TResult? Function()? none,
  }) {
    return zhur?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fajir,
    TResult Function()? sunrise,
    TResult Function()? zhur,
    TResult Function()? asr,
    TResult Function()? maghrib,
    TResult Function()? isha,
    TResult Function()? none,
    required TResult orElse(),
  }) {
    if (zhur != null) {
      return zhur();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SalahTimeStateFajir value) fajir,
    required TResult Function(SalahTimeStateSunrise value) sunrise,
    required TResult Function(SalahTimeStateZhur value) zhur,
    required TResult Function(SalahTimeStateAsr value) asr,
    required TResult Function(SalahTimeStateMaghrib value) maghrib,
    required TResult Function(SalahTimeStateIsha value) isha,
    required TResult Function(SalahTimeStateNone value) none,
  }) {
    return zhur(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SalahTimeStateFajir value)? fajir,
    TResult? Function(SalahTimeStateSunrise value)? sunrise,
    TResult? Function(SalahTimeStateZhur value)? zhur,
    TResult? Function(SalahTimeStateAsr value)? asr,
    TResult? Function(SalahTimeStateMaghrib value)? maghrib,
    TResult? Function(SalahTimeStateIsha value)? isha,
    TResult? Function(SalahTimeStateNone value)? none,
  }) {
    return zhur?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SalahTimeStateFajir value)? fajir,
    TResult Function(SalahTimeStateSunrise value)? sunrise,
    TResult Function(SalahTimeStateZhur value)? zhur,
    TResult Function(SalahTimeStateAsr value)? asr,
    TResult Function(SalahTimeStateMaghrib value)? maghrib,
    TResult Function(SalahTimeStateIsha value)? isha,
    TResult Function(SalahTimeStateNone value)? none,
    required TResult orElse(),
  }) {
    if (zhur != null) {
      return zhur(this);
    }
    return orElse();
  }
}

abstract class SalahTimeStateZhur implements SalahTimeState {
  const factory SalahTimeStateZhur() = _$SalahTimeStateZhurImpl;
}

/// @nodoc
abstract class _$$SalahTimeStateAsrImplCopyWith<$Res> {
  factory _$$SalahTimeStateAsrImplCopyWith(_$SalahTimeStateAsrImpl value,
          $Res Function(_$SalahTimeStateAsrImpl) then) =
      __$$SalahTimeStateAsrImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SalahTimeStateAsrImplCopyWithImpl<$Res>
    extends _$SalahTimeStateCopyWithImpl<$Res, _$SalahTimeStateAsrImpl>
    implements _$$SalahTimeStateAsrImplCopyWith<$Res> {
  __$$SalahTimeStateAsrImplCopyWithImpl(_$SalahTimeStateAsrImpl _value,
      $Res Function(_$SalahTimeStateAsrImpl) _then)
      : super(_value, _then);

  /// Create a copy of SalahTimeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SalahTimeStateAsrImpl implements SalahTimeStateAsr {
  const _$SalahTimeStateAsrImpl();

  @override
  String toString() {
    return 'SalahTimeState.asr()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SalahTimeStateAsrImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fajir,
    required TResult Function() sunrise,
    required TResult Function() zhur,
    required TResult Function() asr,
    required TResult Function() maghrib,
    required TResult Function() isha,
    required TResult Function() none,
  }) {
    return asr();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fajir,
    TResult? Function()? sunrise,
    TResult? Function()? zhur,
    TResult? Function()? asr,
    TResult? Function()? maghrib,
    TResult? Function()? isha,
    TResult? Function()? none,
  }) {
    return asr?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fajir,
    TResult Function()? sunrise,
    TResult Function()? zhur,
    TResult Function()? asr,
    TResult Function()? maghrib,
    TResult Function()? isha,
    TResult Function()? none,
    required TResult orElse(),
  }) {
    if (asr != null) {
      return asr();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SalahTimeStateFajir value) fajir,
    required TResult Function(SalahTimeStateSunrise value) sunrise,
    required TResult Function(SalahTimeStateZhur value) zhur,
    required TResult Function(SalahTimeStateAsr value) asr,
    required TResult Function(SalahTimeStateMaghrib value) maghrib,
    required TResult Function(SalahTimeStateIsha value) isha,
    required TResult Function(SalahTimeStateNone value) none,
  }) {
    return asr(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SalahTimeStateFajir value)? fajir,
    TResult? Function(SalahTimeStateSunrise value)? sunrise,
    TResult? Function(SalahTimeStateZhur value)? zhur,
    TResult? Function(SalahTimeStateAsr value)? asr,
    TResult? Function(SalahTimeStateMaghrib value)? maghrib,
    TResult? Function(SalahTimeStateIsha value)? isha,
    TResult? Function(SalahTimeStateNone value)? none,
  }) {
    return asr?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SalahTimeStateFajir value)? fajir,
    TResult Function(SalahTimeStateSunrise value)? sunrise,
    TResult Function(SalahTimeStateZhur value)? zhur,
    TResult Function(SalahTimeStateAsr value)? asr,
    TResult Function(SalahTimeStateMaghrib value)? maghrib,
    TResult Function(SalahTimeStateIsha value)? isha,
    TResult Function(SalahTimeStateNone value)? none,
    required TResult orElse(),
  }) {
    if (asr != null) {
      return asr(this);
    }
    return orElse();
  }
}

abstract class SalahTimeStateAsr implements SalahTimeState {
  const factory SalahTimeStateAsr() = _$SalahTimeStateAsrImpl;
}

/// @nodoc
abstract class _$$SalahTimeStateMaghribImplCopyWith<$Res> {
  factory _$$SalahTimeStateMaghribImplCopyWith(
          _$SalahTimeStateMaghribImpl value,
          $Res Function(_$SalahTimeStateMaghribImpl) then) =
      __$$SalahTimeStateMaghribImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SalahTimeStateMaghribImplCopyWithImpl<$Res>
    extends _$SalahTimeStateCopyWithImpl<$Res, _$SalahTimeStateMaghribImpl>
    implements _$$SalahTimeStateMaghribImplCopyWith<$Res> {
  __$$SalahTimeStateMaghribImplCopyWithImpl(_$SalahTimeStateMaghribImpl _value,
      $Res Function(_$SalahTimeStateMaghribImpl) _then)
      : super(_value, _then);

  /// Create a copy of SalahTimeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SalahTimeStateMaghribImpl implements SalahTimeStateMaghrib {
  const _$SalahTimeStateMaghribImpl();

  @override
  String toString() {
    return 'SalahTimeState.maghrib()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SalahTimeStateMaghribImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fajir,
    required TResult Function() sunrise,
    required TResult Function() zhur,
    required TResult Function() asr,
    required TResult Function() maghrib,
    required TResult Function() isha,
    required TResult Function() none,
  }) {
    return maghrib();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fajir,
    TResult? Function()? sunrise,
    TResult? Function()? zhur,
    TResult? Function()? asr,
    TResult? Function()? maghrib,
    TResult? Function()? isha,
    TResult? Function()? none,
  }) {
    return maghrib?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fajir,
    TResult Function()? sunrise,
    TResult Function()? zhur,
    TResult Function()? asr,
    TResult Function()? maghrib,
    TResult Function()? isha,
    TResult Function()? none,
    required TResult orElse(),
  }) {
    if (maghrib != null) {
      return maghrib();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SalahTimeStateFajir value) fajir,
    required TResult Function(SalahTimeStateSunrise value) sunrise,
    required TResult Function(SalahTimeStateZhur value) zhur,
    required TResult Function(SalahTimeStateAsr value) asr,
    required TResult Function(SalahTimeStateMaghrib value) maghrib,
    required TResult Function(SalahTimeStateIsha value) isha,
    required TResult Function(SalahTimeStateNone value) none,
  }) {
    return maghrib(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SalahTimeStateFajir value)? fajir,
    TResult? Function(SalahTimeStateSunrise value)? sunrise,
    TResult? Function(SalahTimeStateZhur value)? zhur,
    TResult? Function(SalahTimeStateAsr value)? asr,
    TResult? Function(SalahTimeStateMaghrib value)? maghrib,
    TResult? Function(SalahTimeStateIsha value)? isha,
    TResult? Function(SalahTimeStateNone value)? none,
  }) {
    return maghrib?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SalahTimeStateFajir value)? fajir,
    TResult Function(SalahTimeStateSunrise value)? sunrise,
    TResult Function(SalahTimeStateZhur value)? zhur,
    TResult Function(SalahTimeStateAsr value)? asr,
    TResult Function(SalahTimeStateMaghrib value)? maghrib,
    TResult Function(SalahTimeStateIsha value)? isha,
    TResult Function(SalahTimeStateNone value)? none,
    required TResult orElse(),
  }) {
    if (maghrib != null) {
      return maghrib(this);
    }
    return orElse();
  }
}

abstract class SalahTimeStateMaghrib implements SalahTimeState {
  const factory SalahTimeStateMaghrib() = _$SalahTimeStateMaghribImpl;
}

/// @nodoc
abstract class _$$SalahTimeStateIshaImplCopyWith<$Res> {
  factory _$$SalahTimeStateIshaImplCopyWith(_$SalahTimeStateIshaImpl value,
          $Res Function(_$SalahTimeStateIshaImpl) then) =
      __$$SalahTimeStateIshaImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SalahTimeStateIshaImplCopyWithImpl<$Res>
    extends _$SalahTimeStateCopyWithImpl<$Res, _$SalahTimeStateIshaImpl>
    implements _$$SalahTimeStateIshaImplCopyWith<$Res> {
  __$$SalahTimeStateIshaImplCopyWithImpl(_$SalahTimeStateIshaImpl _value,
      $Res Function(_$SalahTimeStateIshaImpl) _then)
      : super(_value, _then);

  /// Create a copy of SalahTimeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SalahTimeStateIshaImpl implements SalahTimeStateIsha {
  const _$SalahTimeStateIshaImpl();

  @override
  String toString() {
    return 'SalahTimeState.isha()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SalahTimeStateIshaImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fajir,
    required TResult Function() sunrise,
    required TResult Function() zhur,
    required TResult Function() asr,
    required TResult Function() maghrib,
    required TResult Function() isha,
    required TResult Function() none,
  }) {
    return isha();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fajir,
    TResult? Function()? sunrise,
    TResult? Function()? zhur,
    TResult? Function()? asr,
    TResult? Function()? maghrib,
    TResult? Function()? isha,
    TResult? Function()? none,
  }) {
    return isha?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fajir,
    TResult Function()? sunrise,
    TResult Function()? zhur,
    TResult Function()? asr,
    TResult Function()? maghrib,
    TResult Function()? isha,
    TResult Function()? none,
    required TResult orElse(),
  }) {
    if (isha != null) {
      return isha();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SalahTimeStateFajir value) fajir,
    required TResult Function(SalahTimeStateSunrise value) sunrise,
    required TResult Function(SalahTimeStateZhur value) zhur,
    required TResult Function(SalahTimeStateAsr value) asr,
    required TResult Function(SalahTimeStateMaghrib value) maghrib,
    required TResult Function(SalahTimeStateIsha value) isha,
    required TResult Function(SalahTimeStateNone value) none,
  }) {
    return isha(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SalahTimeStateFajir value)? fajir,
    TResult? Function(SalahTimeStateSunrise value)? sunrise,
    TResult? Function(SalahTimeStateZhur value)? zhur,
    TResult? Function(SalahTimeStateAsr value)? asr,
    TResult? Function(SalahTimeStateMaghrib value)? maghrib,
    TResult? Function(SalahTimeStateIsha value)? isha,
    TResult? Function(SalahTimeStateNone value)? none,
  }) {
    return isha?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SalahTimeStateFajir value)? fajir,
    TResult Function(SalahTimeStateSunrise value)? sunrise,
    TResult Function(SalahTimeStateZhur value)? zhur,
    TResult Function(SalahTimeStateAsr value)? asr,
    TResult Function(SalahTimeStateMaghrib value)? maghrib,
    TResult Function(SalahTimeStateIsha value)? isha,
    TResult Function(SalahTimeStateNone value)? none,
    required TResult orElse(),
  }) {
    if (isha != null) {
      return isha(this);
    }
    return orElse();
  }
}

abstract class SalahTimeStateIsha implements SalahTimeState {
  const factory SalahTimeStateIsha() = _$SalahTimeStateIshaImpl;
}

/// @nodoc
abstract class _$$SalahTimeStateNoneImplCopyWith<$Res> {
  factory _$$SalahTimeStateNoneImplCopyWith(_$SalahTimeStateNoneImpl value,
          $Res Function(_$SalahTimeStateNoneImpl) then) =
      __$$SalahTimeStateNoneImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SalahTimeStateNoneImplCopyWithImpl<$Res>
    extends _$SalahTimeStateCopyWithImpl<$Res, _$SalahTimeStateNoneImpl>
    implements _$$SalahTimeStateNoneImplCopyWith<$Res> {
  __$$SalahTimeStateNoneImplCopyWithImpl(_$SalahTimeStateNoneImpl _value,
      $Res Function(_$SalahTimeStateNoneImpl) _then)
      : super(_value, _then);

  /// Create a copy of SalahTimeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SalahTimeStateNoneImpl implements SalahTimeStateNone {
  const _$SalahTimeStateNoneImpl();

  @override
  String toString() {
    return 'SalahTimeState.none()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SalahTimeStateNoneImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fajir,
    required TResult Function() sunrise,
    required TResult Function() zhur,
    required TResult Function() asr,
    required TResult Function() maghrib,
    required TResult Function() isha,
    required TResult Function() none,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fajir,
    TResult? Function()? sunrise,
    TResult? Function()? zhur,
    TResult? Function()? asr,
    TResult? Function()? maghrib,
    TResult? Function()? isha,
    TResult? Function()? none,
  }) {
    return none?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fajir,
    TResult Function()? sunrise,
    TResult Function()? zhur,
    TResult Function()? asr,
    TResult Function()? maghrib,
    TResult Function()? isha,
    TResult Function()? none,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SalahTimeStateFajir value) fajir,
    required TResult Function(SalahTimeStateSunrise value) sunrise,
    required TResult Function(SalahTimeStateZhur value) zhur,
    required TResult Function(SalahTimeStateAsr value) asr,
    required TResult Function(SalahTimeStateMaghrib value) maghrib,
    required TResult Function(SalahTimeStateIsha value) isha,
    required TResult Function(SalahTimeStateNone value) none,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SalahTimeStateFajir value)? fajir,
    TResult? Function(SalahTimeStateSunrise value)? sunrise,
    TResult? Function(SalahTimeStateZhur value)? zhur,
    TResult? Function(SalahTimeStateAsr value)? asr,
    TResult? Function(SalahTimeStateMaghrib value)? maghrib,
    TResult? Function(SalahTimeStateIsha value)? isha,
    TResult? Function(SalahTimeStateNone value)? none,
  }) {
    return none?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SalahTimeStateFajir value)? fajir,
    TResult Function(SalahTimeStateSunrise value)? sunrise,
    TResult Function(SalahTimeStateZhur value)? zhur,
    TResult Function(SalahTimeStateAsr value)? asr,
    TResult Function(SalahTimeStateMaghrib value)? maghrib,
    TResult Function(SalahTimeStateIsha value)? isha,
    TResult Function(SalahTimeStateNone value)? none,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class SalahTimeStateNone implements SalahTimeState {
  const factory SalahTimeStateNone() = _$SalahTimeStateNoneImpl;
}