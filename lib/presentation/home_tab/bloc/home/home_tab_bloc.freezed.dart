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
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$HomeTabEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) initialize,
    required TResult Function(bool status) updateExpandedStatus,
    required TResult Function(bool status) updateShowingNotificationView,
    required TResult Function(bool status) updateShowingLocationView,
    required TResult Function(SalahTimeState nextPrayType) updateNextPrayType,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? initialize,
    TResult? Function(bool status)? updateExpandedStatus,
    TResult? Function(bool status)? updateShowingNotificationView,
    TResult? Function(bool status)? updateShowingLocationView,
    TResult? Function(SalahTimeState nextPrayType)? updateNextPrayType,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? initialize,
    TResult Function(bool status)? updateExpandedStatus,
    TResult Function(bool status)? updateShowingNotificationView,
    TResult Function(bool status)? updateShowingLocationView,
    TResult Function(SalahTimeState nextPrayType)? updateNextPrayType,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_UpdateExpandedStatus value) updateExpandedStatus,
    required TResult Function(_UpdateShowingNotificationView value)
    updateShowingNotificationView,
    required TResult Function(_UpdateShowingLocationView value)
    updateShowingLocationView,
    required TResult Function(_UpdateNextPrayType value) updateNextPrayType,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_UpdateExpandedStatus value)? updateExpandedStatus,
    TResult? Function(_UpdateShowingNotificationView value)?
    updateShowingNotificationView,
    TResult? Function(_UpdateShowingLocationView value)?
    updateShowingLocationView,
    TResult? Function(_UpdateNextPrayType value)? updateNextPrayType,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_UpdateExpandedStatus value)? updateExpandedStatus,
    TResult Function(_UpdateShowingNotificationView value)?
    updateShowingNotificationView,
    TResult Function(_UpdateShowingLocationView value)?
    updateShowingLocationView,
    TResult Function(_UpdateNextPrayType value)? updateNextPrayType,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeTabEventCopyWith<$Res> {
  factory $HomeTabEventCopyWith(
    HomeTabEvent value,
    $Res Function(HomeTabEvent) then,
  ) = _$HomeTabEventCopyWithImpl<$Res, HomeTabEvent>;
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
abstract class _$$InitializeImplCopyWith<$Res> {
  factory _$$InitializeImplCopyWith(
    _$InitializeImpl value,
    $Res Function(_$InitializeImpl) then,
  ) = __$$InitializeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$InitializeImplCopyWithImpl<$Res>
    extends _$HomeTabEventCopyWithImpl<$Res, _$InitializeImpl>
    implements _$$InitializeImplCopyWith<$Res> {
  __$$InitializeImplCopyWithImpl(
    _$InitializeImpl _value,
    $Res Function(_$InitializeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeTabEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? context = null}) {
    return _then(
      _$InitializeImpl(
        null == context
            ? _value.context
            : context // ignore: cast_nullable_to_non_nullable
                  as BuildContext,
      ),
    );
  }
}

/// @nodoc

class _$InitializeImpl implements _Initialize {
  _$InitializeImpl(this.context);

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'HomeTabEvent.initialize(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializeImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  /// Create a copy of HomeTabEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializeImplCopyWith<_$InitializeImpl> get copyWith =>
      __$$InitializeImplCopyWithImpl<_$InitializeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) initialize,
    required TResult Function(bool status) updateExpandedStatus,
    required TResult Function(bool status) updateShowingNotificationView,
    required TResult Function(bool status) updateShowingLocationView,
    required TResult Function(SalahTimeState nextPrayType) updateNextPrayType,
  }) {
    return initialize(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? initialize,
    TResult? Function(bool status)? updateExpandedStatus,
    TResult? Function(bool status)? updateShowingNotificationView,
    TResult? Function(bool status)? updateShowingLocationView,
    TResult? Function(SalahTimeState nextPrayType)? updateNextPrayType,
  }) {
    return initialize?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? initialize,
    TResult Function(bool status)? updateExpandedStatus,
    TResult Function(bool status)? updateShowingNotificationView,
    TResult Function(bool status)? updateShowingLocationView,
    TResult Function(SalahTimeState nextPrayType)? updateNextPrayType,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_UpdateExpandedStatus value) updateExpandedStatus,
    required TResult Function(_UpdateShowingNotificationView value)
    updateShowingNotificationView,
    required TResult Function(_UpdateShowingLocationView value)
    updateShowingLocationView,
    required TResult Function(_UpdateNextPrayType value) updateNextPrayType,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_UpdateExpandedStatus value)? updateExpandedStatus,
    TResult? Function(_UpdateShowingNotificationView value)?
    updateShowingNotificationView,
    TResult? Function(_UpdateShowingLocationView value)?
    updateShowingLocationView,
    TResult? Function(_UpdateNextPrayType value)? updateNextPrayType,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_UpdateExpandedStatus value)? updateExpandedStatus,
    TResult Function(_UpdateShowingNotificationView value)?
    updateShowingNotificationView,
    TResult Function(_UpdateShowingLocationView value)?
    updateShowingLocationView,
    TResult Function(_UpdateNextPrayType value)? updateNextPrayType,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _Initialize implements HomeTabEvent {
  factory _Initialize(final BuildContext context) = _$InitializeImpl;

  BuildContext get context;

  /// Create a copy of HomeTabEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitializeImplCopyWith<_$InitializeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateExpandedStatusImplCopyWith<$Res> {
  factory _$$UpdateExpandedStatusImplCopyWith(
    _$UpdateExpandedStatusImpl value,
    $Res Function(_$UpdateExpandedStatusImpl) then,
  ) = __$$UpdateExpandedStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool status});
}

