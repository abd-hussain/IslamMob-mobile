// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notifications_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$NotificationsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NotificationsProcessState status)
    changeNotificationStatus,
    required TResult Function(String token) setupToken,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NotificationsProcessState status)?
    changeNotificationStatus,
    TResult? Function(String token)? setupToken,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NotificationsProcessState status)?
    changeNotificationStatus,
    TResult Function(String token)? setupToken,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeNotificationStatus value)
    changeNotificationStatus,
    required TResult Function(_SetupToken value) setupToken,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeNotificationStatus value)?
    changeNotificationStatus,
    TResult? Function(_SetupToken value)? setupToken,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeNotificationStatus value)? changeNotificationStatus,
    TResult Function(_SetupToken value)? setupToken,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationsEventCopyWith<$Res> {
  factory $NotificationsEventCopyWith(
    NotificationsEvent value,
    $Res Function(NotificationsEvent) then,
  ) = _$NotificationsEventCopyWithImpl<$Res, NotificationsEvent>;
}

/// @nodoc
class _$NotificationsEventCopyWithImpl<$Res, $Val extends NotificationsEvent>
    implements $NotificationsEventCopyWith<$Res> {
  _$NotificationsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ChangeNotificationStatusImplCopyWith<$Res> {
  factory _$$ChangeNotificationStatusImplCopyWith(
    _$ChangeNotificationStatusImpl value,
    $Res Function(_$ChangeNotificationStatusImpl) then,
  ) = __$$ChangeNotificationStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NotificationsProcessState status});

  $NotificationsProcessStateCopyWith<$Res> get status;
}

/// @nodoc
class __$$ChangeNotificationStatusImplCopyWithImpl<$Res>
    extends
        _$NotificationsEventCopyWithImpl<$Res, _$ChangeNotificationStatusImpl>
    implements _$$ChangeNotificationStatusImplCopyWith<$Res> {
  __$$ChangeNotificationStatusImplCopyWithImpl(
    _$ChangeNotificationStatusImpl _value,
    $Res Function(_$ChangeNotificationStatusImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null}) {
    return _then(
      _$ChangeNotificationStatusImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as NotificationsProcessState,
      ),
    );
  }

  /// Create a copy of NotificationsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NotificationsProcessStateCopyWith<$Res> get status {
    return $NotificationsProcessStateCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value));
    });
  }
}

/// @nodoc

class _$ChangeNotificationStatusImpl implements _ChangeNotificationStatus {
  const _$ChangeNotificationStatusImpl({required this.status});

  @override
  final NotificationsProcessState status;

  @override
  String toString() {
    return 'NotificationsEvent.changeNotificationStatus(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeNotificationStatusImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of NotificationsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeNotificationStatusImplCopyWith<_$ChangeNotificationStatusImpl>
  get copyWith =>
      __$$ChangeNotificationStatusImplCopyWithImpl<
        _$ChangeNotificationStatusImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NotificationsProcessState status)
    changeNotificationStatus,
    required TResult Function(String token) setupToken,
  }) {
    return changeNotificationStatus(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NotificationsProcessState status)?
    changeNotificationStatus,
    TResult? Function(String token)? setupToken,
  }) {
    return changeNotificationStatus?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NotificationsProcessState status)?
    changeNotificationStatus,
    TResult Function(String token)? setupToken,
    required TResult orElse(),
  }) {
    if (changeNotificationStatus != null) {
      return changeNotificationStatus(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeNotificationStatus value)
    changeNotificationStatus,
    required TResult Function(_SetupToken value) setupToken,
  }) {
    return changeNotificationStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeNotificationStatus value)?
    changeNotificationStatus,
    TResult? Function(_SetupToken value)? setupToken,
  }) {
    return changeNotificationStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeNotificationStatus value)? changeNotificationStatus,
    TResult Function(_SetupToken value)? setupToken,
    required TResult orElse(),
  }) {
    if (changeNotificationStatus != null) {
      return changeNotificationStatus(this);
    }
    return orElse();
  }
}

abstract class _ChangeNotificationStatus implements NotificationsEvent {
  const factory _ChangeNotificationStatus({
    required final NotificationsProcessState status,
  }) = _$ChangeNotificationStatusImpl;

  NotificationsProcessState get status;

  /// Create a copy of NotificationsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeNotificationStatusImplCopyWith<_$ChangeNotificationStatusImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetupTokenImplCopyWith<$Res> {
  factory _$$SetupTokenImplCopyWith(
    _$SetupTokenImpl value,
    $Res Function(_$SetupTokenImpl) then,
  ) = __$$SetupTokenImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String token});
}

