// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ForgotPasswordEvent {
  IslamMobLocalizations get localizations => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(IslamMobLocalizations localizations, String email)
    updateButtonEnablity,
    required TResult Function(IslamMobLocalizations localizations, String email)
    forgotPressed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(IslamMobLocalizations localizations, String email)?
    updateButtonEnablity,
    TResult? Function(IslamMobLocalizations localizations, String email)?
    forgotPressed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(IslamMobLocalizations localizations, String email)?
    updateButtonEnablity,
    TResult Function(IslamMobLocalizations localizations, String email)?
    forgotPressed,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateButtonEnablity value) updateButtonEnablity,
    required TResult Function(_ForgotPressed value) forgotPressed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateButtonEnablity value)? updateButtonEnablity,
    TResult? Function(_ForgotPressed value)? forgotPressed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateButtonEnablity value)? updateButtonEnablity,
    TResult Function(_ForgotPressed value)? forgotPressed,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of ForgotPasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ForgotPasswordEventCopyWith<ForgotPasswordEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordEventCopyWith<$Res> {
  factory $ForgotPasswordEventCopyWith(
    ForgotPasswordEvent value,
    $Res Function(ForgotPasswordEvent) then,
  ) = _$ForgotPasswordEventCopyWithImpl<$Res, ForgotPasswordEvent>;
  @useResult
  $Res call({IslamMobLocalizations localizations, String email});
}

