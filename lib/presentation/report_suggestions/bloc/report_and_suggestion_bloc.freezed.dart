// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_and_suggestion_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ReportAndSuggestionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool status) updateEnableSubmitBtn,
    required TResult Function(bool status) updateLoadingStatus,
    required TResult Function(File? value) updateAttachment1,
    required TResult Function(File? value) updateAttachment2,
    required TResult Function(File? value) updateAttachment3,
    required TResult Function(bool status) updateInternetConnectionStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool status)? updateEnableSubmitBtn,
    TResult? Function(bool status)? updateLoadingStatus,
    TResult? Function(File? value)? updateAttachment1,
    TResult? Function(File? value)? updateAttachment2,
    TResult? Function(File? value)? updateAttachment3,
    TResult? Function(bool status)? updateInternetConnectionStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool status)? updateEnableSubmitBtn,
    TResult Function(bool status)? updateLoadingStatus,
    TResult Function(File? value)? updateAttachment1,
    TResult Function(File? value)? updateAttachment2,
    TResult Function(File? value)? updateAttachment3,
    TResult Function(bool status)? updateInternetConnectionStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateEnableSubmitBtn value)
        updateEnableSubmitBtn,
    required TResult Function(_UpdateLoadingStatus value) updateLoadingStatus,
    required TResult Function(_UpdateAttachment1 value) updateAttachment1,
    required TResult Function(_UpdateAttachment2 value) updateAttachment2,
    required TResult Function(_UpdateAttachment3 value) updateAttachment3,
    required TResult Function(_UpdateInternetConnectionStatus value)
        updateInternetConnectionStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateEnableSubmitBtn value)? updateEnableSubmitBtn,
    TResult? Function(_UpdateLoadingStatus value)? updateLoadingStatus,
    TResult? Function(_UpdateAttachment1 value)? updateAttachment1,
    TResult? Function(_UpdateAttachment2 value)? updateAttachment2,
    TResult? Function(_UpdateAttachment3 value)? updateAttachment3,
    TResult? Function(_UpdateInternetConnectionStatus value)?
        updateInternetConnectionStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateEnableSubmitBtn value)? updateEnableSubmitBtn,
    TResult Function(_UpdateLoadingStatus value)? updateLoadingStatus,
    TResult Function(_UpdateAttachment1 value)? updateAttachment1,
    TResult Function(_UpdateAttachment2 value)? updateAttachment2,
    TResult Function(_UpdateAttachment3 value)? updateAttachment3,
    TResult Function(_UpdateInternetConnectionStatus value)?
        updateInternetConnectionStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportAndSuggestionEventCopyWith<$Res> {
  factory $ReportAndSuggestionEventCopyWith(ReportAndSuggestionEvent value,
          $Res Function(ReportAndSuggestionEvent) then) =
      _$ReportAndSuggestionEventCopyWithImpl<$Res, ReportAndSuggestionEvent>;
}

/// @nodoc
class _$ReportAndSuggestionEventCopyWithImpl<$Res,
        $Val extends ReportAndSuggestionEvent>
    implements $ReportAndSuggestionEventCopyWith<$Res> {
  _$ReportAndSuggestionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReportAndSuggestionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UpdateEnableSubmitBtnImplCopyWith<$Res> {
  factory _$$UpdateEnableSubmitBtnImplCopyWith(
          _$UpdateEnableSubmitBtnImpl value,
          $Res Function(_$UpdateEnableSubmitBtnImpl) then) =
      __$$UpdateEnableSubmitBtnImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool status});
}

