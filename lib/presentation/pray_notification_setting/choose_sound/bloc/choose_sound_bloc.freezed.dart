// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'choose_sound_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ChooseSoundEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      NotificationTypeState type,
      IslamMobLocalizations localization,
    )
    initialNotificationSoundSettings,
    required TResult Function(String soundFileName)
    changeNotificationSoundSettings,
    required TResult Function(NotificationTypeState type) saveChanges,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      NotificationTypeState type,
      IslamMobLocalizations localization,
    )?
    initialNotificationSoundSettings,
    TResult? Function(String soundFileName)? changeNotificationSoundSettings,
    TResult? Function(NotificationTypeState type)? saveChanges,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      NotificationTypeState type,
      IslamMobLocalizations localization,
    )?
    initialNotificationSoundSettings,
    TResult Function(String soundFileName)? changeNotificationSoundSettings,
    TResult Function(NotificationTypeState type)? saveChanges,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialNotificationSoundSettings value)
    initialNotificationSoundSettings,
    required TResult Function(_ChangeNotificationSoundSettings value)
    changeNotificationSoundSettings,
    required TResult Function(_SaveChanges value) saveChanges,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialNotificationSoundSettings value)?
    initialNotificationSoundSettings,
    TResult? Function(_ChangeNotificationSoundSettings value)?
    changeNotificationSoundSettings,
    TResult? Function(_SaveChanges value)? saveChanges,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialNotificationSoundSettings value)?
    initialNotificationSoundSettings,
    TResult Function(_ChangeNotificationSoundSettings value)?
    changeNotificationSoundSettings,
    TResult Function(_SaveChanges value)? saveChanges,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChooseSoundEventCopyWith<$Res> {
  factory $ChooseSoundEventCopyWith(
    ChooseSoundEvent value,
    $Res Function(ChooseSoundEvent) then,
  ) = _$ChooseSoundEventCopyWithImpl<$Res, ChooseSoundEvent>;
}

/// @nodoc
class _$ChooseSoundEventCopyWithImpl<$Res, $Val extends ChooseSoundEvent>
    implements $ChooseSoundEventCopyWith<$Res> {
  _$ChooseSoundEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChooseSoundEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialNotificationSoundSettingsImplCopyWith<$Res> {
  factory _$$InitialNotificationSoundSettingsImplCopyWith(
    _$InitialNotificationSoundSettingsImpl value,
    $Res Function(_$InitialNotificationSoundSettingsImpl) then,
  ) = __$$InitialNotificationSoundSettingsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NotificationTypeState type, IslamMobLocalizations localization});

  $NotificationTypeStateCopyWith<$Res> get type;
}

/// @nodoc
class __$$InitialNotificationSoundSettingsImplCopyWithImpl<$Res>
    extends
        _$ChooseSoundEventCopyWithImpl<
          $Res,
          _$InitialNotificationSoundSettingsImpl
        >
    implements _$$InitialNotificationSoundSettingsImplCopyWith<$Res> {
  __$$InitialNotificationSoundSettingsImplCopyWithImpl(
    _$InitialNotificationSoundSettingsImpl _value,
    $Res Function(_$InitialNotificationSoundSettingsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChooseSoundEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? type = null, Object? localization = null}) {
    return _then(
      _$InitialNotificationSoundSettingsImpl(
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as NotificationTypeState,
        localization: null == localization
            ? _value.localization
            : localization // ignore: cast_nullable_to_non_nullable
                  as IslamMobLocalizations,
      ),
    );
  }

  /// Create a copy of ChooseSoundEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NotificationTypeStateCopyWith<$Res> get type {
    return $NotificationTypeStateCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value));
    });
  }
}

/// @nodoc