/// @nodoc
class _$ForgotPasswordEventCopyWithImpl<$Res, $Val extends ForgotPasswordEvent>
    implements $ForgotPasswordEventCopyWith<$Res> {
  _$ForgotPasswordEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ForgotPasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? localizations = null, Object? email = null}) {
    return _then(
      _value.copyWith(
            localizations: null == localizations
                ? _value.localizations
                : localizations // ignore: cast_nullable_to_non_nullable
                      as IslamMobLocalizations,
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UpdateButtonEnablityImplCopyWith<$Res>
    implements $ForgotPasswordEventCopyWith<$Res> {
  factory _$$UpdateButtonEnablityImplCopyWith(
    _$UpdateButtonEnablityImpl value,
    $Res Function(_$UpdateButtonEnablityImpl) then,
  ) = __$$UpdateButtonEnablityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({IslamMobLocalizations localizations, String email});
}

/// @nodoc
class __$$UpdateButtonEnablityImplCopyWithImpl<$Res>
    extends _$ForgotPasswordEventCopyWithImpl<$Res, _$UpdateButtonEnablityImpl>
    implements _$$UpdateButtonEnablityImplCopyWith<$Res> {
  __$$UpdateButtonEnablityImplCopyWithImpl(
    _$UpdateButtonEnablityImpl _value,
    $Res Function(_$UpdateButtonEnablityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ForgotPasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? localizations = null, Object? email = null}) {
    return _then(
      _$UpdateButtonEnablityImpl(
        localizations: null == localizations
            ? _value.localizations
            : localizations // ignore: cast_nullable_to_non_nullable
                  as IslamMobLocalizations,
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$UpdateButtonEnablityImpl implements _UpdateButtonEnablity {
  const _$UpdateButtonEnablityImpl({
    required this.localizations,
    required this.email,
  });

  @override
  final IslamMobLocalizations localizations;
  @override
  final String email;

  @override
  String toString() {
    return 'ForgotPasswordEvent.updateButtonEnablity(localizations: $localizations, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateButtonEnablityImpl &&
            (identical(other.localizations, localizations) ||
                other.localizations == localizations) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, localizations, email);

  /// Create a copy of ForgotPasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateButtonEnablityImplCopyWith<_$UpdateButtonEnablityImpl>
  get copyWith =>
      __$$UpdateButtonEnablityImplCopyWithImpl<_$UpdateButtonEnablityImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(IslamMobLocalizations localizations, String email)
    updateButtonEnablity,
    required TResult Function(IslamMobLocalizations localizations, String email)
    forgotPressed,
  }) {
    return updateButtonEnablity(localizations, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(IslamMobLocalizations localizations, String email)?
    updateButtonEnablity,
    TResult? Function(IslamMobLocalizations localizations, String email)?
    forgotPressed,
  }) {
    return updateButtonEnablity?.call(localizations, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(IslamMobLocalizations localizations, String email)?
    updateButtonEnablity,
    TResult Function(IslamMobLocalizations localizations, String email)?
    forgotPressed,
    required TResult orElse(),
  }) {
    if (updateButtonEnablity != null) {
      return updateButtonEnablity(localizations, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateButtonEnablity value) updateButtonEnablity,
    required TResult Function(_ForgotPressed value) forgotPressed,
  }) {
    return updateButtonEnablity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateButtonEnablity value)? updateButtonEnablity,
    TResult? Function(_ForgotPressed value)? forgotPressed,
  }) {
    return updateButtonEnablity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateButtonEnablity value)? updateButtonEnablity,
    TResult Function(_ForgotPressed value)? forgotPressed,
    required TResult orElse(),
  }) {
    if (updateButtonEnablity != null) {
      return updateButtonEnablity(this);
    }
    return orElse();
  }
}

abstract class _UpdateButtonEnablity implements ForgotPasswordEvent {
  const factory _UpdateButtonEnablity({
    required final IslamMobLocalizations localizations,
    required final String email,
  }) = _$UpdateButtonEnablityImpl;

  @override
  IslamMobLocalizations get localizations;
  @override
  String get email;

  /// Create a copy of ForgotPasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateButtonEnablityImplCopyWith<_$UpdateButtonEnablityImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ForgotPressedImplCopyWith<$Res>
    implements $ForgotPasswordEventCopyWith<$Res> {
  factory _$$ForgotPressedImplCopyWith(
    _$ForgotPressedImpl value,
    $Res Function(_$ForgotPressedImpl) then,
  ) = __$$ForgotPressedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({IslamMobLocalizations localizations, String email});
}

/// @nodoc
class __$$ForgotPressedImplCopyWithImpl<$Res>
    extends _$ForgotPasswordEventCopyWithImpl<$Res, _$ForgotPressedImpl>
    implements _$$ForgotPressedImplCopyWith<$Res> {
  __$$ForgotPressedImplCopyWithImpl(
    _$ForgotPressedImpl _value,
    $Res Function(_$ForgotPressedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ForgotPasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? localizations = null, Object? email = null}) {
    return _then(
      _$ForgotPressedImpl(
        localizations: null == localizations
            ? _value.localizations
            : localizations // ignore: cast_nullable_to_non_nullable
                  as IslamMobLocalizations,
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ForgotPressedImpl implements _ForgotPressed {
  const _$ForgotPressedImpl({required this.localizations, required this.email});

  @override
  final IslamMobLocalizations localizations;
  @override
  final String email;

  @override
  String toString() {
    return 'ForgotPasswordEvent.forgotPressed(localizations: $localizations, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPressedImpl &&
            (identical(other.localizations, localizations) ||
                other.localizations == localizations) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, localizations, email);

  /// Create a copy of ForgotPasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPressedImplCopyWith<_$ForgotPressedImpl> get copyWith =>
      __$$ForgotPressedImplCopyWithImpl<_$ForgotPressedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(IslamMobLocalizations localizations, String email)
    updateButtonEnablity,
    required TResult Function(IslamMobLocalizations localizations, String email)
    forgotPressed,
  }) {
    return forgotPressed(localizations, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(IslamMobLocalizations localizations, String email)?
    updateButtonEnablity,
    TResult? Function(IslamMobLocalizations localizations, String email)?
    forgotPressed,
  }) {
    return forgotPressed?.call(localizations, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(IslamMobLocalizations localizations, String email)?
    updateButtonEnablity,
    TResult Function(IslamMobLocalizations localizations, String email)?
    forgotPressed,
    required TResult orElse(),
  }) {
    if (forgotPressed != null) {
      return forgotPressed(localizations, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateButtonEnablity value) updateButtonEnablity,
    required TResult Function(_ForgotPressed value) forgotPressed,
  }) {
    return forgotPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateButtonEnablity value)? updateButtonEnablity,
    TResult? Function(_ForgotPressed value)? forgotPressed,
  }) {
    return forgotPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateButtonEnablity value)? updateButtonEnablity,
    TResult Function(_ForgotPressed value)? forgotPressed,
    required TResult orElse(),
  }) {
    if (forgotPressed != null) {
      return forgotPressed(this);
    }
    return orElse();
  }
}