/// @nodoc
class __$$SetupTokenImplCopyWithImpl<$Res>
    extends _$NotificationsEventCopyWithImpl<$Res, _$SetupTokenImpl>
    implements _$$SetupTokenImplCopyWith<$Res> {
  __$$SetupTokenImplCopyWithImpl(
    _$SetupTokenImpl _value,
    $Res Function(_$SetupTokenImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? token = null}) {
    return _then(
      _$SetupTokenImpl(
        token: null == token
            ? _value.token
            : token // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$SetupTokenImpl implements _SetupToken {
  const _$SetupTokenImpl({required this.token});

  @override
  final String token;

  @override
  String toString() {
    return 'NotificationsEvent.setupToken(token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetupTokenImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token);

  /// Create a copy of NotificationsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetupTokenImplCopyWith<_$SetupTokenImpl> get copyWith =>
      __$$SetupTokenImplCopyWithImpl<_$SetupTokenImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NotificationsProcessState status)
    changeNotificationStatus,
    required TResult Function(String token) setupToken,
  }) {
    return setupToken(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NotificationsProcessState status)?
    changeNotificationStatus,
    TResult? Function(String token)? setupToken,
  }) {
    return setupToken?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NotificationsProcessState status)?
    changeNotificationStatus,
    TResult Function(String token)? setupToken,
    required TResult orElse(),
  }) {
    if (setupToken != null) {
      return setupToken(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeNotificationStatus value)
    changeNotificationStatus,
    required TResult Function(_SetupToken value) setupToken,
  }) {
    return setupToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeNotificationStatus value)?
    changeNotificationStatus,
    TResult? Function(_SetupToken value)? setupToken,
  }) {
    return setupToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeNotificationStatus value)? changeNotificationStatus,
    TResult Function(_SetupToken value)? setupToken,
    required TResult orElse(),
  }) {
    if (setupToken != null) {
      return setupToken(this);
    }
    return orElse();
  }
}

abstract class _SetupToken implements NotificationsEvent {
  const factory _SetupToken({required final String token}) = _$SetupTokenImpl;

  String get token;

  /// Create a copy of NotificationsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetupTokenImplCopyWith<_$SetupTokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NotificationsState {
  NotificationsProcessState get status => throw _privateConstructorUsedError;

  /// Create a copy of NotificationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationsStateCopyWith<NotificationsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationsStateCopyWith<$Res> {
  factory $NotificationsStateCopyWith(
    NotificationsState value,
    $Res Function(NotificationsState) then,
  ) = _$NotificationsStateCopyWithImpl<$Res, NotificationsState>;
  @useResult
  $Res call({NotificationsProcessState status});

  $NotificationsProcessStateCopyWith<$Res> get status;
}

/// @nodoc
class _$NotificationsStateCopyWithImpl<$Res, $Val extends NotificationsState>
    implements $NotificationsStateCopyWith<$Res> {
  _$NotificationsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null}) {
    return _then(
      _value.copyWith(
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as NotificationsProcessState,
          )
          as $Val,
    );
  }

  /// Create a copy of NotificationsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NotificationsProcessStateCopyWith<$Res> get status {
    return $NotificationsProcessStateCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NotificationsStateImplCopyWith<$Res>
    implements $NotificationsStateCopyWith<$Res> {
  factory _$$NotificationsStateImplCopyWith(
    _$NotificationsStateImpl value,
    $Res Function(_$NotificationsStateImpl) then,
  ) = __$$NotificationsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NotificationsProcessState status});

  @override
  $NotificationsProcessStateCopyWith<$Res> get status;
}

/// @nodoc
class __$$NotificationsStateImplCopyWithImpl<$Res>
    extends _$NotificationsStateCopyWithImpl<$Res, _$NotificationsStateImpl>
    implements _$$NotificationsStateImplCopyWith<$Res> {
  __$$NotificationsStateImplCopyWithImpl(
    _$NotificationsStateImpl _value,
    $Res Function(_$NotificationsStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null}) {
    return _then(
      _$NotificationsStateImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as NotificationsProcessState,
      ),
    );
  }
}

/// @nodoc

class _$NotificationsStateImpl implements _NotificationsState {
  const _$NotificationsStateImpl({
    this.status = const NotificationsProcessState.idl(),
  });

  @override
  @JsonKey()
  final NotificationsProcessState status;