class _$InitialNotificationSoundSettingsImpl
    implements _InitialNotificationSoundSettings {
  const _$InitialNotificationSoundSettingsImpl({
    required this.type,
    required this.localization,
  });

  @override
  final NotificationTypeState type;
  @override
  final IslamMobLocalizations localization;

  @override
  String toString() {
    return 'ChooseSoundEvent.initialNotificationSoundSettings(type: $type, localization: $localization)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialNotificationSoundSettingsImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.localization, localization) ||
                other.localization == localization));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, localization);

  /// Create a copy of ChooseSoundEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialNotificationSoundSettingsImplCopyWith<
    _$InitialNotificationSoundSettingsImpl
  >
  get copyWith =>
      __$$InitialNotificationSoundSettingsImplCopyWithImpl<
        _$InitialNotificationSoundSettingsImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      NotificationTypeState type,
      IslamMobLocalizations localization,
    )
    initialNotificationSoundSettings,
    required TResult Function(String soundFileName)
    changeNotificationSoundSettings,
    required TResult Function(NotificationTypeState type) saveChanges,
  }) {
    return initialNotificationSoundSettings(type, localization);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      NotificationTypeState type,
      IslamMobLocalizations localization,
    )?
    initialNotificationSoundSettings,
    TResult? Function(String soundFileName)? changeNotificationSoundSettings,
    TResult? Function(NotificationTypeState type)? saveChanges,
  }) {
    return initialNotificationSoundSettings?.call(type, localization);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      NotificationTypeState type,
      IslamMobLocalizations localization,
    )?
    initialNotificationSoundSettings,
    TResult Function(String soundFileName)? changeNotificationSoundSettings,
    TResult Function(NotificationTypeState type)? saveChanges,
    required TResult orElse(),
  }) {
    if (initialNotificationSoundSettings != null) {
      return initialNotificationSoundSettings(type, localization);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialNotificationSoundSettings value)
    initialNotificationSoundSettings,
    required TResult Function(_ChangeNotificationSoundSettings value)
    changeNotificationSoundSettings,
    required TResult Function(_SaveChanges value) saveChanges,
  }) {
    return initialNotificationSoundSettings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialNotificationSoundSettings value)?
    initialNotificationSoundSettings,
    TResult? Function(_ChangeNotificationSoundSettings value)?
    changeNotificationSoundSettings,
    TResult? Function(_SaveChanges value)? saveChanges,
  }) {
    return initialNotificationSoundSettings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialNotificationSoundSettings value)?
    initialNotificationSoundSettings,
    TResult Function(_ChangeNotificationSoundSettings value)?
    changeNotificationSoundSettings,
    TResult Function(_SaveChanges value)? saveChanges,
    required TResult orElse(),
  }) {
    if (initialNotificationSoundSettings != null) {
      return initialNotificationSoundSettings(this);
    }
    return orElse();
  }
}

abstract class _InitialNotificationSoundSettings implements ChooseSoundEvent {
  const factory _InitialNotificationSoundSettings({
    required final NotificationTypeState type,
    required final IslamMobLocalizations localization,
  }) = _$InitialNotificationSoundSettingsImpl;

  NotificationTypeState get type;
  IslamMobLocalizations get localization;

  /// Create a copy of ChooseSoundEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialNotificationSoundSettingsImplCopyWith<
    _$InitialNotificationSoundSettingsImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeNotificationSoundSettingsImplCopyWith<$Res> {
  factory _$$ChangeNotificationSoundSettingsImplCopyWith(
    _$ChangeNotificationSoundSettingsImpl value,
    $Res Function(_$ChangeNotificationSoundSettingsImpl) then,
  ) = __$$ChangeNotificationSoundSettingsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String soundFileName});
}