abstract class _ForgotPressed implements ForgotPasswordEvent {
  const factory _ForgotPressed({
    required final IslamMobLocalizations localizations,
    required final String email,
  }) = _$ForgotPressedImpl;

  @override
  IslamMobLocalizations get localizations;
  @override
  String get email;

  /// Create a copy of ForgotPasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForgotPressedImplCopyWith<_$ForgotPressedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ForgotPasswordState {
  ForgotPasswordProcessState get processState =>
      throw _privateConstructorUsedError;
  bool get isForgotButtonEnabled => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of ForgotPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ForgotPasswordStateCopyWith<ForgotPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordStateCopyWith<$Res> {
  factory $ForgotPasswordStateCopyWith(
    ForgotPasswordState value,
    $Res Function(ForgotPasswordState) then,
  ) = _$ForgotPasswordStateCopyWithImpl<$Res, ForgotPasswordState>;
  @useResult
  $Res call({
    ForgotPasswordProcessState processState,
    bool isForgotButtonEnabled,
    String errorMessage,
  });

  $ForgotPasswordProcessStateCopyWith<$Res> get processState;
}

/// @nodoc
class _$ForgotPasswordStateCopyWithImpl<$Res, $Val extends ForgotPasswordState>
    implements $ForgotPasswordStateCopyWith<$Res> {
  _$ForgotPasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ForgotPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? processState = null,
    Object? isForgotButtonEnabled = null,
    Object? errorMessage = null,
  }) {
    return _then(
      _value.copyWith(
            processState: null == processState
                ? _value.processState
                : processState // ignore: cast_nullable_to_non_nullable
                      as ForgotPasswordProcessState,
            isForgotButtonEnabled: null == isForgotButtonEnabled
                ? _value.isForgotButtonEnabled
                : isForgotButtonEnabled // ignore: cast_nullable_to_non_nullable
                      as bool,
            errorMessage: null == errorMessage
                ? _value.errorMessage
                : errorMessage // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }

  /// Create a copy of ForgotPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ForgotPasswordProcessStateCopyWith<$Res> get processState {
    return $ForgotPasswordProcessStateCopyWith<$Res>(_value.processState, (
      value,
    ) {
      return _then(_value.copyWith(processState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ForgotPasswordStateImplCopyWith<$Res>
    implements $ForgotPasswordStateCopyWith<$Res> {
  factory _$$ForgotPasswordStateImplCopyWith(
    _$ForgotPasswordStateImpl value,
    $Res Function(_$ForgotPasswordStateImpl) then,
  ) = __$$ForgotPasswordStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    ForgotPasswordProcessState processState,
    bool isForgotButtonEnabled,
    String errorMessage,
  });

  @override
  $ForgotPasswordProcessStateCopyWith<$Res> get processState;
}

/// @nodoc
class __$$ForgotPasswordStateImplCopyWithImpl<$Res>
    extends _$ForgotPasswordStateCopyWithImpl<$Res, _$ForgotPasswordStateImpl>
    implements _$$ForgotPasswordStateImplCopyWith<$Res> {
  __$$ForgotPasswordStateImplCopyWithImpl(
    _$ForgotPasswordStateImpl _value,
    $Res Function(_$ForgotPasswordStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ForgotPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? processState = null,
    Object? isForgotButtonEnabled = null,
    Object? errorMessage = null,
  }) {
    return _then(
      _$ForgotPasswordStateImpl(
        processState: null == processState
            ? _value.processState
            : processState // ignore: cast_nullable_to_non_nullable
                  as ForgotPasswordProcessState,
        isForgotButtonEnabled: null == isForgotButtonEnabled
            ? _value.isForgotButtonEnabled
            : isForgotButtonEnabled // ignore: cast_nullable_to_non_nullable
                  as bool,
        errorMessage: null == errorMessage
            ? _value.errorMessage
            : errorMessage // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ForgotPasswordStateImpl implements _ForgotPasswordState {
  const _$ForgotPasswordStateImpl({
    this.processState = const ForgotPasswordProcessState.idl(),
    this.isForgotButtonEnabled = false,
    this.errorMessage = "",
  });

  @override
  @JsonKey()
  final ForgotPasswordProcessState processState;
  @override
  @JsonKey()
  final bool isForgotButtonEnabled;
  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'ForgotPasswordState(processState: $processState, isForgotButtonEnabled: $isForgotButtonEnabled, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordStateImpl &&
            (identical(other.processState, processState) ||
                other.processState == processState) &&
            (identical(other.isForgotButtonEnabled, isForgotButtonEnabled) ||
                other.isForgotButtonEnabled == isForgotButtonEnabled) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    processState,
    isForgotButtonEnabled,
    errorMessage,
  );

  /// Create a copy of ForgotPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPasswordStateImplCopyWith<_$ForgotPasswordStateImpl> get copyWith =>
      __$$ForgotPasswordStateImplCopyWithImpl<_$ForgotPasswordStateImpl>(
        this,
        _$identity,
      );
}

abstract class _ForgotPasswordState implements ForgotPasswordState {
  const factory _ForgotPasswordState({
    final ForgotPasswordProcessState processState,
    final bool isForgotButtonEnabled,
    final String errorMessage,
  }) = _$ForgotPasswordStateImpl;

  @override
  ForgotPasswordProcessState get processState;
  @override
  bool get isForgotButtonEnabled;
  @override
  String get errorMessage;

  /// Create a copy of ForgotPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForgotPasswordStateImplCopyWith<_$ForgotPasswordStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ForgotPasswordProcessState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() idl,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? idl,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? idl,
    TResult Function()? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ForgotPasswordProcessStateLoading value) loading,
    required TResult Function(ForgotPasswordProcessStateIdl value) idl,
    required TResult Function(ForgotPasswordProcessStateSuccess value) success,
    required TResult Function(ForgotPasswordProcessStateError value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ForgotPasswordProcessStateLoading value)? loading,
    TResult? Function(ForgotPasswordProcessStateIdl value)? idl,
    TResult? Function(ForgotPasswordProcessStateSuccess value)? success,
    TResult? Function(ForgotPasswordProcessStateError value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ForgotPasswordProcessStateLoading value)? loading,
    TResult Function(ForgotPasswordProcessStateIdl value)? idl,
    TResult Function(ForgotPasswordProcessStateSuccess value)? success,
    TResult Function(ForgotPasswordProcessStateError value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordProcessStateCopyWith<$Res> {
  factory $ForgotPasswordProcessStateCopyWith(
    ForgotPasswordProcessState value,
    $Res Function(ForgotPasswordProcessState) then,
  ) =
      _$ForgotPasswordProcessStateCopyWithImpl<
        $Res,
        ForgotPasswordProcessState
      >;
}

/// @nodoc
class _$ForgotPasswordProcessStateCopyWithImpl<
  $Res,
  $Val extends ForgotPasswordProcessState
>
    implements $ForgotPasswordProcessStateCopyWith<$Res> {
  _$ForgotPasswordProcessStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ForgotPasswordProcessState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ForgotPasswordProcessStateLoadingImplCopyWith<$Res> {
  factory _$$ForgotPasswordProcessStateLoadingImplCopyWith(
    _$ForgotPasswordProcessStateLoadingImpl value,
    $Res Function(_$ForgotPasswordProcessStateLoadingImpl) then,
  ) = __$$ForgotPasswordProcessStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ForgotPasswordProcessStateLoadingImplCopyWithImpl<$Res>
    extends
        _$ForgotPasswordProcessStateCopyWithImpl<
          $Res,
          _$ForgotPasswordProcessStateLoadingImpl
        >
    implements _$$ForgotPasswordProcessStateLoadingImplCopyWith<$Res> {
  __$$ForgotPasswordProcessStateLoadingImplCopyWithImpl(
    _$ForgotPasswordProcessStateLoadingImpl _value,
    $Res Function(_$ForgotPasswordProcessStateLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ForgotPasswordProcessState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ForgotPasswordProcessStateLoadingImpl
    implements ForgotPasswordProcessStateLoading {
  const _$ForgotPasswordProcessStateLoadingImpl();

  @override
  String toString() {
    return 'ForgotPasswordProcessState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordProcessStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() idl,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? idl,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? idl,
    TResult Function()? success,
    TResult Function(String message)? error,
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
    required TResult Function(ForgotPasswordProcessStateLoading value) loading,
    required TResult Function(ForgotPasswordProcessStateIdl value) idl,
    required TResult Function(ForgotPasswordProcessStateSuccess value) success,
    required TResult Function(ForgotPasswordProcessStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ForgotPasswordProcessStateLoading value)? loading,
    TResult? Function(ForgotPasswordProcessStateIdl value)? idl,
    TResult? Function(ForgotPasswordProcessStateSuccess value)? success,
    TResult? Function(ForgotPasswordProcessStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ForgotPasswordProcessStateLoading value)? loading,
    TResult Function(ForgotPasswordProcessStateIdl value)? idl,
    TResult Function(ForgotPasswordProcessStateSuccess value)? success,
    TResult Function(ForgotPasswordProcessStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ForgotPasswordProcessStateLoading
    implements ForgotPasswordProcessState {
  const factory ForgotPasswordProcessStateLoading() =
      _$ForgotPasswordProcessStateLoadingImpl;
}

/// @nodoc
abstract class _$$ForgotPasswordProcessStateIdlImplCopyWith<$Res> {
  factory _$$ForgotPasswordProcessStateIdlImplCopyWith(
    _$ForgotPasswordProcessStateIdlImpl value,
    $Res Function(_$ForgotPasswordProcessStateIdlImpl) then,
  ) = __$$ForgotPasswordProcessStateIdlImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ForgotPasswordProcessStateIdlImplCopyWithImpl<$Res>
    extends
        _$ForgotPasswordProcessStateCopyWithImpl<
          $Res,
          _$ForgotPasswordProcessStateIdlImpl
        >
    implements _$$ForgotPasswordProcessStateIdlImplCopyWith<$Res> {
  __$$ForgotPasswordProcessStateIdlImplCopyWithImpl(
    _$ForgotPasswordProcessStateIdlImpl _value,
    $Res Function(_$ForgotPasswordProcessStateIdlImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ForgotPasswordProcessState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ForgotPasswordProcessStateIdlImpl
    implements ForgotPasswordProcessStateIdl {
  const _$ForgotPasswordProcessStateIdlImpl();

  @override
  String toString() {
    return 'ForgotPasswordProcessState.idl()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordProcessStateIdlImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() idl,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) {
    return idl();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? idl,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) {
    return idl?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? idl,
    TResult Function()? success,
    TResult Function(String message)? error,
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
    required TResult Function(ForgotPasswordProcessStateLoading value) loading,
    required TResult Function(ForgotPasswordProcessStateIdl value) idl,
    required TResult Function(ForgotPasswordProcessStateSuccess value) success,
    required TResult Function(ForgotPasswordProcessStateError value) error,
  }) {
    return idl(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ForgotPasswordProcessStateLoading value)? loading,
    TResult? Function(ForgotPasswordProcessStateIdl value)? idl,
    TResult? Function(ForgotPasswordProcessStateSuccess value)? success,
    TResult? Function(ForgotPasswordProcessStateError value)? error,
  }) {
    return idl?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ForgotPasswordProcessStateLoading value)? loading,
    TResult Function(ForgotPasswordProcessStateIdl value)? idl,
    TResult Function(ForgotPasswordProcessStateSuccess value)? success,
    TResult Function(ForgotPasswordProcessStateError value)? error,
    required TResult orElse(),
  }) {
    if (idl != null) {
      return idl(this);
    }
    return orElse();
  }
}

abstract class ForgotPasswordProcessStateIdl
    implements ForgotPasswordProcessState {
  const factory ForgotPasswordProcessStateIdl() =
      _$ForgotPasswordProcessStateIdlImpl;
}

/// @nodoc
abstract class _$$ForgotPasswordProcessStateSuccessImplCopyWith<$Res> {
  factory _$$ForgotPasswordProcessStateSuccessImplCopyWith(
    _$ForgotPasswordProcessStateSuccessImpl value,
    $Res Function(_$ForgotPasswordProcessStateSuccessImpl) then,
  ) = __$$ForgotPasswordProcessStateSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ForgotPasswordProcessStateSuccessImplCopyWithImpl<$Res>
    extends
        _$ForgotPasswordProcessStateCopyWithImpl<
          $Res,
          _$ForgotPasswordProcessStateSuccessImpl
        >
    implements _$$ForgotPasswordProcessStateSuccessImplCopyWith<$Res> {
  __$$ForgotPasswordProcessStateSuccessImplCopyWithImpl(
    _$ForgotPasswordProcessStateSuccessImpl _value,
    $Res Function(_$ForgotPasswordProcessStateSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ForgotPasswordProcessState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ForgotPasswordProcessStateSuccessImpl
    implements ForgotPasswordProcessStateSuccess {
  const _$ForgotPasswordProcessStateSuccessImpl();

  @override
  String toString() {
    return 'ForgotPasswordProcessState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordProcessStateSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() idl,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? idl,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? idl,
    TResult Function()? success,
    TResult Function(String message)? error,
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
    required TResult Function(ForgotPasswordProcessStateLoading value) loading,
    required TResult Function(ForgotPasswordProcessStateIdl value) idl,
    required TResult Function(ForgotPasswordProcessStateSuccess value) success,
    required TResult Function(ForgotPasswordProcessStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ForgotPasswordProcessStateLoading value)? loading,
    TResult? Function(ForgotPasswordProcessStateIdl value)? idl,
    TResult? Function(ForgotPasswordProcessStateSuccess value)? success,
    TResult? Function(ForgotPasswordProcessStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ForgotPasswordProcessStateLoading value)? loading,
    TResult Function(ForgotPasswordProcessStateIdl value)? idl,
    TResult Function(ForgotPasswordProcessStateSuccess value)? success,
    TResult Function(ForgotPasswordProcessStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ForgotPasswordProcessStateSuccess
    implements ForgotPasswordProcessState {
  const factory ForgotPasswordProcessStateSuccess() =
      _$ForgotPasswordProcessStateSuccessImpl;
}

/// @nodoc
abstract class _$$ForgotPasswordProcessStateErrorImplCopyWith<$Res> {
  factory _$$ForgotPasswordProcessStateErrorImplCopyWith(
    _$ForgotPasswordProcessStateErrorImpl value,
    $Res Function(_$ForgotPasswordProcessStateErrorImpl) then,
  ) = __$$ForgotPasswordProcessStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ForgotPasswordProcessStateErrorImplCopyWithImpl<$Res>
    extends
        _$ForgotPasswordProcessStateCopyWithImpl<
          $Res,
          _$ForgotPasswordProcessStateErrorImpl
        >
    implements _$$ForgotPasswordProcessStateErrorImplCopyWith<$Res> {
  __$$ForgotPasswordProcessStateErrorImplCopyWithImpl(
    _$ForgotPasswordProcessStateErrorImpl _value,
    $Res Function(_$ForgotPasswordProcessStateErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ForgotPasswordProcessState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$ForgotPasswordProcessStateErrorImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ForgotPasswordProcessStateErrorImpl
    implements ForgotPasswordProcessStateError {
  const _$ForgotPasswordProcessStateErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ForgotPasswordProcessState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordProcessStateErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ForgotPasswordProcessState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPasswordProcessStateErrorImplCopyWith<
    _$ForgotPasswordProcessStateErrorImpl
  >
  get copyWith =>
      __$$ForgotPasswordProcessStateErrorImplCopyWithImpl<
        _$ForgotPasswordProcessStateErrorImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() idl,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? idl,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? idl,
    TResult Function()? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ForgotPasswordProcessStateLoading value) loading,
    required TResult Function(ForgotPasswordProcessStateIdl value) idl,
    required TResult Function(ForgotPasswordProcessStateSuccess value) success,
    required TResult Function(ForgotPasswordProcessStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ForgotPasswordProcessStateLoading value)? loading,
    TResult? Function(ForgotPasswordProcessStateIdl value)? idl,
    TResult? Function(ForgotPasswordProcessStateSuccess value)? success,
    TResult? Function(ForgotPasswordProcessStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ForgotPasswordProcessStateLoading value)? loading,
    TResult Function(ForgotPasswordProcessStateIdl value)? idl,
    TResult Function(ForgotPasswordProcessStateSuccess value)? success,
    TResult Function(ForgotPasswordProcessStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ForgotPasswordProcessStateError
    implements ForgotPasswordProcessState {
  const factory ForgotPasswordProcessStateError(final String message) =
      _$ForgotPasswordProcessStateErrorImpl;

  String get message;

  /// Create a copy of ForgotPasswordProcessState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForgotPasswordProcessStateErrorImplCopyWith<
    _$ForgotPasswordProcessStateErrorImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}