  @override
  String toString() {
    return 'NotificationsState(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationsStateImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of NotificationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationsStateImplCopyWith<_$NotificationsStateImpl> get copyWith =>
      __$$NotificationsStateImplCopyWithImpl<_$NotificationsStateImpl>(
        this,
        _$identity,
      );
}

abstract class _NotificationsState implements NotificationsState {
  const factory _NotificationsState({final NotificationsProcessState status}) =
      _$NotificationsStateImpl;

  @override
  NotificationsProcessState get status;

  /// Create a copy of NotificationsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationsStateImplCopyWith<_$NotificationsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NotificationsProcessState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idl,
    required TResult Function() loading,
    required TResult Function() noPermission,
    required TResult Function() havePermission,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idl,
    TResult? Function()? loading,
    TResult? Function()? noPermission,
    TResult? Function()? havePermission,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idl,
    TResult Function()? loading,
    TResult Function()? noPermission,
    TResult Function()? havePermission,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotificationsProcessStateIdl value) idl,
    required TResult Function(NotificationsProcessStateLoading value) loading,
    required TResult Function(NotificationsProcessStateNoPermission value)
    noPermission,
    required TResult Function(NotificationsProcessStateHavePermission value)
    havePermission,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotificationsProcessStateIdl value)? idl,
    TResult? Function(NotificationsProcessStateLoading value)? loading,
    TResult? Function(NotificationsProcessStateNoPermission value)?
    noPermission,
    TResult? Function(NotificationsProcessStateHavePermission value)?
    havePermission,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationsProcessStateIdl value)? idl,
    TResult Function(NotificationsProcessStateLoading value)? loading,
    TResult Function(NotificationsProcessStateNoPermission value)? noPermission,
    TResult Function(NotificationsProcessStateHavePermission value)?
    havePermission,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationsProcessStateCopyWith<$Res> {
  factory $NotificationsProcessStateCopyWith(
    NotificationsProcessState value,
    $Res Function(NotificationsProcessState) then,
  ) = _$NotificationsProcessStateCopyWithImpl<$Res, NotificationsProcessState>;
}

/// @nodoc
class _$NotificationsProcessStateCopyWithImpl<
  $Res,
  $Val extends NotificationsProcessState
>
    implements $NotificationsProcessStateCopyWith<$Res> {
  _$NotificationsProcessStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationsProcessState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$NotificationsProcessStateIdlImplCopyWith<$Res> {
  factory _$$NotificationsProcessStateIdlImplCopyWith(
    _$NotificationsProcessStateIdlImpl value,
    $Res Function(_$NotificationsProcessStateIdlImpl) then,
  ) = __$$NotificationsProcessStateIdlImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotificationsProcessStateIdlImplCopyWithImpl<$Res>
    extends
        _$NotificationsProcessStateCopyWithImpl<
          $Res,
          _$NotificationsProcessStateIdlImpl
        >
    implements _$$NotificationsProcessStateIdlImplCopyWith<$Res> {
  __$$NotificationsProcessStateIdlImplCopyWithImpl(
    _$NotificationsProcessStateIdlImpl _value,
    $Res Function(_$NotificationsProcessStateIdlImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationsProcessState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NotificationsProcessStateIdlImpl
    implements NotificationsProcessStateIdl {
  const _$NotificationsProcessStateIdlImpl();

  @override
  String toString() {
    return 'NotificationsProcessState.idl()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationsProcessStateIdlImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idl,
    required TResult Function() loading,
    required TResult Function() noPermission,
    required TResult Function() havePermission,
  }) {
    return idl();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idl,
    TResult? Function()? loading,
    TResult? Function()? noPermission,
    TResult? Function()? havePermission,
  }) {
    return idl?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idl,
    TResult Function()? loading,
    TResult Function()? noPermission,
    TResult Function()? havePermission,
    required TResult orElse(),
  }) {
    if (idl != null) {
      return idl();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotificationsProcessStateIdl value) idl,
    required TResult Function(NotificationsProcessStateLoading value) loading,
    required TResult Function(NotificationsProcessStateNoPermission value)
    noPermission,
    required TResult Function(NotificationsProcessStateHavePermission value)
    havePermission,
  }) {
    return idl(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotificationsProcessStateIdl value)? idl,
    TResult? Function(NotificationsProcessStateLoading value)? loading,
    TResult? Function(NotificationsProcessStateNoPermission value)?
    noPermission,
    TResult? Function(NotificationsProcessStateHavePermission value)?
    havePermission,
  }) {
    return idl?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationsProcessStateIdl value)? idl,
    TResult Function(NotificationsProcessStateLoading value)? loading,
    TResult Function(NotificationsProcessStateNoPermission value)? noPermission,
    TResult Function(NotificationsProcessStateHavePermission value)?
    havePermission,
    required TResult orElse(),
  }) {
    if (idl != null) {
      return idl(this);
    }
    return orElse();
  }
}