/// @nodoc
class __$$ChangeNotificationSoundSettingsImplCopyWithImpl<$Res>
    extends
        _$ChooseSoundEventCopyWithImpl<
          $Res,
          _$ChangeNotificationSoundSettingsImpl
        >
    implements _$$ChangeNotificationSoundSettingsImplCopyWith<$Res> {
  __$$ChangeNotificationSoundSettingsImplCopyWithImpl(
    _$ChangeNotificationSoundSettingsImpl _value,
    $Res Function(_$ChangeNotificationSoundSettingsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChooseSoundEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? soundFileName = null}) {
    return _then(
      _$ChangeNotificationSoundSettingsImpl(
        null == soundFileName
            ? _value.soundFileName
            : soundFileName // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ChangeNotificationSoundSettingsImpl
    implements _ChangeNotificationSoundSettings {
  const _$ChangeNotificationSoundSettingsImpl(this.soundFileName);

  @override
  final String soundFileName;

  @override
  String toString() {
    return 'ChooseSoundEvent.changeNotificationSoundSettings(soundFileName: $soundFileName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeNotificationSoundSettingsImpl &&
            (identical(other.soundFileName, soundFileName) ||
                other.soundFileName == soundFileName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, soundFileName);

  /// Create a copy of ChooseSoundEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeNotificationSoundSettingsImplCopyWith<
    _$ChangeNotificationSoundSettingsImpl
  >
  get copyWith =>
      __$$ChangeNotificationSoundSettingsImplCopyWithImpl<
        _$ChangeNotificationSoundSettingsImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      NotificationTypeState type,
      IslamMobLocalizations localization,
    )
    initialNotificationSoundSettings,
    required TResult Function(String soundFileName)
    changeNotificationSoundSettings,
    required TResult Function(NotificationTypeState type) saveChanges,
  }) {
    return changeNotificationSoundSettings(soundFileName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      NotificationTypeState type,
      IslamMobLocalizations localization,
    )?
    initialNotificationSoundSettings,
    TResult? Function(String soundFileName)? changeNotificationSoundSettings,
    TResult? Function(NotificationTypeState type)? saveChanges,
  }) {
    return changeNotificationSoundSettings?.call(soundFileName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      NotificationTypeState type,
      IslamMobLocalizations localization,
    )?
    initialNotificationSoundSettings,
    TResult Function(String soundFileName)? changeNotificationSoundSettings,
    TResult Function(NotificationTypeState type)? saveChanges,
    required TResult orElse(),
  }) {
    if (changeNotificationSoundSettings != null) {
      return changeNotificationSoundSettings(soundFileName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialNotificationSoundSettings value)
    initialNotificationSoundSettings,
    required TResult Function(_ChangeNotificationSoundSettings value)
    changeNotificationSoundSettings,
    required TResult Function(_SaveChanges value) saveChanges,
  }) {
    return changeNotificationSoundSettings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialNotificationSoundSettings value)?
    initialNotificationSoundSettings,
    TResult? Function(_ChangeNotificationSoundSettings value)?
    changeNotificationSoundSettings,
    TResult? Function(_SaveChanges value)? saveChanges,
  }) {
    return changeNotificationSoundSettings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialNotificationSoundSettings value)?
    initialNotificationSoundSettings,
    TResult Function(_ChangeNotificationSoundSettings value)?
    changeNotificationSoundSettings,
    TResult Function(_SaveChanges value)? saveChanges,
    required TResult orElse(),
  }) {
    if (changeNotificationSoundSettings != null) {
      return changeNotificationSoundSettings(this);
    }
    return orElse();
  }
}

abstract class _ChangeNotificationSoundSettings implements ChooseSoundEvent {
  const factory _ChangeNotificationSoundSettings(final String soundFileName) =
      _$ChangeNotificationSoundSettingsImpl;

  String get soundFileName;

  /// Create a copy of ChooseSoundEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeNotificationSoundSettingsImplCopyWith<
    _$ChangeNotificationSoundSettingsImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveChangesImplCopyWith<$Res> {
  factory _$$SaveChangesImplCopyWith(
    _$SaveChangesImpl value,
    $Res Function(_$SaveChangesImpl) then,
  ) = __$$SaveChangesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NotificationTypeState type});

  $NotificationTypeStateCopyWith<$Res> get type;
}