/// @nodoc
class __$$UpdateExpandedStatusImplCopyWithImpl<$Res>
    extends _$HomeTabEventCopyWithImpl<$Res, _$UpdateExpandedStatusImpl>
    implements _$$UpdateExpandedStatusImplCopyWith<$Res> {
  __$$UpdateExpandedStatusImplCopyWithImpl(
    _$UpdateExpandedStatusImpl _value,
    $Res Function(_$UpdateExpandedStatusImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeTabEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null}) {
    return _then(
      _$UpdateExpandedStatusImpl(
        null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
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
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) initialize,
    required TResult Function(bool status) updateExpandedStatus,
    required TResult Function(bool status) updateShowingNotificationView,
    required TResult Function(bool status) updateShowingLocationView,
    required TResult Function(SalahTimeState nextPrayType) updateNextPrayType,
  }) {
    return updateExpandedStatus(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? initialize,
    TResult? Function(bool status)? updateExpandedStatus,
    TResult? Function(bool status)? updateShowingNotificationView,
    TResult? Function(bool status)? updateShowingLocationView,
    TResult? Function(SalahTimeState nextPrayType)? updateNextPrayType,
  }) {
    return updateExpandedStatus?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? initialize,
    TResult Function(bool status)? updateExpandedStatus,
    TResult Function(bool status)? updateShowingNotificationView,
    TResult Function(bool status)? updateShowingLocationView,
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
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_UpdateExpandedStatus value) updateExpandedStatus,
    required TResult Function(_UpdateShowingNotificationView value)
    updateShowingNotificationView,
    required TResult Function(_UpdateShowingLocationView value)
    updateShowingLocationView,
    required TResult Function(_UpdateNextPrayType value) updateNextPrayType,
  }) {
    return updateExpandedStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_UpdateExpandedStatus value)? updateExpandedStatus,
    TResult? Function(_UpdateShowingNotificationView value)?
    updateShowingNotificationView,
    TResult? Function(_UpdateShowingLocationView value)?
    updateShowingLocationView,
    TResult? Function(_UpdateNextPrayType value)? updateNextPrayType,
  }) {
    return updateExpandedStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_UpdateExpandedStatus value)? updateExpandedStatus,
    TResult Function(_UpdateShowingNotificationView value)?
    updateShowingNotificationView,
    TResult Function(_UpdateShowingLocationView value)?
    updateShowingLocationView,
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
    $Res Function(_$UpdateShowingNotificationViewImpl) then,
  ) = __$$UpdateShowingNotificationViewImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool status});
}

