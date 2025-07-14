// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$RegisterEvent {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get dateOfBirth => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  File? get profilePic => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      IslamMobLocalizations localizations,
      String email,
      String password,
      String confirmPassword,
      String fullName,
      String dateOfBirth,
      String gender,
      String country,
      File? profilePic,
    )
    updateLoginButtonEnablity,
    required TResult Function(
      String email,
      String password,
      String fullName,
      String dateOfBirth,
      String gender,
      String country,
      File? profilePic,
      bool savedCradintial,
    )
    registerPressed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      IslamMobLocalizations localizations,
      String email,
      String password,
      String confirmPassword,
      String fullName,
      String dateOfBirth,
      String gender,
      String country,
      File? profilePic,
    )?
    updateLoginButtonEnablity,
    TResult? Function(
      String email,
      String password,
      String fullName,
      String dateOfBirth,
      String gender,
      String country,
      File? profilePic,
      bool savedCradintial,
    )?
    registerPressed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      IslamMobLocalizations localizations,
      String email,
      String password,
      String confirmPassword,
      String fullName,
      String dateOfBirth,
      String gender,
      String country,
      File? profilePic,
    )?
    updateLoginButtonEnablity,
    TResult Function(
      String email,
      String password,
      String fullName,
      String dateOfBirth,
      String gender,
      String country,
      File? profilePic,
      bool savedCradintial,
    )?
    registerPressed,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateLoginButtonEnablity value)
    updateLoginButtonEnablity,
    required TResult Function(_RegisterPressed value) registerPressed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateLoginButtonEnablity value)?
    updateLoginButtonEnablity,
    TResult? Function(_RegisterPressed value)? registerPressed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateLoginButtonEnablity value)?
    updateLoginButtonEnablity,
    TResult Function(_RegisterPressed value)? registerPressed,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterEventCopyWith<RegisterEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterEventCopyWith<$Res> {
  factory $RegisterEventCopyWith(
    RegisterEvent value,
    $Res Function(RegisterEvent) then,
  ) = _$RegisterEventCopyWithImpl<$Res, RegisterEvent>;
  @useResult
  $Res call({
    String email,
    String password,
    String fullName,
    String dateOfBirth,
    String gender,
    String country,
    File? profilePic,
  });
}