/// @nodoc
class __$$UpdateEnableSubmitBtnImplCopyWithImpl<$Res>
    extends _$ReportAndSuggestionEventCopyWithImpl<$Res,
        _$UpdateEnableSubmitBtnImpl>
    implements _$$UpdateEnableSubmitBtnImplCopyWith<$Res> {
  __$$UpdateEnableSubmitBtnImplCopyWithImpl(_$UpdateEnableSubmitBtnImpl _value,
      $Res Function(_$UpdateEnableSubmitBtnImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReportAndSuggestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$UpdateEnableSubmitBtnImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UpdateEnableSubmitBtnImpl implements _UpdateEnableSubmitBtn {
  const _$UpdateEnableSubmitBtnImpl({required this.status});

  @override
  final bool status;

  @override
  String toString() {
    return 'ReportAndSuggestionEvent.updateEnableSubmitBtn(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateEnableSubmitBtnImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of ReportAndSuggestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateEnableSubmitBtnImplCopyWith<_$UpdateEnableSubmitBtnImpl>
      get copyWith => __$$UpdateEnableSubmitBtnImplCopyWithImpl<
          _$UpdateEnableSubmitBtnImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool status) updateEnableSubmitBtn,
    required TResult Function(bool status) updateLoadingStatus,
    required TResult Function(File? value) updateAttachment1,
    required TResult Function(File? value) updateAttachment2,
    required TResult Function(File? value) updateAttachment3,
    required TResult Function(bool status) updateInternetConnectionStatus,
  }) {
    return updateEnableSubmitBtn(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool status)? updateEnableSubmitBtn,
    TResult? Function(bool status)? updateLoadingStatus,
    TResult? Function(File? value)? updateAttachment1,
    TResult? Function(File? value)? updateAttachment2,
    TResult? Function(File? value)? updateAttachment3,
    TResult? Function(bool status)? updateInternetConnectionStatus,
  }) {
    return updateEnableSubmitBtn?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool status)? updateEnableSubmitBtn,
    TResult Function(bool status)? updateLoadingStatus,
    TResult Function(File? value)? updateAttachment1,
    TResult Function(File? value)? updateAttachment2,
    TResult Function(File? value)? updateAttachment3,
    TResult Function(bool status)? updateInternetConnectionStatus,
    required TResult orElse(),
  }) {
    if (updateEnableSubmitBtn != null) {
      return updateEnableSubmitBtn(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateEnableSubmitBtn value)
        updateEnableSubmitBtn,
    required TResult Function(_UpdateLoadingStatus value) updateLoadingStatus,
    required TResult Function(_UpdateAttachment1 value) updateAttachment1,
    required TResult Function(_UpdateAttachment2 value) updateAttachment2,
    required TResult Function(_UpdateAttachment3 value) updateAttachment3,
    required TResult Function(_UpdateInternetConnectionStatus value)
        updateInternetConnectionStatus,
  }) {
    return updateEnableSubmitBtn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateEnableSubmitBtn value)? updateEnableSubmitBtn,
    TResult? Function(_UpdateLoadingStatus value)? updateLoadingStatus,
    TResult? Function(_UpdateAttachment1 value)? updateAttachment1,
    TResult? Function(_UpdateAttachment2 value)? updateAttachment2,
    TResult? Function(_UpdateAttachment3 value)? updateAttachment3,
    TResult? Function(_UpdateInternetConnectionStatus value)?
        updateInternetConnectionStatus,
  }) {
    return updateEnableSubmitBtn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateEnableSubmitBtn value)? updateEnableSubmitBtn,
    TResult Function(_UpdateLoadingStatus value)? updateLoadingStatus,
    TResult Function(_UpdateAttachment1 value)? updateAttachment1,
    TResult Function(_UpdateAttachment2 value)? updateAttachment2,
    TResult Function(_UpdateAttachment3 value)? updateAttachment3,
    TResult Function(_UpdateInternetConnectionStatus value)?
        updateInternetConnectionStatus,
    required TResult orElse(),
  }) {
    if (updateEnableSubmitBtn != null) {
      return updateEnableSubmitBtn(this);
    }
    return orElse();
  }
}

abstract class _UpdateEnableSubmitBtn implements ReportAndSuggestionEvent {
  const factory _UpdateEnableSubmitBtn({required final bool status}) =
      _$UpdateEnableSubmitBtnImpl;

  bool get status;

  /// Create a copy of ReportAndSuggestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateEnableSubmitBtnImplCopyWith<_$UpdateEnableSubmitBtnImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateLoadingStatusImplCopyWith<$Res> {
  factory _$$UpdateLoadingStatusImplCopyWith(_$UpdateLoadingStatusImpl value,
          $Res Function(_$UpdateLoadingStatusImpl) then) =
      __$$UpdateLoadingStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool status});
}