/// @nodoc
class __$$UpdateShowingNotificationViewImplCopyWithImpl<$Res>
    extends
        _$HomeTabEventCopyWithImpl<$Res, _$UpdateShowingNotificationViewImpl>
    implements _$$UpdateShowingNotificationViewImplCopyWith<$Res> {
  __$$UpdateShowingNotificationViewImplCopyWithImpl(
    _$UpdateShowingNotificationViewImpl _value,
    $Res Function(_$UpdateShowingNotificationViewImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeTabEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null}) {
    return _then(
      _$UpdateShowingNotificationViewImpl(
        null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
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
    _$UpdateShowingNotificationViewImpl
  >
  get copyWith =>
      __$$UpdateShowingNotificationViewImplCopyWithImpl<
        _$UpdateShowingNotificationViewImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) initialize,
    required TResult Function(bool status) updateExpandedStatus,
    required TResult Function(bool status) updateShowingNotificationView,
    required TResult Function(bool status) updateShowingLocationView,
    required TResult Function(SalahTimeState nextPrayType) updateNextPrayType,
  }) {
    return updateShowingNotificationView(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? initialize,
    TResult? Function(bool status)? updateExpandedStatus,
    TResult? Function(bool status)? updateShowingNotificationView,
    TResult? Function(bool status)? updateShowingLocationView,
    TResult? Function(SalahTimeState nextPrayType)? updateNextPrayType,
  }) {
    return updateShowingNotificationView?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? initialize,
    TResult Function(bool status)? updateExpandedStatus,
    TResult Function(bool status)? updateShowingNotificationView,
    TResult Function(bool status)? updateShowingLocationView,
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
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_UpdateExpandedStatus value) updateExpandedStatus,
    required TResult Function(_UpdateShowingNotificationView value)
    updateShowingNotificationView,
    required TResult Function(_UpdateShowingLocationView value)
    updateShowingLocationView,
    required TResult Function(_UpdateNextPrayType value) updateNextPrayType,
  }) {
    return updateShowingNotificationView(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_UpdateExpandedStatus value)? updateExpandedStatus,
    TResult? Function(_UpdateShowingNotificationView value)?
    updateShowingNotificationView,
    TResult? Function(_UpdateShowingLocationView value)?
    updateShowingLocationView,
    TResult? Function(_UpdateNextPrayType value)? updateNextPrayType,
  }) {
    return updateShowingNotificationView?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_UpdateExpandedStatus value)? updateExpandedStatus,
    TResult Function(_UpdateShowingNotificationView value)?
    updateShowingNotificationView,
    TResult Function(_UpdateShowingLocationView value)?
    updateShowingLocationView,
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
    _$UpdateShowingNotificationViewImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateShowingLocationViewImplCopyWith<$Res> {
  factory _$$UpdateShowingLocationViewImplCopyWith(
    _$UpdateShowingLocationViewImpl value,
    $Res Function(_$UpdateShowingLocationViewImpl) then,
  ) = __$$UpdateShowingLocationViewImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool status});
}