/// @nodoc
class _$RegisterEventCopyWithImpl<$Res, $Val extends RegisterEvent>
    implements $RegisterEventCopyWith<$Res> {
  _$RegisterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? fullName = null,
    Object? dateOfBirth = null,
    Object? gender = null,
    Object? country = null,
    Object? profilePic = freezed,
  }) {
    return _then(
      _value.copyWith(
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String,
            password: null == password
                ? _value.password
                : password // ignore: cast_nullable_to_non_nullable
                      as String,
            fullName: null == fullName
                ? _value.fullName
                : fullName // ignore: cast_nullable_to_non_nullable
                      as String,
            dateOfBirth: null == dateOfBirth
                ? _value.dateOfBirth
                : dateOfBirth // ignore: cast_nullable_to_non_nullable
                      as String,
            gender: null == gender
                ? _value.gender
                : gender // ignore: cast_nullable_to_non_nullable
                      as String,
            country: null == country
                ? _value.country
                : country // ignore: cast_nullable_to_non_nullable
                      as String,
            profilePic: freezed == profilePic
                ? _value.profilePic
                : profilePic // ignore: cast_nullable_to_non_nullable
                      as File?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UpdateLoginButtonEnablityImplCopyWith<$Res>
    implements $RegisterEventCopyWith<$Res> {
  factory _$$UpdateLoginButtonEnablityImplCopyWith(
    _$UpdateLoginButtonEnablityImpl value,
    $Res Function(_$UpdateLoginButtonEnablityImpl) then,
  ) = __$$UpdateLoginButtonEnablityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    IslamMobLocalizations localizations,
    String email,
    String password,
    String confirmPassword,
    String fullName,
    String dateOfBirth,
    String gender,
    String country,
    File? profilePic,
  });
}

/// @nodoc
class __$$UpdateLoginButtonEnablityImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$UpdateLoginButtonEnablityImpl>
    implements _$$UpdateLoginButtonEnablityImplCopyWith<$Res> {
  __$$UpdateLoginButtonEnablityImplCopyWithImpl(
    _$UpdateLoginButtonEnablityImpl _value,
    $Res Function(_$UpdateLoginButtonEnablityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? localizations = null,
    Object? email = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? fullName = null,
    Object? dateOfBirth = null,
    Object? gender = null,
    Object? country = null,
    Object? profilePic = freezed,
  }) {
    return _then(
      _$UpdateLoginButtonEnablityImpl(
        localizations: null == localizations
            ? _value.localizations
            : localizations // ignore: cast_nullable_to_non_nullable
                  as IslamMobLocalizations,
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        password: null == password
            ? _value.password
            : password // ignore: cast_nullable_to_non_nullable
                  as String,
        confirmPassword: null == confirmPassword
            ? _value.confirmPassword
            : confirmPassword // ignore: cast_nullable_to_non_nullable
                  as String,
        fullName: null == fullName
            ? _value.fullName
            : fullName // ignore: cast_nullable_to_non_nullable
                  as String,
        dateOfBirth: null == dateOfBirth
            ? _value.dateOfBirth
            : dateOfBirth // ignore: cast_nullable_to_non_nullable
                  as String,
        gender: null == gender
            ? _value.gender
            : gender // ignore: cast_nullable_to_non_nullable
                  as String,
        country: null == country
            ? _value.country
            : country // ignore: cast_nullable_to_non_nullable
                  as String,
        profilePic: freezed == profilePic
            ? _value.profilePic
            : profilePic // ignore: cast_nullable_to_non_nullable
                  as File?,
      ),
    );
  }
}

/// @nodoc

class _$UpdateLoginButtonEnablityImpl implements _UpdateLoginButtonEnablity {
  const _$UpdateLoginButtonEnablityImpl({
    required this.localizations,
    required this.email,
    required this.password,
    required this.confirmPassword,
    required this.fullName,
    required this.dateOfBirth,
    required this.gender,
    required this.country,
    required this.profilePic,
  });

  @override
  final IslamMobLocalizations localizations;
  @override
  final String email;
  @override
  final String password;
  @override
  final String confirmPassword;
  @override
  final String fullName;
  @override
  final String dateOfBirth;
  @override
  final String gender;
  @override
  final String country;
  @override
  final File? profilePic;

  @override
  String toString() {
    return 'RegisterEvent.updateLoginButtonEnablity(localizations: $localizations, email: $email, password: $password, confirmPassword: $confirmPassword, fullName: $fullName, dateOfBirth: $dateOfBirth, gender: $gender, country: $country, profilePic: $profilePic)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateLoginButtonEnablityImpl &&
            (identical(other.localizations, localizations) ||
                other.localizations == localizations) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.profilePic, profilePic) ||
                other.profilePic == profilePic));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    localizations,
    email,
    password,
    confirmPassword,
    fullName,
    dateOfBirth,
    gender,
    country,
    profilePic,
  );

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateLoginButtonEnablityImplCopyWith<_$UpdateLoginButtonEnablityImpl>
  get copyWith =>
      __$$UpdateLoginButtonEnablityImplCopyWithImpl<
        _$UpdateLoginButtonEnablityImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      IslamMobLocalizations localizations,
      String email,
      String password,
      String confirmPassword,
      String fullName,
      String dateOfBirth,
      String gender,
      String country,
      File? profilePic,
    )
    updateLoginButtonEnablity,
    required TResult Function(
      String email,
      String password,
      String fullName,
      String dateOfBirth,
      String gender,
      String country,
      File? profilePic,
      bool savedCradintial,
    )
    registerPressed,
  }) {
    return updateLoginButtonEnablity(
      localizations,
      email,
      password,
      confirmPassword,
      fullName,
      dateOfBirth,
      gender,
      country,
      profilePic,
    );
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      IslamMobLocalizations localizations,
      String email,
      String password,
      String confirmPassword,
      String fullName,
      String dateOfBirth,
      String gender,
      String country,
      File? profilePic,
    )?
    updateLoginButtonEnablity,
    TResult? Function(
      String email,
      String password,
      String fullName,
      String dateOfBirth,
      String gender,
      String country,
      File? profilePic,
      bool savedCradintial,
    )?
    registerPressed,
  }) {
    return updateLoginButtonEnablity?.call(
      localizations,
      email,
      password,
      confirmPassword,
      fullName,
      dateOfBirth,
      gender,
      country,
      profilePic,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      IslamMobLocalizations localizations,
      String email,
      String password,
      String confirmPassword,
      String fullName,
      String dateOfBirth,
      String gender,
      String country,
      File? profilePic,
    )?
    updateLoginButtonEnablity,
    TResult Function(
      String email,
      String password,
      String fullName,
      String dateOfBirth,
      String gender,
      String country,
      File? profilePic,
      bool savedCradintial,
    )?
    registerPressed,
    required TResult orElse(),
  }) {
    if (updateLoginButtonEnablity != null) {
      return updateLoginButtonEnablity(
        localizations,
        email,
        password,
        confirmPassword,
        fullName,
        dateOfBirth,
        gender,
        country,
        profilePic,
      );
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateLoginButtonEnablity value)
    updateLoginButtonEnablity,
    required TResult Function(_RegisterPressed value) registerPressed,
  }) {
    return updateLoginButtonEnablity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateLoginButtonEnablity value)?
    updateLoginButtonEnablity,
    TResult? Function(_RegisterPressed value)? registerPressed,
  }) {
    return updateLoginButtonEnablity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateLoginButtonEnablity value)?
    updateLoginButtonEnablity,
    TResult Function(_RegisterPressed value)? registerPressed,
    required TResult orElse(),
  }) {
    if (updateLoginButtonEnablity != null) {
      return updateLoginButtonEnablity(this);
    }
    return orElse();
  }
}