/// @nodoc
class __$$UpdateLoadingStatusImplCopyWithImpl<$Res>
    extends _$ReportAndSuggestionEventCopyWithImpl<$Res,
        _$UpdateLoadingStatusImpl>
    implements _$$UpdateLoadingStatusImplCopyWith<$Res> {
  __$$UpdateLoadingStatusImplCopyWithImpl(_$UpdateLoadingStatusImpl _value,
      $Res Function(_$UpdateLoadingStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReportAndSuggestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$UpdateLoadingStatusImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UpdateLoadingStatusImpl implements _UpdateLoadingStatus {
  const _$UpdateLoadingStatusImpl({required this.status});

  @override
  final bool status;

  @override
  String toString() {
    return 'ReportAndSuggestionEvent.updateLoadingStatus(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateLoadingStatusImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of ReportAndSuggestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateLoadingStatusImplCopyWith<_$UpdateLoadingStatusImpl> get copyWith =>
      __$$UpdateLoadingStatusImplCopyWithImpl<_$UpdateLoadingStatusImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool status) updateEnableSubmitBtn,
    required TResult Function(bool status) updateLoadingStatus,
    required TResult Function(File? value) updateAttachment1,
    required TResult Function(File? value) updateAttachment2,
    required TResult Function(File? value) updateAttachment3,
    required TResult Function(bool status) updateInternetConnectionStatus,
  }) {
    return updateLoadingStatus(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool status)? updateEnableSubmitBtn,
    TResult? Function(bool status)? updateLoadingStatus,
    TResult? Function(File? value)? updateAttachment1,
    TResult? Function(File? value)? updateAttachment2,
    TResult? Function(File? value)? updateAttachment3,
    TResult? Function(bool status)? updateInternetConnectionStatus,
  }) {
    return updateLoadingStatus?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool status)? updateEnableSubmitBtn,
    TResult Function(bool status)? updateLoadingStatus,
    TResult Function(File? value)? updateAttachment1,
    TResult Function(File? value)? updateAttachment2,
    TResult Function(File? value)? updateAttachment3,
    TResult Function(bool status)? updateInternetConnectionStatus,
    required TResult orElse(),
  }) {
    if (updateLoadingStatus != null) {
      return updateLoadingStatus(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateEnableSubmitBtn value)
        updateEnableSubmitBtn,
    required TResult Function(_UpdateLoadingStatus value) updateLoadingStatus,
    required TResult Function(_UpdateAttachment1 value) updateAttachment1,
    required TResult Function(_UpdateAttachment2 value) updateAttachment2,
    required TResult Function(_UpdateAttachment3 value) updateAttachment3,
    required TResult Function(_UpdateInternetConnectionStatus value)
        updateInternetConnectionStatus,
  }) {
    return updateLoadingStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateEnableSubmitBtn value)? updateEnableSubmitBtn,
    TResult? Function(_UpdateLoadingStatus value)? updateLoadingStatus,
    TResult? Function(_UpdateAttachment1 value)? updateAttachment1,
    TResult? Function(_UpdateAttachment2 value)? updateAttachment2,
    TResult? Function(_UpdateAttachment3 value)? updateAttachment3,
    TResult? Function(_UpdateInternetConnectionStatus value)?
        updateInternetConnectionStatus,
  }) {
    return updateLoadingStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateEnableSubmitBtn value)? updateEnableSubmitBtn,
    TResult Function(_UpdateLoadingStatus value)? updateLoadingStatus,
    TResult Function(_UpdateAttachment1 value)? updateAttachment1,
    TResult Function(_UpdateAttachment2 value)? updateAttachment2,
    TResult Function(_UpdateAttachment3 value)? updateAttachment3,
    TResult Function(_UpdateInternetConnectionStatus value)?
        updateInternetConnectionStatus,
    required TResult orElse(),
  }) {
    if (updateLoadingStatus != null) {
      return updateLoadingStatus(this);
    }
    return orElse();
  }
}

abstract class _UpdateLoadingStatus implements ReportAndSuggestionEvent {
  const factory _UpdateLoadingStatus({required final bool status}) =
      _$UpdateLoadingStatusImpl;

  bool get status;

  /// Create a copy of ReportAndSuggestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateLoadingStatusImplCopyWith<_$UpdateLoadingStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateAttachment1ImplCopyWith<$Res> {
  factory _$$UpdateAttachment1ImplCopyWith(_$UpdateAttachment1Impl value,
          $Res Function(_$UpdateAttachment1Impl) then) =
      __$$UpdateAttachment1ImplCopyWithImpl<$Res>;
  @useResult
  $Res call({File? value});
}