/// @nodoc
class __$$UpdateShowingLocationViewImplCopyWithImpl<$Res>
    extends _$HomeTabEventCopyWithImpl<$Res, _$UpdateShowingLocationViewImpl>
    implements _$$UpdateShowingLocationViewImplCopyWith<$Res> {
  __$$UpdateShowingLocationViewImplCopyWithImpl(
    _$UpdateShowingLocationViewImpl _value,
    $Res Function(_$UpdateShowingLocationViewImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeTabEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null}) {
    return _then(
      _$UpdateShowingLocationViewImpl(
        null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$UpdateShowingLocationViewImpl implements _UpdateShowingLocationView {
  _$UpdateShowingLocationViewImpl(this.status);

  @override
  final bool status;

  @override
  String toString() {
    return 'HomeTabEvent.updateShowingLocationView(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateShowingLocationViewImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of HomeTabEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateShowingLocationViewImplCopyWith<_$UpdateShowingLocationViewImpl>
  get copyWith =>
      __$$UpdateShowingLocationViewImplCopyWithImpl<
        _$UpdateShowingLocationViewImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) initialize,
    required TResult Function(bool status) updateExpandedStatus,
    required TResult Function(bool status) updateShowingNotificationView,
    required TResult Function(bool status) updateShowingLocationView,
    required TResult Function(SalahTimeState nextPrayType) updateNextPrayType,
  }) {
    return updateShowingLocationView(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? initialize,
    TResult? Function(bool status)? updateExpandedStatus,
    TResult? Function(bool status)? updateShowingNotificationView,
    TResult? Function(bool status)? updateShowingLocationView,
    TResult? Function(SalahTimeState nextPrayType)? updateNextPrayType,
  }) {
    return updateShowingLocationView?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? initialize,
    TResult Function(bool status)? updateExpandedStatus,
    TResult Function(bool status)? updateShowingNotificationView,
    TResult Function(bool status)? updateShowingLocationView,
    TResult Function(SalahTimeState nextPrayType)? updateNextPrayType,
    required TResult orElse(),
  }) {
    if (updateShowingLocationView != null) {
      return updateShowingLocationView(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_UpdateExpandedStatus value) updateExpandedStatus,
    required TResult Function(_UpdateShowingNotificationView value)
    updateShowingNotificationView,
    required TResult Function(_UpdateShowingLocationView value)
    updateShowingLocationView,
    required TResult Function(_UpdateNextPrayType value) updateNextPrayType,
  }) {
    return updateShowingLocationView(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_UpdateExpandedStatus value)? updateExpandedStatus,
    TResult? Function(_UpdateShowingNotificationView value)?
    updateShowingNotificationView,
    TResult? Function(_UpdateShowingLocationView value)?
    updateShowingLocationView,
    TResult? Function(_UpdateNextPrayType value)? updateNextPrayType,
  }) {
    return updateShowingLocationView?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_UpdateExpandedStatus value)? updateExpandedStatus,
    TResult Function(_UpdateShowingNotificationView value)?
    updateShowingNotificationView,
    TResult Function(_UpdateShowingLocationView value)?
    updateShowingLocationView,
    TResult Function(_UpdateNextPrayType value)? updateNextPrayType,
    required TResult orElse(),
  }) {
    if (updateShowingLocationView != null) {
      return updateShowingLocationView(this);
    }
    return orElse();
  }
}

abstract class _UpdateShowingLocationView implements HomeTabEvent {
  factory _UpdateShowingLocationView(final bool status) =
      _$UpdateShowingLocationViewImpl;

  bool get status;

  /// Create a copy of HomeTabEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateShowingLocationViewImplCopyWith<_$UpdateShowingLocationViewImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateNextPrayTypeImplCopyWith<$Res> {
  factory _$$UpdateNextPrayTypeImplCopyWith(
    _$UpdateNextPrayTypeImpl value,
    $Res Function(_$UpdateNextPrayTypeImpl) then,
  ) = __$$UpdateNextPrayTypeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SalahTimeState nextPrayType});

  $SalahTimeStateCopyWith<$Res> get nextPrayType;
}