/// @nodoc
class __$$SaveChangesImplCopyWithImpl<$Res>
    extends _$ChooseSoundEventCopyWithImpl<$Res, _$SaveChangesImpl>
    implements _$$SaveChangesImplCopyWith<$Res> {
  __$$SaveChangesImplCopyWithImpl(
    _$SaveChangesImpl _value,
    $Res Function(_$SaveChangesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChooseSoundEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? type = null}) {
    return _then(
      _$SaveChangesImpl(
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as NotificationTypeState,
      ),
    );
  }

  /// Create a copy of ChooseSoundEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NotificationTypeStateCopyWith<$Res> get type {
    return $NotificationTypeStateCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value));
    });
  }
}

/// @nodoc

class _$SaveChangesImpl implements _SaveChanges {
  const _$SaveChangesImpl({required this.type});

  @override
  final NotificationTypeState type;

  @override
  String toString() {
    return 'ChooseSoundEvent.saveChanges(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveChangesImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  /// Create a copy of ChooseSoundEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveChangesImplCopyWith<_$SaveChangesImpl> get copyWith =>
      __$$SaveChangesImplCopyWithImpl<_$SaveChangesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      NotificationTypeState type,
      IslamMobLocalizations localization,
    )
    initialNotificationSoundSettings,
    required TResult Function(String soundFileName)
    changeNotificationSoundSettings,
    required TResult Function(NotificationTypeState type) saveChanges,
  }) {
    return saveChanges(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      NotificationTypeState type,
      IslamMobLocalizations localization,
    )?
    initialNotificationSoundSettings,
    TResult? Function(String soundFileName)? changeNotificationSoundSettings,
    TResult? Function(NotificationTypeState type)? saveChanges,
  }) {
    return saveChanges?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      NotificationTypeState type,
      IslamMobLocalizations localization,
    )?
    initialNotificationSoundSettings,
    TResult Function(String soundFileName)? changeNotificationSoundSettings,
    TResult Function(NotificationTypeState type)? saveChanges,
    required TResult orElse(),
  }) {
    if (saveChanges != null) {
      return saveChanges(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialNotificationSoundSettings value)
    initialNotificationSoundSettings,
    required TResult Function(_ChangeNotificationSoundSettings value)
    changeNotificationSoundSettings,
    required TResult Function(_SaveChanges value) saveChanges,
  }) {
    return saveChanges(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialNotificationSoundSettings value)?
    initialNotificationSoundSettings,
    TResult? Function(_ChangeNotificationSoundSettings value)?
    changeNotificationSoundSettings,
    TResult? Function(_SaveChanges value)? saveChanges,
  }) {
    return saveChanges?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialNotificationSoundSettings value)?
    initialNotificationSoundSettings,
    TResult Function(_ChangeNotificationSoundSettings value)?
    changeNotificationSoundSettings,
    TResult Function(_SaveChanges value)? saveChanges,
    required TResult orElse(),
  }) {
    if (saveChanges != null) {
      return saveChanges(this);
    }
    return orElse();
  }
}

abstract class _SaveChanges implements ChooseSoundEvent {
  const factory _SaveChanges({required final NotificationTypeState type}) =
      _$SaveChangesImpl;

  NotificationTypeState get type;

  /// Create a copy of ChooseSoundEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SaveChangesImplCopyWith<_$SaveChangesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChooseSoundState {
  String get selectedSound => throw _privateConstructorUsedError;
  List<NotificationSound> get notificationSounds =>
      throw _privateConstructorUsedError;

  /// Create a copy of ChooseSoundState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChooseSoundStateCopyWith<ChooseSoundState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChooseSoundStateCopyWith<$Res> {
  factory $ChooseSoundStateCopyWith(
    ChooseSoundState value,
    $Res Function(ChooseSoundState) then,
  ) = _$ChooseSoundStateCopyWithImpl<$Res, ChooseSoundState>;
  @useResult
  $Res call({String selectedSound, List<NotificationSound> notificationSounds});
}