/// @nodoc
class __$$UpdateAttachment1ImplCopyWithImpl<$Res>
    extends _$ReportAndSuggestionEventCopyWithImpl<$Res,
        _$UpdateAttachment1Impl>
    implements _$$UpdateAttachment1ImplCopyWith<$Res> {
  __$$UpdateAttachment1ImplCopyWithImpl(_$UpdateAttachment1Impl _value,
      $Res Function(_$UpdateAttachment1Impl) _then)
      : super(_value, _then);

  /// Create a copy of ReportAndSuggestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$UpdateAttachment1Impl(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$UpdateAttachment1Impl implements _UpdateAttachment1 {
  const _$UpdateAttachment1Impl({required this.value});

  @override
  final File? value;

  @override
  String toString() {
    return 'ReportAndSuggestionEvent.updateAttachment1(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAttachment1Impl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of ReportAndSuggestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateAttachment1ImplCopyWith<_$UpdateAttachment1Impl> get copyWith =>
      __$$UpdateAttachment1ImplCopyWithImpl<_$UpdateAttachment1Impl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool status) updateEnableSubmitBtn,
    required TResult Function(bool status) updateLoadingStatus,
    required TResult Function(File? value) updateAttachment1,
    required TResult Function(File? value) updateAttachment2,
    required TResult Function(File? value) updateAttachment3,
    required TResult Function(bool status) updateInternetConnectionStatus,
  }) {
    return updateAttachment1(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool status)? updateEnableSubmitBtn,
    TResult? Function(bool status)? updateLoadingStatus,
    TResult? Function(File? value)? updateAttachment1,
    TResult? Function(File? value)? updateAttachment2,
    TResult? Function(File? value)? updateAttachment3,
    TResult? Function(bool status)? updateInternetConnectionStatus,
  }) {
    return updateAttachment1?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool status)? updateEnableSubmitBtn,
    TResult Function(bool status)? updateLoadingStatus,
    TResult Function(File? value)? updateAttachment1,
    TResult Function(File? value)? updateAttachment2,
    TResult Function(File? value)? updateAttachment3,
    TResult Function(bool status)? updateInternetConnectionStatus,
    required TResult orElse(),
  }) {
    if (updateAttachment1 != null) {
      return updateAttachment1(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateEnableSubmitBtn value)
        updateEnableSubmitBtn,
    required TResult Function(_UpdateLoadingStatus value) updateLoadingStatus,
    required TResult Function(_UpdateAttachment1 value) updateAttachment1,
    required TResult Function(_UpdateAttachment2 value) updateAttachment2,
    required TResult Function(_UpdateAttachment3 value) updateAttachment3,
    required TResult Function(_UpdateInternetConnectionStatus value)
        updateInternetConnectionStatus,
  }) {
    return updateAttachment1(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateEnableSubmitBtn value)? updateEnableSubmitBtn,
    TResult? Function(_UpdateLoadingStatus value)? updateLoadingStatus,
    TResult? Function(_UpdateAttachment1 value)? updateAttachment1,
    TResult? Function(_UpdateAttachment2 value)? updateAttachment2,
    TResult? Function(_UpdateAttachment3 value)? updateAttachment3,
    TResult? Function(_UpdateInternetConnectionStatus value)?
        updateInternetConnectionStatus,
  }) {
    return updateAttachment1?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateEnableSubmitBtn value)? updateEnableSubmitBtn,
    TResult Function(_UpdateLoadingStatus value)? updateLoadingStatus,
    TResult Function(_UpdateAttachment1 value)? updateAttachment1,
    TResult Function(_UpdateAttachment2 value)? updateAttachment2,
    TResult Function(_UpdateAttachment3 value)? updateAttachment3,
    TResult Function(_UpdateInternetConnectionStatus value)?
        updateInternetConnectionStatus,
    required TResult orElse(),
  }) {
    if (updateAttachment1 != null) {
      return updateAttachment1(this);
    }
    return orElse();
  }
}

abstract class _UpdateAttachment1 implements ReportAndSuggestionEvent {
  const factory _UpdateAttachment1({required final File? value}) =
      _$UpdateAttachment1Impl;

  File? get value;

  /// Create a copy of ReportAndSuggestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateAttachment1ImplCopyWith<_$UpdateAttachment1Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateAttachment2ImplCopyWith<$Res> {
  factory _$$UpdateAttachment2ImplCopyWith(_$UpdateAttachment2Impl value,
          $Res Function(_$UpdateAttachment2Impl) then) =
      __$$UpdateAttachment2ImplCopyWithImpl<$Res>;
  @useResult
  $Res call({File? value});
}

