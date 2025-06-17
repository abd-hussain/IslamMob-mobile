// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_sound.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NotificationSound {
  String get name => throw _privateConstructorUsedError;
  String get soundFileName => throw _privateConstructorUsedError;

  /// Create a copy of NotificationSound
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationSoundCopyWith<NotificationSound> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationSoundCopyWith<$Res> {
  factory $NotificationSoundCopyWith(
          NotificationSound value, $Res Function(NotificationSound) then) =
      _$NotificationSoundCopyWithImpl<$Res, NotificationSound>;
  @useResult
  $Res call({String name, String soundFileName});
}

/// @nodoc
class _$NotificationSoundCopyWithImpl<$Res, $Val extends NotificationSound>
    implements $NotificationSoundCopyWith<$Res> {
  _$NotificationSoundCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationSound
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? soundFileName = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      soundFileName: null == soundFileName
          ? _value.soundFileName
          : soundFileName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationSoundImplCopyWith<$Res>
    implements $NotificationSoundCopyWith<$Res> {
  factory _$$NotificationSoundImplCopyWith(_$NotificationSoundImpl value,
          $Res Function(_$NotificationSoundImpl) then) =
      __$$NotificationSoundImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String soundFileName});
}

/// @nodoc
class __$$NotificationSoundImplCopyWithImpl<$Res>
    extends _$NotificationSoundCopyWithImpl<$Res, _$NotificationSoundImpl>
    implements _$$NotificationSoundImplCopyWith<$Res> {
  __$$NotificationSoundImplCopyWithImpl(_$NotificationSoundImpl _value,
      $Res Function(_$NotificationSoundImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationSound
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? soundFileName = null,
  }) {
    return _then(_$NotificationSoundImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      soundFileName: null == soundFileName
          ? _value.soundFileName
          : soundFileName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NotificationSoundImpl implements _NotificationSound {
  _$NotificationSoundImpl({required this.name, required this.soundFileName});

  @override
  final String name;
  @override
  final String soundFileName;

  @override
  String toString() {
    return 'NotificationSound(name: $name, soundFileName: $soundFileName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationSoundImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.soundFileName, soundFileName) ||
                other.soundFileName == soundFileName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, soundFileName);

  /// Create a copy of NotificationSound
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationSoundImplCopyWith<_$NotificationSoundImpl> get copyWith =>
      __$$NotificationSoundImplCopyWithImpl<_$NotificationSoundImpl>(
          this, _$identity);
}

abstract class _NotificationSound implements NotificationSound {
  factory _NotificationSound(
      {required final String name,
      required final String soundFileName}) = _$NotificationSoundImpl;

  @override
  String get name;
  @override
  String get soundFileName;

  /// Create a copy of NotificationSound
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationSoundImplCopyWith<_$NotificationSoundImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
