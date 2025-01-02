// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LocalNotification {
  String get rightNowMessage => throw _privateConstructorUsedError;
  String get remeningTimeMessage => throw _privateConstructorUsedError;
  String get nextSalahTime => throw _privateConstructorUsedError;
  String get soundFileName => throw _privateConstructorUsedError;

  /// Create a copy of LocalNotification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocalNotificationCopyWith<LocalNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalNotificationCopyWith<$Res> {
  factory $LocalNotificationCopyWith(
          LocalNotification value, $Res Function(LocalNotification) then) =
      _$LocalNotificationCopyWithImpl<$Res, LocalNotification>;
  @useResult
  $Res call(
      {String rightNowMessage,
      String remeningTimeMessage,
      String nextSalahTime,
      String soundFileName});
}

/// @nodoc
class _$LocalNotificationCopyWithImpl<$Res, $Val extends LocalNotification>
    implements $LocalNotificationCopyWith<$Res> {
  _$LocalNotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocalNotification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rightNowMessage = null,
    Object? remeningTimeMessage = null,
    Object? nextSalahTime = null,
    Object? soundFileName = null,
  }) {
    return _then(_value.copyWith(
      rightNowMessage: null == rightNowMessage
          ? _value.rightNowMessage
          : rightNowMessage // ignore: cast_nullable_to_non_nullable
              as String,
      remeningTimeMessage: null == remeningTimeMessage
          ? _value.remeningTimeMessage
          : remeningTimeMessage // ignore: cast_nullable_to_non_nullable
              as String,
      nextSalahTime: null == nextSalahTime
          ? _value.nextSalahTime
          : nextSalahTime // ignore: cast_nullable_to_non_nullable
              as String,
      soundFileName: null == soundFileName
          ? _value.soundFileName
          : soundFileName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocalNotificationImplCopyWith<$Res>
    implements $LocalNotificationCopyWith<$Res> {
  factory _$$LocalNotificationImplCopyWith(_$LocalNotificationImpl value,
          $Res Function(_$LocalNotificationImpl) then) =
      __$$LocalNotificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String rightNowMessage,
      String remeningTimeMessage,
      String nextSalahTime,
      String soundFileName});
}

/// @nodoc
class __$$LocalNotificationImplCopyWithImpl<$Res>
    extends _$LocalNotificationCopyWithImpl<$Res, _$LocalNotificationImpl>
    implements _$$LocalNotificationImplCopyWith<$Res> {
  __$$LocalNotificationImplCopyWithImpl(_$LocalNotificationImpl _value,
      $Res Function(_$LocalNotificationImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocalNotification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rightNowMessage = null,
    Object? remeningTimeMessage = null,
    Object? nextSalahTime = null,
    Object? soundFileName = null,
  }) {
    return _then(_$LocalNotificationImpl(
      rightNowMessage: null == rightNowMessage
          ? _value.rightNowMessage
          : rightNowMessage // ignore: cast_nullable_to_non_nullable
              as String,
      remeningTimeMessage: null == remeningTimeMessage
          ? _value.remeningTimeMessage
          : remeningTimeMessage // ignore: cast_nullable_to_non_nullable
              as String,
      nextSalahTime: null == nextSalahTime
          ? _value.nextSalahTime
          : nextSalahTime // ignore: cast_nullable_to_non_nullable
              as String,
      soundFileName: null == soundFileName
          ? _value.soundFileName
          : soundFileName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LocalNotificationImpl implements _LocalNotification {
  _$LocalNotificationImpl(
      {required this.rightNowMessage,
      required this.remeningTimeMessage,
      required this.nextSalahTime,
      required this.soundFileName});

  @override
  final String rightNowMessage;
  @override
  final String remeningTimeMessage;
  @override
  final String nextSalahTime;
  @override
  final String soundFileName;

  @override
  String toString() {
    return 'LocalNotification(rightNowMessage: $rightNowMessage, remeningTimeMessage: $remeningTimeMessage, nextSalahTime: $nextSalahTime, soundFileName: $soundFileName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalNotificationImpl &&
            (identical(other.rightNowMessage, rightNowMessage) ||
                other.rightNowMessage == rightNowMessage) &&
            (identical(other.remeningTimeMessage, remeningTimeMessage) ||
                other.remeningTimeMessage == remeningTimeMessage) &&
            (identical(other.nextSalahTime, nextSalahTime) ||
                other.nextSalahTime == nextSalahTime) &&
            (identical(other.soundFileName, soundFileName) ||
                other.soundFileName == soundFileName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rightNowMessage,
      remeningTimeMessage, nextSalahTime, soundFileName);

  /// Create a copy of LocalNotification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalNotificationImplCopyWith<_$LocalNotificationImpl> get copyWith =>
      __$$LocalNotificationImplCopyWithImpl<_$LocalNotificationImpl>(
          this, _$identity);
}

abstract class _LocalNotification implements LocalNotification {
  factory _LocalNotification(
      {required final String rightNowMessage,
      required final String remeningTimeMessage,
      required final String nextSalahTime,
      required final String soundFileName}) = _$LocalNotificationImpl;

  @override
  String get rightNowMessage;
  @override
  String get remeningTimeMessage;
  @override
  String get nextSalahTime;
  @override
  String get soundFileName;

  /// Create a copy of LocalNotification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocalNotificationImplCopyWith<_$LocalNotificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