/// @nodoc
class __$$UpdateAttachment2ImplCopyWithImpl<$Res>
    extends _$ReportAndSuggestionEventCopyWithImpl<$Res,
        _$UpdateAttachment2Impl>
    implements _$$UpdateAttachment2ImplCopyWith<$Res> {
  __$$UpdateAttachment2ImplCopyWithImpl(_$UpdateAttachment2Impl _value,
      $Res Function(_$UpdateAttachment2Impl) _then)
      : super(_value, _then);

  /// Create a copy of ReportAndSuggestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$UpdateAttachment2Impl(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$UpdateAttachment2Impl implements _UpdateAttachment2 {
  const _$UpdateAttachment2Impl({required this.value});

  @override
  final File? value;

  @override
  String toString() {
    return 'ReportAndSuggestionEvent.updateAttachment2(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAttachment2Impl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of ReportAndSuggestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateAttachment2ImplCopyWith<_$UpdateAttachment2Impl> get copyWith =>
      __$$UpdateAttachment2ImplCopyWithImpl<_$UpdateAttachment2Impl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool status) updateEnableSubmitBtn,
    required TResult Function(bool status) updateLoadingStatus,
    required TResult Function(File? value) updateAttachment1,
    required TResult Function(File? value) updateAttachment2,
    required TResult Function(File? value) updateAttachment3,
    required TResult Function(bool status) updateInternetConnectionStatus,
  }) {
    return updateAttachment2(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool status)? updateEnableSubmitBtn,
    TResult? Function(bool status)? updateLoadingStatus,
    TResult? Function(File? value)? updateAttachment1,
    TResult? Function(File? value)? updateAttachment2,
    TResult? Function(File? value)? updateAttachment3,
    TResult? Function(bool status)? updateInternetConnectionStatus,
  }) {
    return updateAttachment2?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool status)? updateEnableSubmitBtn,
    TResult Function(bool status)? updateLoadingStatus,
    TResult Function(File? value)? updateAttachment1,
    TResult Function(File? value)? updateAttachment2,
    TResult Function(File? value)? updateAttachment3,
    TResult Function(bool status)? updateInternetConnectionStatus,
    required TResult orElse(),
  }) {
    if (updateAttachment2 != null) {
      return updateAttachment2(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateEnableSubmitBtn value)
        updateEnableSubmitBtn,
    required TResult Function(_UpdateLoadingStatus value) updateLoadingStatus,
    required TResult Function(_UpdateAttachment1 value) updateAttachment1,
    required TResult Function(_UpdateAttachment2 value) updateAttachment2,
    required TResult Function(_UpdateAttachment3 value) updateAttachment3,
    required TResult Function(_UpdateInternetConnectionStatus value)
        updateInternetConnectionStatus,
  }) {
    return updateAttachment2(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateEnableSubmitBtn value)? updateEnableSubmitBtn,
    TResult? Function(_UpdateLoadingStatus value)? updateLoadingStatus,
    TResult? Function(_UpdateAttachment1 value)? updateAttachment1,
    TResult? Function(_UpdateAttachment2 value)? updateAttachment2,
    TResult? Function(_UpdateAttachment3 value)? updateAttachment3,
    TResult? Function(_UpdateInternetConnectionStatus value)?
        updateInternetConnectionStatus,
  }) {
    return updateAttachment2?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateEnableSubmitBtn value)? updateEnableSubmitBtn,
    TResult Function(_UpdateLoadingStatus value)? updateLoadingStatus,
    TResult Function(_UpdateAttachment1 value)? updateAttachment1,
    TResult Function(_UpdateAttachment2 value)? updateAttachment2,
    TResult Function(_UpdateAttachment3 value)? updateAttachment3,
    TResult Function(_UpdateInternetConnectionStatus value)?
        updateInternetConnectionStatus,
    required TResult orElse(),
  }) {
    if (updateAttachment2 != null) {
      return updateAttachment2(this);
    }
    return orElse();
  }
}

abstract class _UpdateAttachment2 implements ReportAndSuggestionEvent {
  const factory _UpdateAttachment2({required final File? value}) =
      _$UpdateAttachment2Impl;

  File? get value;

  /// Create a copy of ReportAndSuggestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateAttachment2ImplCopyWith<_$UpdateAttachment2Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateAttachment3ImplCopyWith<$Res> {
  factory _$$UpdateAttachment3ImplCopyWith(_$UpdateAttachment3Impl value,
          $Res Function(_$UpdateAttachment3Impl) then) =
      __$$UpdateAttachment3ImplCopyWithImpl<$Res>;
  @useResult
  $Res call({File? value});
}