abstract class _UpdateLoginButtonEnablity implements RegisterEvent {
  const factory _UpdateLoginButtonEnablity({
    required final IslamMobLocalizations localizations,
    required final String email,
    required final String password,
    required final String confirmPassword,
    required final String fullName,
    required final String dateOfBirth,
    required final String gender,
    required final String country,
    required final File? profilePic,
  }) = _$UpdateLoginButtonEnablityImpl;

  IslamMobLocalizations get localizations;
  @override
  String get email;
  @override
  String get password;
  String get confirmPassword;
  @override
  String get fullName;
  @override
  String get dateOfBirth;
  @override
  String get gender;
  @override
  String get country;
  @override
  File? get profilePic;

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateLoginButtonEnablityImplCopyWith<_$UpdateLoginButtonEnablityImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterPressedImplCopyWith<$Res>
    implements $RegisterEventCopyWith<$Res> {
  factory _$$RegisterPressedImplCopyWith(
    _$RegisterPressedImpl value,
    $Res Function(_$RegisterPressedImpl) then,
  ) = __$$RegisterPressedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String email,
    String password,
    String fullName,
    String dateOfBirth,
    String gender,
    String country,
    File? profilePic,
    bool savedCradintial,
  });
}

/// @nodoc
class __$$RegisterPressedImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$RegisterPressedImpl>
    implements _$$RegisterPressedImplCopyWith<$Res> {
  __$$RegisterPressedImplCopyWithImpl(
    _$RegisterPressedImpl _value,
    $Res Function(_$RegisterPressedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? fullName = null,
    Object? dateOfBirth = null,
    Object? gender = null,
    Object? country = null,
    Object? profilePic = freezed,
    Object? savedCradintial = null,
  }) {
    return _then(
      _$RegisterPressedImpl(
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        password: null == password
            ? _value.password
            : password // ignore: cast_nullable_to_non_nullable
                  as String,
        fullName: null == fullName
            ? _value.fullName
            : fullName // ignore: cast_nullable_to_non_nullable
                  as String,
        dateOfBirth: null == dateOfBirth
            ? _value.dateOfBirth
            : dateOfBirth // ignore: cast_nullable_to_non_nullable
                  as String,
        gender: null == gender
            ? _value.gender
            : gender // ignore: cast_nullable_to_non_nullable
                  as String,
        country: null == country
            ? _value.country
            : country // ignore: cast_nullable_to_non_nullable
                  as String,
        profilePic: freezed == profilePic
            ? _value.profilePic
            : profilePic // ignore: cast_nullable_to_non_nullable
                  as File?,
        savedCradintial: null == savedCradintial
            ? _value.savedCradintial
            : savedCradintial // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$RegisterPressedImpl implements _RegisterPressed {
  const _$RegisterPressedImpl({
    required this.email,
    required this.password,
    required this.fullName,
    required this.dateOfBirth,
    required this.gender,
    required this.country,
    required this.profilePic,
    required this.savedCradintial,
  });

  @override
  final String email;
  @override
  final String password;
  @override
  final String fullName;
  @override
  final String dateOfBirth;
  @override
  final String gender;
  @override
  final String country;
  @override
  final File? profilePic;
  @override
  final bool savedCradintial;

  @override
  String toString() {
    return 'RegisterEvent.registerPressed(email: $email, password: $password, fullName: $fullName, dateOfBirth: $dateOfBirth, gender: $gender, country: $country, profilePic: $profilePic, savedCradintial: $savedCradintial)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterPressedImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.profilePic, profilePic) ||
                other.profilePic == profilePic) &&
            (identical(other.savedCradintial, savedCradintial) ||
                other.savedCradintial == savedCradintial));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    email,
    password,
    fullName,
    dateOfBirth,
    gender,
    country,
    profilePic,
    savedCradintial,
  );

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterPressedImplCopyWith<_$RegisterPressedImpl> get copyWith =>
      __$$RegisterPressedImplCopyWithImpl<_$RegisterPressedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      IslamMobLocalizations localizations,
      String email,
      String password,
      String confirmPassword,
      String fullName,
      String dateOfBirth,
      String gender,
      String country,
      File? profilePic,
    )
    updateLoginButtonEnablity,
    required TResult Function(
      String email,
      String password,
      String fullName,
      String dateOfBirth,
      String gender,
      String country,
      File? profilePic,
      bool savedCradintial,
    )
    registerPressed,
  }) {
    return registerPressed(
      email,
      password,
      fullName,
      dateOfBirth,
      gender,
      country,
      profilePic,
      savedCradintial,
    );
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      IslamMobLocalizations localizations,
      String email,
      String password,
      String confirmPassword,
      String fullName,
      String dateOfBirth,
      String gender,
      String country,
      File? profilePic,
    )?
    updateLoginButtonEnablity,
    TResult? Function(
      String email,
      String password,
      String fullName,
      String dateOfBirth,
      String gender,
      String country,
      File? profilePic,
      bool savedCradintial,
    )?
    registerPressed,
  }) {
    return registerPressed?.call(
      email,
      password,
      fullName,
      dateOfBirth,
      gender,
      country,
      profilePic,
      savedCradintial,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      IslamMobLocalizations localizations,
      String email,
      String password,
      String confirmPassword,
      String fullName,
      String dateOfBirth,
      String gender,
      String country,
      File? profilePic,
    )?
    updateLoginButtonEnablity,
    TResult Function(
      String email,
      String password,
      String fullName,
      String dateOfBirth,
      String gender,
      String country,
      File? profilePic,
      bool savedCradintial,
    )?
    registerPressed,
    required TResult orElse(),
  }) {
    if (registerPressed != null) {
      return registerPressed(
        email,
        password,
        fullName,
        dateOfBirth,
        gender,
        country,
        profilePic,
        savedCradintial,
      );
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateLoginButtonEnablity value)
    updateLoginButtonEnablity,
    required TResult Function(_RegisterPressed value) registerPressed,
  }) {
    return registerPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateLoginButtonEnablity value)?
    updateLoginButtonEnablity,
    TResult? Function(_RegisterPressed value)? registerPressed,
  }) {
    return registerPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateLoginButtonEnablity value)?
    updateLoginButtonEnablity,
    TResult Function(_RegisterPressed value)? registerPressed,
    required TResult orElse(),
  }) {
    if (registerPressed != null) {
      return registerPressed(this);
    }
    return orElse();
  }
}