abstract class NotificationsProcessStateIdl
    implements NotificationsProcessState {
  const factory NotificationsProcessStateIdl() =
      _$NotificationsProcessStateIdlImpl;
}

/// @nodoc
abstract class _$$NotificationsProcessStateLoadingImplCopyWith<$Res> {
  factory _$$NotificationsProcessStateLoadingImplCopyWith(
    _$NotificationsProcessStateLoadingImpl value,
    $Res Function(_$NotificationsProcessStateLoadingImpl) then,
  ) = __$$NotificationsProcessStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotificationsProcessStateLoadingImplCopyWithImpl<$Res>
    extends
        _$NotificationsProcessStateCopyWithImpl<
          $Res,
          _$NotificationsProcessStateLoadingImpl
        >
    implements _$$NotificationsProcessStateLoadingImplCopyWith<$Res> {
  __$$NotificationsProcessStateLoadingImplCopyWithImpl(
    _$NotificationsProcessStateLoadingImpl _value,
    $Res Function(_$NotificationsProcessStateLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationsProcessState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NotificationsProcessStateLoadingImpl
    implements NotificationsProcessStateLoading {
  const _$NotificationsProcessStateLoadingImpl();

  @override
  String toString() {
    return 'NotificationsProcessState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationsProcessStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idl,
    required TResult Function() loading,
    required TResult Function() noPermission,
    required TResult Function() havePermission,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idl,
    TResult? Function()? loading,
    TResult? Function()? noPermission,
    TResult? Function()? havePermission,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idl,
    TResult Function()? loading,
    TResult Function()? noPermission,
    TResult Function()? havePermission,
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
    required TResult Function(NotificationsProcessStateIdl value) idl,
    required TResult Function(NotificationsProcessStateLoading value) loading,
    required TResult Function(NotificationsProcessStateNoPermission value)
    noPermission,
    required TResult Function(NotificationsProcessStateHavePermission value)
    havePermission,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotificationsProcessStateIdl value)? idl,
    TResult? Function(NotificationsProcessStateLoading value)? loading,
    TResult? Function(NotificationsProcessStateNoPermission value)?
    noPermission,
    TResult? Function(NotificationsProcessStateHavePermission value)?
    havePermission,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationsProcessStateIdl value)? idl,
    TResult Function(NotificationsProcessStateLoading value)? loading,
    TResult Function(NotificationsProcessStateNoPermission value)? noPermission,
    TResult Function(NotificationsProcessStateHavePermission value)?
    havePermission,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class NotificationsProcessStateLoading
    implements NotificationsProcessState {
  const factory NotificationsProcessStateLoading() =
      _$NotificationsProcessStateLoadingImpl;
}

/// @nodoc
abstract class _$$NotificationsProcessStateNoPermissionImplCopyWith<$Res> {
  factory _$$NotificationsProcessStateNoPermissionImplCopyWith(
    _$NotificationsProcessStateNoPermissionImpl value,
    $Res Function(_$NotificationsProcessStateNoPermissionImpl) then,
  ) = __$$NotificationsProcessStateNoPermissionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotificationsProcessStateNoPermissionImplCopyWithImpl<$Res>
    extends
        _$NotificationsProcessStateCopyWithImpl<
          $Res,
          _$NotificationsProcessStateNoPermissionImpl
        >
    implements _$$NotificationsProcessStateNoPermissionImplCopyWith<$Res> {
  __$$NotificationsProcessStateNoPermissionImplCopyWithImpl(
    _$NotificationsProcessStateNoPermissionImpl _value,
    $Res Function(_$NotificationsProcessStateNoPermissionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationsProcessState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NotificationsProcessStateNoPermissionImpl
    implements NotificationsProcessStateNoPermission {
  const _$NotificationsProcessStateNoPermissionImpl();

  @override
  String toString() {
    return 'NotificationsProcessState.noPermission()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationsProcessStateNoPermissionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idl,
    required TResult Function() loading,
    required TResult Function() noPermission,
    required TResult Function() havePermission,
  }) {
    return noPermission();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idl,
    TResult? Function()? loading,
    TResult? Function()? noPermission,
    TResult? Function()? havePermission,
  }) {
    return noPermission?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idl,
    TResult Function()? loading,
    TResult Function()? noPermission,
    TResult Function()? havePermission,
    required TResult orElse(),
  }) {
    if (noPermission != null) {
      return noPermission();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotificationsProcessStateIdl value) idl,
    required TResult Function(NotificationsProcessStateLoading value) loading,
    required TResult Function(NotificationsProcessStateNoPermission value)
    noPermission,
    required TResult Function(NotificationsProcessStateHavePermission value)
    havePermission,
  }) {
    return noPermission(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotificationsProcessStateIdl value)? idl,
    TResult? Function(NotificationsProcessStateLoading value)? loading,
    TResult? Function(NotificationsProcessStateNoPermission value)?
    noPermission,
    TResult? Function(NotificationsProcessStateHavePermission value)?
    havePermission,
  }) {
    return noPermission?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationsProcessStateIdl value)? idl,
    TResult Function(NotificationsProcessStateLoading value)? loading,
    TResult Function(NotificationsProcessStateNoPermission value)? noPermission,
    TResult Function(NotificationsProcessStateHavePermission value)?
    havePermission,
    required TResult orElse(),
  }) {
    if (noPermission != null) {
      return noPermission(this);
    }
    return orElse();
  }
}

abstract class NotificationsProcessStateNoPermission
    implements NotificationsProcessState {
  const factory NotificationsProcessStateNoPermission() =
      _$NotificationsProcessStateNoPermissionImpl;
}

/// @nodoc
abstract class _$$NotificationsProcessStateHavePermissionImplCopyWith<$Res> {
  factory _$$NotificationsProcessStateHavePermissionImplCopyWith(
    _$NotificationsProcessStateHavePermissionImpl value,
    $Res Function(_$NotificationsProcessStateHavePermissionImpl) then,
  ) = __$$NotificationsProcessStateHavePermissionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotificationsProcessStateHavePermissionImplCopyWithImpl<$Res>
    extends
        _$NotificationsProcessStateCopyWithImpl<
          $Res,
          _$NotificationsProcessStateHavePermissionImpl
        >
    implements _$$NotificationsProcessStateHavePermissionImplCopyWith<$Res> {
  __$$NotificationsProcessStateHavePermissionImplCopyWithImpl(
    _$NotificationsProcessStateHavePermissionImpl _value,
    $Res Function(_$NotificationsProcessStateHavePermissionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationsProcessState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NotificationsProcessStateHavePermissionImpl
    implements NotificationsProcessStateHavePermission {
  const _$NotificationsProcessStateHavePermissionImpl();

  @override
  String toString() {
    return 'NotificationsProcessState.havePermission()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationsProcessStateHavePermissionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idl,
    required TResult Function() loading,
    required TResult Function() noPermission,
    required TResult Function() havePermission,
  }) {
    return havePermission();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idl,
    TResult? Function()? loading,
    TResult? Function()? noPermission,
    TResult? Function()? havePermission,
  }) {
    return havePermission?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idl,
    TResult Function()? loading,
    TResult Function()? noPermission,
    TResult Function()? havePermission,
    required TResult orElse(),
  }) {
    if (havePermission != null) {
      return havePermission();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotificationsProcessStateIdl value) idl,
    required TResult Function(NotificationsProcessStateLoading value) loading,
    required TResult Function(NotificationsProcessStateNoPermission value)
    noPermission,
    required TResult Function(NotificationsProcessStateHavePermission value)
    havePermission,
  }) {
    return havePermission(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotificationsProcessStateIdl value)? idl,
    TResult? Function(NotificationsProcessStateLoading value)? loading,
    TResult? Function(NotificationsProcessStateNoPermission value)?
    noPermission,
    TResult? Function(NotificationsProcessStateHavePermission value)?
    havePermission,
  }) {
    return havePermission?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationsProcessStateIdl value)? idl,
    TResult Function(NotificationsProcessStateLoading value)? loading,
    TResult Function(NotificationsProcessStateNoPermission value)? noPermission,
    TResult Function(NotificationsProcessStateHavePermission value)?
    havePermission,
    required TResult orElse(),
  }) {
    if (havePermission != null) {
      return havePermission(this);
    }
    return orElse();
  }
}

abstract class NotificationsProcessStateHavePermission
    implements NotificationsProcessState {
  const factory NotificationsProcessStateHavePermission() =
      _$NotificationsProcessStateHavePermissionImpl;
}