/// @nodoc
class __$$UpdateAttachment3ImplCopyWithImpl<$Res>
    extends _$ReportAndSuggestionEventCopyWithImpl<$Res,
        _$UpdateAttachment3Impl>
    implements _$$UpdateAttachment3ImplCopyWith<$Res> {
  __$$UpdateAttachment3ImplCopyWithImpl(_$UpdateAttachment3Impl _value,
      $Res Function(_$UpdateAttachment3Impl) _then)
      : super(_value, _then);

  /// Create a copy of ReportAndSuggestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$UpdateAttachment3Impl(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$UpdateAttachment3Impl implements _UpdateAttachment3 {
  const _$UpdateAttachment3Impl({required this.value});

  @override
  final File? value;

  @override
  String toString() {
    return 'ReportAndSuggestionEvent.updateAttachment3(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAttachment3Impl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of ReportAndSuggestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateAttachment3ImplCopyWith<_$UpdateAttachment3Impl> get copyWith =>
      __$$UpdateAttachment3ImplCopyWithImpl<_$UpdateAttachment3Impl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool status) updateEnableSubmitBtn,
    required TResult Function(bool status) updateLoadingStatus,
    required TResult Function(File? value) updateAttachment1,
    required TResult Function(File? value) updateAttachment2,
    required TResult Function(File? value) updateAttachment3,
    required TResult Function(bool status) updateInternetConnectionStatus,
  }) {
    return updateAttachment3(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool status)? updateEnableSubmitBtn,
    TResult? Function(bool status)? updateLoadingStatus,
    TResult? Function(File? value)? updateAttachment1,
    TResult? Function(File? value)? updateAttachment2,
    TResult? Function(File? value)? updateAttachment3,
    TResult? Function(bool status)? updateInternetConnectionStatus,
  }) {
    return updateAttachment3?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool status)? updateEnableSubmitBtn,
    TResult Function(bool status)? updateLoadingStatus,
    TResult Function(File? value)? updateAttachment1,
    TResult Function(File? value)? updateAttachment2,
    TResult Function(File? value)? updateAttachment3,
    TResult Function(bool status)? updateInternetConnectionStatus,
    required TResult orElse(),
  }) {
    if (updateAttachment3 != null) {
      return updateAttachment3(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateEnableSubmitBtn value)
        updateEnableSubmitBtn,
    required TResult Function(_UpdateLoadingStatus value) updateLoadingStatus,
    required TResult Function(_UpdateAttachment1 value) updateAttachment1,
    required TResult Function(_UpdateAttachment2 value) updateAttachment2,
    required TResult Function(_UpdateAttachment3 value) updateAttachment3,
    required TResult Function(_UpdateInternetConnectionStatus value)
        updateInternetConnectionStatus,
  }) {
    return updateAttachment3(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateEnableSubmitBtn value)? updateEnableSubmitBtn,
    TResult? Function(_UpdateLoadingStatus value)? updateLoadingStatus,
    TResult? Function(_UpdateAttachment1 value)? updateAttachment1,
    TResult? Function(_UpdateAttachment2 value)? updateAttachment2,
    TResult? Function(_UpdateAttachment3 value)? updateAttachment3,
    TResult? Function(_UpdateInternetConnectionStatus value)?
        updateInternetConnectionStatus,
  }) {
    return updateAttachment3?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateEnableSubmitBtn value)? updateEnableSubmitBtn,
    TResult Function(_UpdateLoadingStatus value)? updateLoadingStatus,
    TResult Function(_UpdateAttachment1 value)? updateAttachment1,
    TResult Function(_UpdateAttachment2 value)? updateAttachment2,
    TResult Function(_UpdateAttachment3 value)? updateAttachment3,
    TResult Function(_UpdateInternetConnectionStatus value)?
        updateInternetConnectionStatus,
    required TResult orElse(),
  }) {
    if (updateAttachment3 != null) {
      return updateAttachment3(this);
    }
    return orElse();
  }
}

abstract class _UpdateAttachment3 implements ReportAndSuggestionEvent {
  const factory _UpdateAttachment3({required final File? value}) =
      _$UpdateAttachment3Impl;

  File? get value;

  /// Create a copy of ReportAndSuggestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateAttachment3ImplCopyWith<_$UpdateAttachment3Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateInternetConnectionStatusImplCopyWith<$Res> {
  factory _$$UpdateInternetConnectionStatusImplCopyWith(
          _$UpdateInternetConnectionStatusImpl value,
          $Res Function(_$UpdateInternetConnectionStatusImpl) then) =
      __$$UpdateInternetConnectionStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool status});
}

/// @nodoc
class __$$UpdateInternetConnectionStatusImplCopyWithImpl<$Res>
    extends _$ReportAndSuggestionEventCopyWithImpl<$Res,
        _$UpdateInternetConnectionStatusImpl>
    implements _$$UpdateInternetConnectionStatusImplCopyWith<$Res> {
  __$$UpdateInternetConnectionStatusImplCopyWithImpl(
      _$UpdateInternetConnectionStatusImpl _value,
      $Res Function(_$UpdateInternetConnectionStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReportAndSuggestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$UpdateInternetConnectionStatusImpl(
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UpdateInternetConnectionStatusImpl
    implements _UpdateInternetConnectionStatus {
  _$UpdateInternetConnectionStatusImpl(this.status);

  @override
  final bool status;

  @override
  String toString() {
    return 'ReportAndSuggestionEvent.updateInternetConnectionStatus(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateInternetConnectionStatusImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of ReportAndSuggestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateInternetConnectionStatusImplCopyWith<
          _$UpdateInternetConnectionStatusImpl>
      get copyWith => __$$UpdateInternetConnectionStatusImplCopyWithImpl<
          _$UpdateInternetConnectionStatusImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool status) updateEnableSubmitBtn,
    required TResult Function(bool status) updateLoadingStatus,
    required TResult Function(File? value) updateAttachment1,
    required TResult Function(File? value) updateAttachment2,
    required TResult Function(File? value) updateAttachment3,
    required TResult Function(bool status) updateInternetConnectionStatus,
  }) {
    return updateInternetConnectionStatus(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool status)? updateEnableSubmitBtn,
    TResult? Function(bool status)? updateLoadingStatus,
    TResult? Function(File? value)? updateAttachment1,
    TResult? Function(File? value)? updateAttachment2,
    TResult? Function(File? value)? updateAttachment3,
    TResult? Function(bool status)? updateInternetConnectionStatus,
  }) {
    return updateInternetConnectionStatus?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool status)? updateEnableSubmitBtn,
    TResult Function(bool status)? updateLoadingStatus,
    TResult Function(File? value)? updateAttachment1,
    TResult Function(File? value)? updateAttachment2,
    TResult Function(File? value)? updateAttachment3,
    TResult Function(bool status)? updateInternetConnectionStatus,
    required TResult orElse(),
  }) {
    if (updateInternetConnectionStatus != null) {
      return updateInternetConnectionStatus(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateEnableSubmitBtn value)
        updateEnableSubmitBtn,
    required TResult Function(_UpdateLoadingStatus value) updateLoadingStatus,
    required TResult Function(_UpdateAttachment1 value) updateAttachment1,
    required TResult Function(_UpdateAttachment2 value) updateAttachment2,
    required TResult Function(_UpdateAttachment3 value) updateAttachment3,
    required TResult Function(_UpdateInternetConnectionStatus value)
        updateInternetConnectionStatus,
  }) {
    return updateInternetConnectionStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateEnableSubmitBtn value)? updateEnableSubmitBtn,
    TResult? Function(_UpdateLoadingStatus value)? updateLoadingStatus,
    TResult? Function(_UpdateAttachment1 value)? updateAttachment1,
    TResult? Function(_UpdateAttachment2 value)? updateAttachment2,
    TResult? Function(_UpdateAttachment3 value)? updateAttachment3,
    TResult? Function(_UpdateInternetConnectionStatus value)?
        updateInternetConnectionStatus,
  }) {
    return updateInternetConnectionStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateEnableSubmitBtn value)? updateEnableSubmitBtn,
    TResult Function(_UpdateLoadingStatus value)? updateLoadingStatus,
    TResult Function(_UpdateAttachment1 value)? updateAttachment1,
    TResult Function(_UpdateAttachment2 value)? updateAttachment2,
    TResult Function(_UpdateAttachment3 value)? updateAttachment3,
    TResult Function(_UpdateInternetConnectionStatus value)?
        updateInternetConnectionStatus,
    required TResult orElse(),
  }) {
    if (updateInternetConnectionStatus != null) {
      return updateInternetConnectionStatus(this);
    }
    return orElse();
  }
}