/// @nodoc
class __$$UpdateNextPrayTypeImplCopyWithImpl<$Res>
    extends _$HomeTabEventCopyWithImpl<$Res, _$UpdateNextPrayTypeImpl>
    implements _$$UpdateNextPrayTypeImplCopyWith<$Res> {
  __$$UpdateNextPrayTypeImplCopyWithImpl(
    _$UpdateNextPrayTypeImpl _value,
    $Res Function(_$UpdateNextPrayTypeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeTabEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? nextPrayType = null}) {
    return _then(
      _$UpdateNextPrayTypeImpl(
        null == nextPrayType
            ? _value.nextPrayType
            : nextPrayType // ignore: cast_nullable_to_non_nullable
                  as SalahTimeState,
      ),
    );
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
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) initialize,
    required TResult Function(bool status) updateExpandedStatus,
    required TResult Function(bool status) updateShowingNotificationView,
    required TResult Function(bool status) updateShowingLocationView,
    required TResult Function(SalahTimeState nextPrayType) updateNextPrayType,
  }) {
    return updateNextPrayType(nextPrayType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? initialize,
    TResult? Function(bool status)? updateExpandedStatus,
    TResult? Function(bool status)? updateShowingNotificationView,
    TResult? Function(bool status)? updateShowingLocationView,
    TResult? Function(SalahTimeState nextPrayType)? updateNextPrayType,
  }) {
    return updateNextPrayType?.call(nextPrayType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? initialize,
    TResult Function(bool status)? updateExpandedStatus,
    TResult Function(bool status)? updateShowingNotificationView,
    TResult Function(bool status)? updateShowingLocationView,
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
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_UpdateExpandedStatus value) updateExpandedStatus,
    required TResult Function(_UpdateShowingNotificationView value)
    updateShowingNotificationView,
    required TResult Function(_UpdateShowingLocationView value)
    updateShowingLocationView,
    required TResult Function(_UpdateNextPrayType value) updateNextPrayType,
  }) {
    return updateNextPrayType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_UpdateExpandedStatus value)? updateExpandedStatus,
    TResult? Function(_UpdateShowingNotificationView value)?
    updateShowingNotificationView,
    TResult? Function(_UpdateShowingLocationView value)?
    updateShowingLocationView,
    TResult? Function(_UpdateNextPrayType value)? updateNextPrayType,
  }) {
    return updateNextPrayType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_UpdateExpandedStatus value)? updateExpandedStatus,
    TResult Function(_UpdateShowingNotificationView value)?
    updateShowingNotificationView,
    TResult Function(_UpdateShowingLocationView value)?
    updateShowingLocationView,
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
  bool get showAllowLocationView => throw _privateConstructorUsedError;
  SalahTimeState get nextPrayType => throw _privateConstructorUsedError;
  dynamic get loadingStatus => throw _privateConstructorUsedError;

  /// Create a copy of HomeTabState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeTabStateCopyWith<HomeTabState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeTabStateCopyWith<$Res> {
  factory $HomeTabStateCopyWith(
    HomeTabState value,
    $Res Function(HomeTabState) then,
  ) = _$HomeTabStateCopyWithImpl<$Res, HomeTabState>;
  @useResult
  $Res call({
    bool isBarExpanded,
    bool showAllowNotificationView,
    bool showAllowLocationView,
    SalahTimeState nextPrayType,
    dynamic loadingStatus,
  });

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
    Object? showAllowLocationView = null,
    Object? nextPrayType = null,
    Object? loadingStatus = freezed,
  }) {
    return _then(
      _value.copyWith(
            isBarExpanded: null == isBarExpanded
                ? _value.isBarExpanded
                : isBarExpanded // ignore: cast_nullable_to_non_nullable
                      as bool,
            showAllowNotificationView: null == showAllowNotificationView
                ? _value.showAllowNotificationView
                : showAllowNotificationView // ignore: cast_nullable_to_non_nullable
                      as bool,
            showAllowLocationView: null == showAllowLocationView
                ? _value.showAllowLocationView
                : showAllowLocationView // ignore: cast_nullable_to_non_nullable
                      as bool,
            nextPrayType: null == nextPrayType
                ? _value.nextPrayType
                : nextPrayType // ignore: cast_nullable_to_non_nullable
                      as SalahTimeState,
            loadingStatus: freezed == loadingStatus
                ? _value.loadingStatus
                : loadingStatus // ignore: cast_nullable_to_non_nullable
                      as dynamic,
          )
          as $Val,
    );
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
    _$HomeTabStateImpl value,
    $Res Function(_$HomeTabStateImpl) then,
  ) = __$$HomeTabStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool isBarExpanded,
    bool showAllowNotificationView,
    bool showAllowLocationView,
    SalahTimeState nextPrayType,
    dynamic loadingStatus,
  });

  @override
  $SalahTimeStateCopyWith<$Res> get nextPrayType;
}