/// @nodoc
class _$ChooseSoundStateCopyWithImpl<$Res, $Val extends ChooseSoundState>
    implements $ChooseSoundStateCopyWith<$Res> {
  _$ChooseSoundStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChooseSoundState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? selectedSound = null, Object? notificationSounds = null}) {
    return _then(
      _value.copyWith(
            selectedSound: null == selectedSound
                ? _value.selectedSound
                : selectedSound // ignore: cast_nullable_to_non_nullable
                      as String,
            notificationSounds: null == notificationSounds
                ? _value.notificationSounds
                : notificationSounds // ignore: cast_nullable_to_non_nullable
                      as List<NotificationSound>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChooseSoundStateImplCopyWith<$Res>
    implements $ChooseSoundStateCopyWith<$Res> {
  factory _$$ChooseSoundStateImplCopyWith(
    _$ChooseSoundStateImpl value,
    $Res Function(_$ChooseSoundStateImpl) then,
  ) = __$$ChooseSoundStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String selectedSound, List<NotificationSound> notificationSounds});
}

/// @nodoc
class __$$ChooseSoundStateImplCopyWithImpl<$Res>
    extends _$ChooseSoundStateCopyWithImpl<$Res, _$ChooseSoundStateImpl>
    implements _$$ChooseSoundStateImplCopyWith<$Res> {
  __$$ChooseSoundStateImplCopyWithImpl(
    _$ChooseSoundStateImpl _value,
    $Res Function(_$ChooseSoundStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChooseSoundState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? selectedSound = null, Object? notificationSounds = null}) {
    return _then(
      _$ChooseSoundStateImpl(
        selectedSound: null == selectedSound
            ? _value.selectedSound
            : selectedSound // ignore: cast_nullable_to_non_nullable
                  as String,
        notificationSounds: null == notificationSounds
            ? _value._notificationSounds
            : notificationSounds // ignore: cast_nullable_to_non_nullable
                  as List<NotificationSound>,
      ),
    );
  }
}

/// @nodoc

class _$ChooseSoundStateImpl implements _ChooseSoundState {
  const _$ChooseSoundStateImpl({
    this.selectedSound = "",
    final List<NotificationSound> notificationSounds = const [],
  }) : _notificationSounds = notificationSounds;

  @override
  @JsonKey()
  final String selectedSound;
  final List<NotificationSound> _notificationSounds;
  @override
  @JsonKey()
  List<NotificationSound> get notificationSounds {
    if (_notificationSounds is EqualUnmodifiableListView)
      return _notificationSounds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notificationSounds);
  }

  @override
  String toString() {
    return 'ChooseSoundState(selectedSound: $selectedSound, notificationSounds: $notificationSounds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChooseSoundStateImpl &&
            (identical(other.selectedSound, selectedSound) ||
                other.selectedSound == selectedSound) &&
            const DeepCollectionEquality().equals(
              other._notificationSounds,
              _notificationSounds,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    selectedSound,
    const DeepCollectionEquality().hash(_notificationSounds),
  );

  /// Create a copy of ChooseSoundState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChooseSoundStateImplCopyWith<_$ChooseSoundStateImpl> get copyWith =>
      __$$ChooseSoundStateImplCopyWithImpl<_$ChooseSoundStateImpl>(
        this,
        _$identity,
      );
}

abstract class _ChooseSoundState implements ChooseSoundState {
  const factory _ChooseSoundState({
    final String selectedSound,
    final List<NotificationSound> notificationSounds,
  }) = _$ChooseSoundStateImpl;

  @override
  String get selectedSound;
  @override
  List<NotificationSound> get notificationSounds;

  /// Create a copy of ChooseSoundState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChooseSoundStateImplCopyWith<_$ChooseSoundStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