abstract class _UpdateInternetConnectionStatus
    implements ReportAndSuggestionEvent {
  factory _UpdateInternetConnectionStatus(final bool status) =
      _$UpdateInternetConnectionStatusImpl;

  bool get status;

  /// Create a copy of ReportAndSuggestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateInternetConnectionStatusImplCopyWith<
          _$UpdateInternetConnectionStatusImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ReportAndSuggestionState {
  bool get enableSubmitBtn => throw _privateConstructorUsedError;
  bool get loadingStatus => throw _privateConstructorUsedError;
  File? get attach1 => throw _privateConstructorUsedError;
  File? get attach2 => throw _privateConstructorUsedError;
  File? get attach3 => throw _privateConstructorUsedError;
  bool get internetConnectionStauts => throw _privateConstructorUsedError;

  /// Create a copy of ReportAndSuggestionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReportAndSuggestionStateCopyWith<ReportAndSuggestionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportAndSuggestionStateCopyWith<$Res> {
  factory $ReportAndSuggestionStateCopyWith(ReportAndSuggestionState value,
          $Res Function(ReportAndSuggestionState) then) =
      _$ReportAndSuggestionStateCopyWithImpl<$Res, ReportAndSuggestionState>;
  @useResult
  $Res call(
      {bool enableSubmitBtn,
      bool loadingStatus,
      File? attach1,
      File? attach2,
      File? attach3,
      bool internetConnectionStauts});
}

/// @nodoc
class _$ReportAndSuggestionStateCopyWithImpl<$Res,
        $Val extends ReportAndSuggestionState>
    implements $ReportAndSuggestionStateCopyWith<$Res> {
  _$ReportAndSuggestionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReportAndSuggestionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enableSubmitBtn = null,
    Object? loadingStatus = null,
    Object? attach1 = freezed,
    Object? attach2 = freezed,
    Object? attach3 = freezed,
    Object? internetConnectionStauts = null,
  }) {
    return _then(_value.copyWith(
      enableSubmitBtn: null == enableSubmitBtn
          ? _value.enableSubmitBtn
          : enableSubmitBtn // ignore: cast_nullable_to_non_nullable
              as bool,
      loadingStatus: null == loadingStatus
          ? _value.loadingStatus
          : loadingStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      attach1: freezed == attach1
          ? _value.attach1
          : attach1 // ignore: cast_nullable_to_non_nullable
              as File?,
      attach2: freezed == attach2
          ? _value.attach2
          : attach2 // ignore: cast_nullable_to_non_nullable
              as File?,
      attach3: freezed == attach3
          ? _value.attach3
          : attach3 // ignore: cast_nullable_to_non_nullable
              as File?,
      internetConnectionStauts: null == internetConnectionStauts
          ? _value.internetConnectionStauts
          : internetConnectionStauts // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReportAndSuggestionStateImplCopyWith<$Res>
    implements $ReportAndSuggestionStateCopyWith<$Res> {
  factory _$$ReportAndSuggestionStateImplCopyWith(
          _$ReportAndSuggestionStateImpl value,
          $Res Function(_$ReportAndSuggestionStateImpl) then) =
      __$$ReportAndSuggestionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool enableSubmitBtn,
      bool loadingStatus,
      File? attach1,
      File? attach2,
      File? attach3,
      bool internetConnectionStauts});
}

/// @nodoc
class __$$ReportAndSuggestionStateImplCopyWithImpl<$Res>
    extends _$ReportAndSuggestionStateCopyWithImpl<$Res,
        _$ReportAndSuggestionStateImpl>
    implements _$$ReportAndSuggestionStateImplCopyWith<$Res> {
  __$$ReportAndSuggestionStateImplCopyWithImpl(
      _$ReportAndSuggestionStateImpl _value,
      $Res Function(_$ReportAndSuggestionStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReportAndSuggestionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enableSubmitBtn = null,
    Object? loadingStatus = null,
    Object? attach1 = freezed,
    Object? attach2 = freezed,
    Object? attach3 = freezed,
    Object? internetConnectionStauts = null,
  }) {
    return _then(_$ReportAndSuggestionStateImpl(
      enableSubmitBtn: null == enableSubmitBtn
          ? _value.enableSubmitBtn
          : enableSubmitBtn // ignore: cast_nullable_to_non_nullable
              as bool,
      loadingStatus: null == loadingStatus
          ? _value.loadingStatus
          : loadingStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      attach1: freezed == attach1
          ? _value.attach1
          : attach1 // ignore: cast_nullable_to_non_nullable
              as File?,
      attach2: freezed == attach2
          ? _value.attach2
          : attach2 // ignore: cast_nullable_to_non_nullable
              as File?,
      attach3: freezed == attach3
          ? _value.attach3
          : attach3 // ignore: cast_nullable_to_non_nullable
              as File?,
      internetConnectionStauts: null == internetConnectionStauts
          ? _value.internetConnectionStauts
          : internetConnectionStauts // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ReportAndSuggestionStateImpl implements _ReportAndSuggestionState {
  const _$ReportAndSuggestionStateImpl(
      {this.enableSubmitBtn = false,
      this.loadingStatus = false,
      this.attach1,
      this.attach2,
      this.attach3,
      this.internetConnectionStauts = false});

  @override
  @JsonKey()
  final bool enableSubmitBtn;
  @override
  @JsonKey()
  final bool loadingStatus;
  @override
  final File? attach1;
  @override
  final File? attach2;
  @override
  final File? attach3;
  @override
  @JsonKey()
  final bool internetConnectionStauts;

  @override
  String toString() {
    return 'ReportAndSuggestionState(enableSubmitBtn: $enableSubmitBtn, loadingStatus: $loadingStatus, attach1: $attach1, attach2: $attach2, attach3: $attach3, internetConnectionStauts: $internetConnectionStauts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportAndSuggestionStateImpl &&
            (identical(other.enableSubmitBtn, enableSubmitBtn) ||
                other.enableSubmitBtn == enableSubmitBtn) &&
            (identical(other.loadingStatus, loadingStatus) ||
                other.loadingStatus == loadingStatus) &&
            (identical(other.attach1, attach1) || other.attach1 == attach1) &&
            (identical(other.attach2, attach2) || other.attach2 == attach2) &&
            (identical(other.attach3, attach3) || other.attach3 == attach3) &&
            (identical(
                    other.internetConnectionStauts, internetConnectionStauts) ||
                other.internetConnectionStauts == internetConnectionStauts));
  }

  @override
  int get hashCode => Object.hash(runtimeType, enableSubmitBtn, loadingStatus,
      attach1, attach2, attach3, internetConnectionStauts);

  /// Create a copy of ReportAndSuggestionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportAndSuggestionStateImplCopyWith<_$ReportAndSuggestionStateImpl>
      get copyWith => __$$ReportAndSuggestionStateImplCopyWithImpl<
          _$ReportAndSuggestionStateImpl>(this, _$identity);
}

abstract class _ReportAndSuggestionState implements ReportAndSuggestionState {
  const factory _ReportAndSuggestionState(
      {final bool enableSubmitBtn,
      final bool loadingStatus,
      final File? attach1,
      final File? attach2,
      final File? attach3,
      final bool internetConnectionStauts}) = _$ReportAndSuggestionStateImpl;

  @override
  bool get enableSubmitBtn;
  @override
  bool get loadingStatus;
  @override
  File? get attach1;
  @override
  File? get attach2;
  @override
  File? get attach3;
  @override
  bool get internetConnectionStauts;

  /// Create a copy of ReportAndSuggestionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReportAndSuggestionStateImplCopyWith<_$ReportAndSuggestionStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