/// @nodoc
class __$$HomeTabStateImplCopyWithImpl<$Res>
    extends _$HomeTabStateCopyWithImpl<$Res, _$HomeTabStateImpl>
    implements _$$HomeTabStateImplCopyWith<$Res> {
  __$$HomeTabStateImplCopyWithImpl(
    _$HomeTabStateImpl _value,
    $Res Function(_$HomeTabStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeTabState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isBarExpanded = null,
    Object? showAllowNotificationView = null,
    Object? showAllowLocationView = null,
    Object? nextPrayType = null,
    Object? loadingStatus = freezed,
  }) {
    return _then(
      _$HomeTabStateImpl(
        isBarExpanded: null == isBarExpanded
            ? _value.isBarExpanded
            : isBarExpanded // ignore: cast_nullable_to_non_nullable
                  as bool,
        showAllowNotificationView: null == showAllowNotificationView
            ? _value.showAllowNotificationView
            : showAllowNotificationView // ignore: cast_nullable_to_non_nullable
                  as bool,
        showAllowLocationView: null == showAllowLocationView
            ? _value.showAllowLocationView
            : showAllowLocationView // ignore: cast_nullable_to_non_nullable
                  as bool,
        nextPrayType: null == nextPrayType
            ? _value.nextPrayType
            : nextPrayType // ignore: cast_nullable_to_non_nullable
                  as SalahTimeState,
        loadingStatus: freezed == loadingStatus
            ? _value.loadingStatus!
            : loadingStatus,
      ),
    );
  }
}

/// @nodoc

class _$HomeTabStateImpl implements _HomeTabState {
  const _$HomeTabStateImpl({
    this.isBarExpanded = true,
    this.showAllowNotificationView = false,
    this.showAllowLocationView = false,
    this.nextPrayType = const SalahTimeState.none(),
    this.loadingStatus = const HomeScreenProcessState.loading(),
  });

  @override
  @JsonKey()
  final bool isBarExpanded;
  @override
  @JsonKey()
  final bool showAllowNotificationView;
  @override
  @JsonKey()
  final bool showAllowLocationView;
  @override
  @JsonKey()
  final SalahTimeState nextPrayType;
  @override
  @JsonKey()
  final dynamic loadingStatus;

  @override
  String toString() {
    return 'HomeTabState(isBarExpanded: $isBarExpanded, showAllowNotificationView: $showAllowNotificationView, showAllowLocationView: $showAllowLocationView, nextPrayType: $nextPrayType, loadingStatus: $loadingStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeTabStateImpl &&
            (identical(other.isBarExpanded, isBarExpanded) ||
                other.isBarExpanded == isBarExpanded) &&
            (identical(
                  other.showAllowNotificationView,
                  showAllowNotificationView,
                ) ||
                other.showAllowNotificationView == showAllowNotificationView) &&
            (identical(other.showAllowLocationView, showAllowLocationView) ||
                other.showAllowLocationView == showAllowLocationView) &&
            (identical(other.nextPrayType, nextPrayType) ||
                other.nextPrayType == nextPrayType) &&
            const DeepCollectionEquality().equals(
              other.loadingStatus,
              loadingStatus,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    isBarExpanded,
    showAllowNotificationView,
    showAllowLocationView,
    nextPrayType,
    const DeepCollectionEquality().hash(loadingStatus),
  );

  /// Create a copy of HomeTabState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeTabStateImplCopyWith<_$HomeTabStateImpl> get copyWith =>
      __$$HomeTabStateImplCopyWithImpl<_$HomeTabStateImpl>(this, _$identity);
}

abstract class _HomeTabState implements HomeTabState {
  const factory _HomeTabState({
    final bool isBarExpanded,
    final bool showAllowNotificationView,
    final bool showAllowLocationView,
    final SalahTimeState nextPrayType,
    final dynamic loadingStatus,
  }) = _$HomeTabStateImpl;

  @override
  bool get isBarExpanded;
  @override
  bool get showAllowNotificationView;
  @override
  bool get showAllowLocationView;
  @override
  SalahTimeState get nextPrayType;
  @override
  dynamic get loadingStatus;