abstract class _RegisterPressed implements RegisterEvent {
  const factory _RegisterPressed({
    required final String email,
    required final String password,
    required final String fullName,
    required final String dateOfBirth,
    required final String gender,
    required final String country,
    required final File? profilePic,
    required final bool savedCradintial,
  }) = _$RegisterPressedImpl;

  @override
  String get email;
  @override
  String get password;
  @override
  String get fullName;
  @override
  String get dateOfBirth;
  @override
  String get gender;
  @override
  String get country;
  @override
  File? get profilePic;
  bool get savedCradintial;

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterPressedImplCopyWith<_$RegisterPressedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegisterState {
  RegisterProcessState get processState => throw _privateConstructorUsedError;
  bool get isRegisterButtonEnabled => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterStateCopyWith<RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
    RegisterState value,
    $Res Function(RegisterState) then,
  ) = _$RegisterStateCopyWithImpl<$Res, RegisterState>;
  @useResult
  $Res call({
    RegisterProcessState processState,
    bool isRegisterButtonEnabled,
    String errorMessage,
  });

  $RegisterProcessStateCopyWith<$Res> get processState;
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res, $Val extends RegisterState>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? processState = null,
    Object? isRegisterButtonEnabled = null,
    Object? errorMessage = null,
  }) {
    return _then(
      _value.copyWith(
            processState: null == processState
                ? _value.processState
                : processState // ignore: cast_nullable_to_non_nullable
                      as RegisterProcessState,
            isRegisterButtonEnabled: null == isRegisterButtonEnabled
                ? _value.isRegisterButtonEnabled
                : isRegisterButtonEnabled // ignore: cast_nullable_to_non_nullable
                      as bool,
            errorMessage: null == errorMessage
                ? _value.errorMessage
                : errorMessage // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RegisterProcessStateCopyWith<$Res> get processState {
    return $RegisterProcessStateCopyWith<$Res>(_value.processState, (value) {
      return _then(_value.copyWith(processState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RegisterStateImplCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$$RegisterStateImplCopyWith(
    _$RegisterStateImpl value,
    $Res Function(_$RegisterStateImpl) then,
  ) = __$$RegisterStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    RegisterProcessState processState,
    bool isRegisterButtonEnabled,
    String errorMessage,
  });

  @override
  $RegisterProcessStateCopyWith<$Res> get processState;
}

/// @nodoc
class __$$RegisterStateImplCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$RegisterStateImpl>
    implements _$$RegisterStateImplCopyWith<$Res> {
  __$$RegisterStateImplCopyWithImpl(
    _$RegisterStateImpl _value,
    $Res Function(_$RegisterStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? processState = null,
    Object? isRegisterButtonEnabled = null,
    Object? errorMessage = null,
  }) {
    return _then(
      _$RegisterStateImpl(
        processState: null == processState
            ? _value.processState
            : processState // ignore: cast_nullable_to_non_nullable
                  as RegisterProcessState,
        isRegisterButtonEnabled: null == isRegisterButtonEnabled
            ? _value.isRegisterButtonEnabled
            : isRegisterButtonEnabled // ignore: cast_nullable_to_non_nullable
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

class _$RegisterStateImpl implements _RegisterState {
  const _$RegisterStateImpl({
    this.processState = const RegisterProcessState.idl(),
    this.isRegisterButtonEnabled = false,
    this.errorMessage = "",
  });

  @override
  @JsonKey()
  final RegisterProcessState processState;
  @override
  @JsonKey()
  final bool isRegisterButtonEnabled;
  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'RegisterState(processState: $processState, isRegisterButtonEnabled: $isRegisterButtonEnabled, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterStateImpl &&
            (identical(other.processState, processState) ||
                other.processState == processState) &&
            (identical(
                  other.isRegisterButtonEnabled,
                  isRegisterButtonEnabled,
                ) ||
                other.isRegisterButtonEnabled == isRegisterButtonEnabled) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    processState,
    isRegisterButtonEnabled,
    errorMessage,
  );

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterStateImplCopyWith<_$RegisterStateImpl> get copyWith =>
      __$$RegisterStateImplCopyWithImpl<_$RegisterStateImpl>(this, _$identity);
}

abstract class _RegisterState implements RegisterState {
  const factory _RegisterState({
    final RegisterProcessState processState,
    final bool isRegisterButtonEnabled,
    final String errorMessage,
  }) = _$RegisterStateImpl;

  @override
  RegisterProcessState get processState;
  @override
  bool get isRegisterButtonEnabled;
  @override
  String get errorMessage;

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterStateImplCopyWith<_$RegisterStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegisterProcessState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idl,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idl,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idl,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterProcessStateIdl value) idl,
    required TResult Function(_RegisterProcessStateLoading value) loading,
    required TResult Function(_RegisterProcessStateSuccess value) success,
    required TResult Function(_RegisterProcessStateError value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterProcessStateIdl value)? idl,
    TResult? Function(_RegisterProcessStateLoading value)? loading,
    TResult? Function(_RegisterProcessStateSuccess value)? success,
    TResult? Function(_RegisterProcessStateError value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterProcessStateIdl value)? idl,
    TResult Function(_RegisterProcessStateLoading value)? loading,
    TResult Function(_RegisterProcessStateSuccess value)? success,
    TResult Function(_RegisterProcessStateError value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterProcessStateCopyWith<$Res> {
  factory $RegisterProcessStateCopyWith(
    RegisterProcessState value,
    $Res Function(RegisterProcessState) then,
  ) = _$RegisterProcessStateCopyWithImpl<$Res, RegisterProcessState>;
}

/// @nodoc
class _$RegisterProcessStateCopyWithImpl<
  $Res,
  $Val extends RegisterProcessState
>
    implements $RegisterProcessStateCopyWith<$Res> {
  _$RegisterProcessStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterProcessState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$RegisterProcessStateIdlImplCopyWith<$Res> {
  factory _$$RegisterProcessStateIdlImplCopyWith(
    _$RegisterProcessStateIdlImpl value,
    $Res Function(_$RegisterProcessStateIdlImpl) then,
  ) = __$$RegisterProcessStateIdlImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterProcessStateIdlImplCopyWithImpl<$Res>
    extends
        _$RegisterProcessStateCopyWithImpl<$Res, _$RegisterProcessStateIdlImpl>
    implements _$$RegisterProcessStateIdlImplCopyWith<$Res> {
  __$$RegisterProcessStateIdlImplCopyWithImpl(
    _$RegisterProcessStateIdlImpl _value,
    $Res Function(_$RegisterProcessStateIdlImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RegisterProcessState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RegisterProcessStateIdlImpl implements _RegisterProcessStateIdl {
  const _$RegisterProcessStateIdlImpl();

  @override
  String toString() {
    return 'RegisterProcessState.idl()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterProcessStateIdlImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idl,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) {
    return idl();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idl,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) {
    return idl?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idl,
    TResult Function()? loading,
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
    required TResult Function(_RegisterProcessStateIdl value) idl,
    required TResult Function(_RegisterProcessStateLoading value) loading,
    required TResult Function(_RegisterProcessStateSuccess value) success,
    required TResult Function(_RegisterProcessStateError value) error,
  }) {
    return idl(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterProcessStateIdl value)? idl,
    TResult? Function(_RegisterProcessStateLoading value)? loading,
    TResult? Function(_RegisterProcessStateSuccess value)? success,
    TResult? Function(_RegisterProcessStateError value)? error,
  }) {
    return idl?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterProcessStateIdl value)? idl,
    TResult Function(_RegisterProcessStateLoading value)? loading,
    TResult Function(_RegisterProcessStateSuccess value)? success,
    TResult Function(_RegisterProcessStateError value)? error,
    required TResult orElse(),
  }) {
    if (idl != null) {
      return idl(this);
    }
    return orElse();
  }
}

abstract class _RegisterProcessStateIdl implements RegisterProcessState {
  const factory _RegisterProcessStateIdl() = _$RegisterProcessStateIdlImpl;
}

/// @nodoc
abstract class _$$RegisterProcessStateLoadingImplCopyWith<$Res> {
  factory _$$RegisterProcessStateLoadingImplCopyWith(
    _$RegisterProcessStateLoadingImpl value,
    $Res Function(_$RegisterProcessStateLoadingImpl) then,
  ) = __$$RegisterProcessStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterProcessStateLoadingImplCopyWithImpl<$Res>
    extends
        _$RegisterProcessStateCopyWithImpl<
          $Res,
          _$RegisterProcessStateLoadingImpl
        >
    implements _$$RegisterProcessStateLoadingImplCopyWith<$Res> {
  __$$RegisterProcessStateLoadingImplCopyWithImpl(
    _$RegisterProcessStateLoadingImpl _value,
    $Res Function(_$RegisterProcessStateLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RegisterProcessState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RegisterProcessStateLoadingImpl
    implements _RegisterProcessStateLoading {
  const _$RegisterProcessStateLoadingImpl();

  @override
  String toString() {
    return 'RegisterProcessState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterProcessStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idl,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idl,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idl,
    TResult Function()? loading,
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
    required TResult Function(_RegisterProcessStateIdl value) idl,
    required TResult Function(_RegisterProcessStateLoading value) loading,
    required TResult Function(_RegisterProcessStateSuccess value) success,
    required TResult Function(_RegisterProcessStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterProcessStateIdl value)? idl,
    TResult? Function(_RegisterProcessStateLoading value)? loading,
    TResult? Function(_RegisterProcessStateSuccess value)? success,
    TResult? Function(_RegisterProcessStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterProcessStateIdl value)? idl,
    TResult Function(_RegisterProcessStateLoading value)? loading,
    TResult Function(_RegisterProcessStateSuccess value)? success,
    TResult Function(_RegisterProcessStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _RegisterProcessStateLoading implements RegisterProcessState {
  const factory _RegisterProcessStateLoading() =
      _$RegisterProcessStateLoadingImpl;
}

/// @nodoc
abstract class _$$RegisterProcessStateSuccessImplCopyWith<$Res> {
  factory _$$RegisterProcessStateSuccessImplCopyWith(
    _$RegisterProcessStateSuccessImpl value,
    $Res Function(_$RegisterProcessStateSuccessImpl) then,
  ) = __$$RegisterProcessStateSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterProcessStateSuccessImplCopyWithImpl<$Res>
    extends
        _$RegisterProcessStateCopyWithImpl<
          $Res,
          _$RegisterProcessStateSuccessImpl
        >
    implements _$$RegisterProcessStateSuccessImplCopyWith<$Res> {
  __$$RegisterProcessStateSuccessImplCopyWithImpl(
    _$RegisterProcessStateSuccessImpl _value,
    $Res Function(_$RegisterProcessStateSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RegisterProcessState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RegisterProcessStateSuccessImpl
    implements _RegisterProcessStateSuccess {
  const _$RegisterProcessStateSuccessImpl();

  @override
  String toString() {
    return 'RegisterProcessState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterProcessStateSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idl,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idl,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idl,
    TResult Function()? loading,
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
    required TResult Function(_RegisterProcessStateIdl value) idl,
    required TResult Function(_RegisterProcessStateLoading value) loading,
    required TResult Function(_RegisterProcessStateSuccess value) success,
    required TResult Function(_RegisterProcessStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterProcessStateIdl value)? idl,
    TResult? Function(_RegisterProcessStateLoading value)? loading,
    TResult? Function(_RegisterProcessStateSuccess value)? success,
    TResult? Function(_RegisterProcessStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterProcessStateIdl value)? idl,
    TResult Function(_RegisterProcessStateLoading value)? loading,
    TResult Function(_RegisterProcessStateSuccess value)? success,
    TResult Function(_RegisterProcessStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _RegisterProcessStateSuccess implements RegisterProcessState {
  const factory _RegisterProcessStateSuccess() =
      _$RegisterProcessStateSuccessImpl;
}

/// @nodoc
abstract class _$$RegisterProcessStateErrorImplCopyWith<$Res> {
  factory _$$RegisterProcessStateErrorImplCopyWith(
    _$RegisterProcessStateErrorImpl value,
    $Res Function(_$RegisterProcessStateErrorImpl) then,
  ) = __$$RegisterProcessStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$RegisterProcessStateErrorImplCopyWithImpl<$Res>
    extends
        _$RegisterProcessStateCopyWithImpl<
          $Res,
          _$RegisterProcessStateErrorImpl
        >
    implements _$$RegisterProcessStateErrorImplCopyWith<$Res> {
  __$$RegisterProcessStateErrorImplCopyWithImpl(
    _$RegisterProcessStateErrorImpl _value,
    $Res Function(_$RegisterProcessStateErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RegisterProcessState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$RegisterProcessStateErrorImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$RegisterProcessStateErrorImpl implements _RegisterProcessStateError {
  const _$RegisterProcessStateErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'RegisterProcessState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterProcessStateErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of RegisterProcessState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterProcessStateErrorImplCopyWith<_$RegisterProcessStateErrorImpl>
  get copyWith =>
      __$$RegisterProcessStateErrorImplCopyWithImpl<
        _$RegisterProcessStateErrorImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idl,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idl,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idl,
    TResult Function()? loading,
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
    required TResult Function(_RegisterProcessStateIdl value) idl,
    required TResult Function(_RegisterProcessStateLoading value) loading,
    required TResult Function(_RegisterProcessStateSuccess value) success,
    required TResult Function(_RegisterProcessStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterProcessStateIdl value)? idl,
    TResult? Function(_RegisterProcessStateLoading value)? loading,
    TResult? Function(_RegisterProcessStateSuccess value)? success,
    TResult? Function(_RegisterProcessStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterProcessStateIdl value)? idl,
    TResult Function(_RegisterProcessStateLoading value)? loading,
    TResult Function(_RegisterProcessStateSuccess value)? success,
    TResult Function(_RegisterProcessStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _RegisterProcessStateError implements RegisterProcessState {
  const factory _RegisterProcessStateError(final String message) =
      _$RegisterProcessStateErrorImpl;

  String get message;

  /// Create a copy of RegisterProcessState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterProcessStateErrorImplCopyWith<_$RegisterProcessStateErrorImpl>
  get copyWith => throw _privateConstructorUsedError;
}