  /// Create a copy of HomeTabState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeTabStateImplCopyWith<_$HomeTabStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeScreenProcessState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() done,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? done,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? done,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeScreenProcessStateLoading value) loading,
    required TResult Function(HomeScreenProcessStateDone value) done,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeScreenProcessStateLoading value)? loading,
    TResult? Function(HomeScreenProcessStateDone value)? done,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeScreenProcessStateLoading value)? loading,
    TResult Function(HomeScreenProcessStateDone value)? done,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeScreenProcessStateCopyWith<$Res> {
  factory $HomeScreenProcessStateCopyWith(
    HomeScreenProcessState value,
    $Res Function(HomeScreenProcessState) then,
  ) = _$HomeScreenProcessStateCopyWithImpl<$Res, HomeScreenProcessState>;
}

/// @nodoc
class _$HomeScreenProcessStateCopyWithImpl<
  $Res,
  $Val extends HomeScreenProcessState
>
    implements $HomeScreenProcessStateCopyWith<$Res> {
  _$HomeScreenProcessStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeScreenProcessState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$HomeScreenProcessStateLoadingImplCopyWith<$Res> {
  factory _$$HomeScreenProcessStateLoadingImplCopyWith(
    _$HomeScreenProcessStateLoadingImpl value,
    $Res Function(_$HomeScreenProcessStateLoadingImpl) then,
  ) = __$$HomeScreenProcessStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeScreenProcessStateLoadingImplCopyWithImpl<$Res>
    extends
        _$HomeScreenProcessStateCopyWithImpl<
          $Res,
          _$HomeScreenProcessStateLoadingImpl
        >
    implements _$$HomeScreenProcessStateLoadingImplCopyWith<$Res> {
  __$$HomeScreenProcessStateLoadingImplCopyWithImpl(
    _$HomeScreenProcessStateLoadingImpl _value,
    $Res Function(_$HomeScreenProcessStateLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeScreenProcessState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HomeScreenProcessStateLoadingImpl
    implements HomeScreenProcessStateLoading {
  const _$HomeScreenProcessStateLoadingImpl();

  @override
  String toString() {
    return 'HomeScreenProcessState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeScreenProcessStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() done,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? done,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? done,
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
    required TResult Function(HomeScreenProcessStateLoading value) loading,
    required TResult Function(HomeScreenProcessStateDone value) done,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeScreenProcessStateLoading value)? loading,
    TResult? Function(HomeScreenProcessStateDone value)? done,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeScreenProcessStateLoading value)? loading,
    TResult Function(HomeScreenProcessStateDone value)? done,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class HomeScreenProcessStateLoading implements HomeScreenProcessState {
  const factory HomeScreenProcessStateLoading() =
      _$HomeScreenProcessStateLoadingImpl;
}

/// @nodoc
abstract class _$$HomeScreenProcessStateDoneImplCopyWith<$Res> {
  factory _$$HomeScreenProcessStateDoneImplCopyWith(
    _$HomeScreenProcessStateDoneImpl value,
    $Res Function(_$HomeScreenProcessStateDoneImpl) then,
  ) = __$$HomeScreenProcessStateDoneImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeScreenProcessStateDoneImplCopyWithImpl<$Res>
    extends
        _$HomeScreenProcessStateCopyWithImpl<
          $Res,
          _$HomeScreenProcessStateDoneImpl
        >
    implements _$$HomeScreenProcessStateDoneImplCopyWith<$Res> {
  __$$HomeScreenProcessStateDoneImplCopyWithImpl(
    _$HomeScreenProcessStateDoneImpl _value,
    $Res Function(_$HomeScreenProcessStateDoneImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeScreenProcessState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HomeScreenProcessStateDoneImpl implements HomeScreenProcessStateDone {
  const _$HomeScreenProcessStateDoneImpl();

  @override
  String toString() {
    return 'HomeScreenProcessState.done()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeScreenProcessStateDoneImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() done,
  }) {
    return done();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? done,
  }) {
    return done?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? done,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeScreenProcessStateLoading value) loading,
    required TResult Function(HomeScreenProcessStateDone value) done,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeScreenProcessStateLoading value)? loading,
    TResult? Function(HomeScreenProcessStateDone value)? done,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeScreenProcessStateLoading value)? loading,
    TResult Function(HomeScreenProcessStateDone value)? done,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class HomeScreenProcessStateDone implements HomeScreenProcessState {
  const factory HomeScreenProcessStateDone() = _$HomeScreenProcessStateDoneImpl;
}
