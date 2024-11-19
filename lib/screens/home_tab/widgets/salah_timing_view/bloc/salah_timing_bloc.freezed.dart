// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'salah_timing_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SalahTimingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int dayOffset, PrayTimingModel prayTiming)
        updateSalahTiming,
    required TResult Function(SalahTimeState status) updateCurrentSalahType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int dayOffset, PrayTimingModel prayTiming)?
        updateSalahTiming,
    TResult? Function(SalahTimeState status)? updateCurrentSalahType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int dayOffset, PrayTimingModel prayTiming)?
        updateSalahTiming,
    TResult Function(SalahTimeState status)? updateCurrentSalahType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateSalahTimingEvent value) updateSalahTiming,
    required TResult Function(_UpdateCurrentSalahType value)
        updateCurrentSalahType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateSalahTimingEvent value)? updateSalahTiming,
    TResult? Function(_UpdateCurrentSalahType value)? updateCurrentSalahType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateSalahTimingEvent value)? updateSalahTiming,
    TResult Function(_UpdateCurrentSalahType value)? updateCurrentSalahType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalahTimingEventCopyWith<$Res> {
  factory $SalahTimingEventCopyWith(
          SalahTimingEvent value, $Res Function(SalahTimingEvent) then) =
      _$SalahTimingEventCopyWithImpl<$Res, SalahTimingEvent>;
}

/// @nodoc
class _$SalahTimingEventCopyWithImpl<$Res, $Val extends SalahTimingEvent>
    implements $SalahTimingEventCopyWith<$Res> {
  _$SalahTimingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SalahTimingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UpdateSalahTimingEventImplCopyWith<$Res> {
  factory _$$UpdateSalahTimingEventImplCopyWith(
          _$UpdateSalahTimingEventImpl value,
          $Res Function(_$UpdateSalahTimingEventImpl) then) =
      __$$UpdateSalahTimingEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int dayOffset, PrayTimingModel prayTiming});
}

/// @nodoc
class __$$UpdateSalahTimingEventImplCopyWithImpl<$Res>
    extends _$SalahTimingEventCopyWithImpl<$Res, _$UpdateSalahTimingEventImpl>
    implements _$$UpdateSalahTimingEventImplCopyWith<$Res> {
  __$$UpdateSalahTimingEventImplCopyWithImpl(
      _$UpdateSalahTimingEventImpl _value,
      $Res Function(_$UpdateSalahTimingEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SalahTimingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dayOffset = null,
    Object? prayTiming = null,
  }) {
    return _then(_$UpdateSalahTimingEventImpl(
      null == dayOffset
          ? _value.dayOffset
          : dayOffset // ignore: cast_nullable_to_non_nullable
              as int,
      null == prayTiming
          ? _value.prayTiming
          : prayTiming // ignore: cast_nullable_to_non_nullable
              as PrayTimingModel,
    ));
  }
}

/// @nodoc

class _$UpdateSalahTimingEventImpl implements _UpdateSalahTimingEvent {
  const _$UpdateSalahTimingEventImpl(this.dayOffset, this.prayTiming);

  @override
  final int dayOffset;
// Offset from today (-3 for 3 days ago, +3 for 3 days ahead)
  @override
  final PrayTimingModel prayTiming;

  @override
  String toString() {
    return 'SalahTimingEvent.updateSalahTiming(dayOffset: $dayOffset, prayTiming: $prayTiming)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSalahTimingEventImpl &&
            (identical(other.dayOffset, dayOffset) ||
                other.dayOffset == dayOffset) &&
            (identical(other.prayTiming, prayTiming) ||
                other.prayTiming == prayTiming));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dayOffset, prayTiming);

  /// Create a copy of SalahTimingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSalahTimingEventImplCopyWith<_$UpdateSalahTimingEventImpl>
      get copyWith => __$$UpdateSalahTimingEventImplCopyWithImpl<
          _$UpdateSalahTimingEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int dayOffset, PrayTimingModel prayTiming)
        updateSalahTiming,
    required TResult Function(SalahTimeState status) updateCurrentSalahType,
  }) {
    return updateSalahTiming(dayOffset, prayTiming);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int dayOffset, PrayTimingModel prayTiming)?
        updateSalahTiming,
    TResult? Function(SalahTimeState status)? updateCurrentSalahType,
  }) {
    return updateSalahTiming?.call(dayOffset, prayTiming);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int dayOffset, PrayTimingModel prayTiming)?
        updateSalahTiming,
    TResult Function(SalahTimeState status)? updateCurrentSalahType,
    required TResult orElse(),
  }) {
    if (updateSalahTiming != null) {
      return updateSalahTiming(dayOffset, prayTiming);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateSalahTimingEvent value) updateSalahTiming,
    required TResult Function(_UpdateCurrentSalahType value)
        updateCurrentSalahType,
  }) {
    return updateSalahTiming(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateSalahTimingEvent value)? updateSalahTiming,
    TResult? Function(_UpdateCurrentSalahType value)? updateCurrentSalahType,
  }) {
    return updateSalahTiming?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateSalahTimingEvent value)? updateSalahTiming,
    TResult Function(_UpdateCurrentSalahType value)? updateCurrentSalahType,
    required TResult orElse(),
  }) {
    if (updateSalahTiming != null) {
      return updateSalahTiming(this);
    }
    return orElse();
  }
}

abstract class _UpdateSalahTimingEvent implements SalahTimingEvent {
  const factory _UpdateSalahTimingEvent(
          final int dayOffset, final PrayTimingModel prayTiming) =
      _$UpdateSalahTimingEventImpl;

  int get dayOffset; // Offset from today (-3 for 3 days ago, +3 for 3 days ahead)
  PrayTimingModel get prayTiming;

  /// Create a copy of SalahTimingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateSalahTimingEventImplCopyWith<_$UpdateSalahTimingEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCurrentSalahTypeImplCopyWith<$Res> {
  factory _$$UpdateCurrentSalahTypeImplCopyWith(
          _$UpdateCurrentSalahTypeImpl value,
          $Res Function(_$UpdateCurrentSalahTypeImpl) then) =
      __$$UpdateCurrentSalahTypeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SalahTimeState status});

  $SalahTimeStateCopyWith<$Res> get status;
}

/// @nodoc
class __$$UpdateCurrentSalahTypeImplCopyWithImpl<$Res>
    extends _$SalahTimingEventCopyWithImpl<$Res, _$UpdateCurrentSalahTypeImpl>
    implements _$$UpdateCurrentSalahTypeImplCopyWith<$Res> {
  __$$UpdateCurrentSalahTypeImplCopyWithImpl(
      _$UpdateCurrentSalahTypeImpl _value,
      $Res Function(_$UpdateCurrentSalahTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of SalahTimingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$UpdateCurrentSalahTypeImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SalahTimeState,
    ));
  }

  /// Create a copy of SalahTimingEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SalahTimeStateCopyWith<$Res> get status {
    return $SalahTimeStateCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value));
    });
  }
}

/// @nodoc

class _$UpdateCurrentSalahTypeImpl implements _UpdateCurrentSalahType {
  _$UpdateCurrentSalahTypeImpl({required this.status});

  @override
  final SalahTimeState status;

  @override
  String toString() {
    return 'SalahTimingEvent.updateCurrentSalahType(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCurrentSalahTypeImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of SalahTimingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCurrentSalahTypeImplCopyWith<_$UpdateCurrentSalahTypeImpl>
      get copyWith => __$$UpdateCurrentSalahTypeImplCopyWithImpl<
          _$UpdateCurrentSalahTypeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int dayOffset, PrayTimingModel prayTiming)
        updateSalahTiming,
    required TResult Function(SalahTimeState status) updateCurrentSalahType,
  }) {
    return updateCurrentSalahType(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int dayOffset, PrayTimingModel prayTiming)?
        updateSalahTiming,
    TResult? Function(SalahTimeState status)? updateCurrentSalahType,
  }) {
    return updateCurrentSalahType?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int dayOffset, PrayTimingModel prayTiming)?
        updateSalahTiming,
    TResult Function(SalahTimeState status)? updateCurrentSalahType,
    required TResult orElse(),
  }) {
    if (updateCurrentSalahType != null) {
      return updateCurrentSalahType(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateSalahTimingEvent value) updateSalahTiming,
    required TResult Function(_UpdateCurrentSalahType value)
        updateCurrentSalahType,
  }) {
    return updateCurrentSalahType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateSalahTimingEvent value)? updateSalahTiming,
    TResult? Function(_UpdateCurrentSalahType value)? updateCurrentSalahType,
  }) {
    return updateCurrentSalahType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateSalahTimingEvent value)? updateSalahTiming,
    TResult Function(_UpdateCurrentSalahType value)? updateCurrentSalahType,
    required TResult orElse(),
  }) {
    if (updateCurrentSalahType != null) {
      return updateCurrentSalahType(this);
    }
    return orElse();
  }
}

abstract class _UpdateCurrentSalahType implements SalahTimingEvent {
  factory _UpdateCurrentSalahType({required final SalahTimeState status}) =
      _$UpdateCurrentSalahTypeImpl;

  SalahTimeState get status;

  /// Create a copy of SalahTimingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateCurrentSalahTypeImplCopyWith<_$UpdateCurrentSalahTypeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SalahTimingState {
  SalahTimeState get currentSalahType => throw _privateConstructorUsedError;
  PrayTimingModel? get befor3DayPrayTiming =>
      throw _privateConstructorUsedError;
  PrayTimingModel? get befor2DayPrayTiming =>
      throw _privateConstructorUsedError;
  PrayTimingModel? get yesterdayPrayTiming =>
      throw _privateConstructorUsedError;
  PrayTimingModel? get todayPrayTiming => throw _privateConstructorUsedError;
  PrayTimingModel? get tommorrowPrayTiming =>
      throw _privateConstructorUsedError;
  PrayTimingModel? get after2DayPrayTiming =>
      throw _privateConstructorUsedError;
  PrayTimingModel? get after3DayPrayTiming =>
      throw _privateConstructorUsedError;

  /// Create a copy of SalahTimingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SalahTimingStateCopyWith<SalahTimingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalahTimingStateCopyWith<$Res> {
  factory $SalahTimingStateCopyWith(
          SalahTimingState value, $Res Function(SalahTimingState) then) =
      _$SalahTimingStateCopyWithImpl<$Res, SalahTimingState>;
  @useResult
  $Res call(
      {SalahTimeState currentSalahType,
      PrayTimingModel? befor3DayPrayTiming,
      PrayTimingModel? befor2DayPrayTiming,
      PrayTimingModel? yesterdayPrayTiming,
      PrayTimingModel? todayPrayTiming,
      PrayTimingModel? tommorrowPrayTiming,
      PrayTimingModel? after2DayPrayTiming,
      PrayTimingModel? after3DayPrayTiming});

  $SalahTimeStateCopyWith<$Res> get currentSalahType;
}

/// @nodoc
class _$SalahTimingStateCopyWithImpl<$Res, $Val extends SalahTimingState>
    implements $SalahTimingStateCopyWith<$Res> {
  _$SalahTimingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SalahTimingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentSalahType = null,
    Object? befor3DayPrayTiming = freezed,
    Object? befor2DayPrayTiming = freezed,
    Object? yesterdayPrayTiming = freezed,
    Object? todayPrayTiming = freezed,
    Object? tommorrowPrayTiming = freezed,
    Object? after2DayPrayTiming = freezed,
    Object? after3DayPrayTiming = freezed,
  }) {
    return _then(_value.copyWith(
      currentSalahType: null == currentSalahType
          ? _value.currentSalahType
          : currentSalahType // ignore: cast_nullable_to_non_nullable
              as SalahTimeState,
      befor3DayPrayTiming: freezed == befor3DayPrayTiming
          ? _value.befor3DayPrayTiming
          : befor3DayPrayTiming // ignore: cast_nullable_to_non_nullable
              as PrayTimingModel?,
      befor2DayPrayTiming: freezed == befor2DayPrayTiming
          ? _value.befor2DayPrayTiming
          : befor2DayPrayTiming // ignore: cast_nullable_to_non_nullable
              as PrayTimingModel?,
      yesterdayPrayTiming: freezed == yesterdayPrayTiming
          ? _value.yesterdayPrayTiming
          : yesterdayPrayTiming // ignore: cast_nullable_to_non_nullable
              as PrayTimingModel?,
      todayPrayTiming: freezed == todayPrayTiming
          ? _value.todayPrayTiming
          : todayPrayTiming // ignore: cast_nullable_to_non_nullable
              as PrayTimingModel?,
      tommorrowPrayTiming: freezed == tommorrowPrayTiming
          ? _value.tommorrowPrayTiming
          : tommorrowPrayTiming // ignore: cast_nullable_to_non_nullable
              as PrayTimingModel?,
      after2DayPrayTiming: freezed == after2DayPrayTiming
          ? _value.after2DayPrayTiming
          : after2DayPrayTiming // ignore: cast_nullable_to_non_nullable
              as PrayTimingModel?,
      after3DayPrayTiming: freezed == after3DayPrayTiming
          ? _value.after3DayPrayTiming
          : after3DayPrayTiming // ignore: cast_nullable_to_non_nullable
              as PrayTimingModel?,
    ) as $Val);
  }

  /// Create a copy of SalahTimingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SalahTimeStateCopyWith<$Res> get currentSalahType {
    return $SalahTimeStateCopyWith<$Res>(_value.currentSalahType, (value) {
      return _then(_value.copyWith(currentSalahType: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SalahTimingStateImplCopyWith<$Res>
    implements $SalahTimingStateCopyWith<$Res> {
  factory _$$SalahTimingStateImplCopyWith(_$SalahTimingStateImpl value,
          $Res Function(_$SalahTimingStateImpl) then) =
      __$$SalahTimingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SalahTimeState currentSalahType,
      PrayTimingModel? befor3DayPrayTiming,
      PrayTimingModel? befor2DayPrayTiming,
      PrayTimingModel? yesterdayPrayTiming,
      PrayTimingModel? todayPrayTiming,
      PrayTimingModel? tommorrowPrayTiming,
      PrayTimingModel? after2DayPrayTiming,
      PrayTimingModel? after3DayPrayTiming});

  @override
  $SalahTimeStateCopyWith<$Res> get currentSalahType;
}

/// @nodoc
class __$$SalahTimingStateImplCopyWithImpl<$Res>
    extends _$SalahTimingStateCopyWithImpl<$Res, _$SalahTimingStateImpl>
    implements _$$SalahTimingStateImplCopyWith<$Res> {
  __$$SalahTimingStateImplCopyWithImpl(_$SalahTimingStateImpl _value,
      $Res Function(_$SalahTimingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SalahTimingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentSalahType = null,
    Object? befor3DayPrayTiming = freezed,
    Object? befor2DayPrayTiming = freezed,
    Object? yesterdayPrayTiming = freezed,
    Object? todayPrayTiming = freezed,
    Object? tommorrowPrayTiming = freezed,
    Object? after2DayPrayTiming = freezed,
    Object? after3DayPrayTiming = freezed,
  }) {
    return _then(_$SalahTimingStateImpl(
      currentSalahType: null == currentSalahType
          ? _value.currentSalahType
          : currentSalahType // ignore: cast_nullable_to_non_nullable
              as SalahTimeState,
      befor3DayPrayTiming: freezed == befor3DayPrayTiming
          ? _value.befor3DayPrayTiming
          : befor3DayPrayTiming // ignore: cast_nullable_to_non_nullable
              as PrayTimingModel?,
      befor2DayPrayTiming: freezed == befor2DayPrayTiming
          ? _value.befor2DayPrayTiming
          : befor2DayPrayTiming // ignore: cast_nullable_to_non_nullable
              as PrayTimingModel?,
      yesterdayPrayTiming: freezed == yesterdayPrayTiming
          ? _value.yesterdayPrayTiming
          : yesterdayPrayTiming // ignore: cast_nullable_to_non_nullable
              as PrayTimingModel?,
      todayPrayTiming: freezed == todayPrayTiming
          ? _value.todayPrayTiming
          : todayPrayTiming // ignore: cast_nullable_to_non_nullable
              as PrayTimingModel?,
      tommorrowPrayTiming: freezed == tommorrowPrayTiming
          ? _value.tommorrowPrayTiming
          : tommorrowPrayTiming // ignore: cast_nullable_to_non_nullable
              as PrayTimingModel?,
      after2DayPrayTiming: freezed == after2DayPrayTiming
          ? _value.after2DayPrayTiming
          : after2DayPrayTiming // ignore: cast_nullable_to_non_nullable
              as PrayTimingModel?,
      after3DayPrayTiming: freezed == after3DayPrayTiming
          ? _value.after3DayPrayTiming
          : after3DayPrayTiming // ignore: cast_nullable_to_non_nullable
              as PrayTimingModel?,
    ));
  }
}

/// @nodoc

class _$SalahTimingStateImpl implements _SalahTimingState {
  const _$SalahTimingStateImpl(
      {this.currentSalahType = const SalahTimeState.fajir(),
      this.befor3DayPrayTiming,
      this.befor2DayPrayTiming,
      this.yesterdayPrayTiming,
      this.todayPrayTiming,
      this.tommorrowPrayTiming,
      this.after2DayPrayTiming,
      this.after3DayPrayTiming});

  @override
  @JsonKey()
  final SalahTimeState currentSalahType;
  @override
  final PrayTimingModel? befor3DayPrayTiming;
  @override
  final PrayTimingModel? befor2DayPrayTiming;
  @override
  final PrayTimingModel? yesterdayPrayTiming;
  @override
  final PrayTimingModel? todayPrayTiming;
  @override
  final PrayTimingModel? tommorrowPrayTiming;
  @override
  final PrayTimingModel? after2DayPrayTiming;
  @override
  final PrayTimingModel? after3DayPrayTiming;

  @override
  String toString() {
    return 'SalahTimingState(currentSalahType: $currentSalahType, befor3DayPrayTiming: $befor3DayPrayTiming, befor2DayPrayTiming: $befor2DayPrayTiming, yesterdayPrayTiming: $yesterdayPrayTiming, todayPrayTiming: $todayPrayTiming, tommorrowPrayTiming: $tommorrowPrayTiming, after2DayPrayTiming: $after2DayPrayTiming, after3DayPrayTiming: $after3DayPrayTiming)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SalahTimingStateImpl &&
            (identical(other.currentSalahType, currentSalahType) ||
                other.currentSalahType == currentSalahType) &&
            (identical(other.befor3DayPrayTiming, befor3DayPrayTiming) ||
                other.befor3DayPrayTiming == befor3DayPrayTiming) &&
            (identical(other.befor2DayPrayTiming, befor2DayPrayTiming) ||
                other.befor2DayPrayTiming == befor2DayPrayTiming) &&
            (identical(other.yesterdayPrayTiming, yesterdayPrayTiming) ||
                other.yesterdayPrayTiming == yesterdayPrayTiming) &&
            (identical(other.todayPrayTiming, todayPrayTiming) ||
                other.todayPrayTiming == todayPrayTiming) &&
            (identical(other.tommorrowPrayTiming, tommorrowPrayTiming) ||
                other.tommorrowPrayTiming == tommorrowPrayTiming) &&
            (identical(other.after2DayPrayTiming, after2DayPrayTiming) ||
                other.after2DayPrayTiming == after2DayPrayTiming) &&
            (identical(other.after3DayPrayTiming, after3DayPrayTiming) ||
                other.after3DayPrayTiming == after3DayPrayTiming));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentSalahType,
      befor3DayPrayTiming,
      befor2DayPrayTiming,
      yesterdayPrayTiming,
      todayPrayTiming,
      tommorrowPrayTiming,
      after2DayPrayTiming,
      after3DayPrayTiming);

  /// Create a copy of SalahTimingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SalahTimingStateImplCopyWith<_$SalahTimingStateImpl> get copyWith =>
      __$$SalahTimingStateImplCopyWithImpl<_$SalahTimingStateImpl>(
          this, _$identity);
}

abstract class _SalahTimingState implements SalahTimingState {
  const factory _SalahTimingState(
      {final SalahTimeState currentSalahType,
      final PrayTimingModel? befor3DayPrayTiming,
      final PrayTimingModel? befor2DayPrayTiming,
      final PrayTimingModel? yesterdayPrayTiming,
      final PrayTimingModel? todayPrayTiming,
      final PrayTimingModel? tommorrowPrayTiming,
      final PrayTimingModel? after2DayPrayTiming,
      final PrayTimingModel? after3DayPrayTiming}) = _$SalahTimingStateImpl;

  @override
  SalahTimeState get currentSalahType;
  @override
  PrayTimingModel? get befor3DayPrayTiming;
  @override
  PrayTimingModel? get befor2DayPrayTiming;
  @override
  PrayTimingModel? get yesterdayPrayTiming;
  @override
  PrayTimingModel? get todayPrayTiming;
  @override
  PrayTimingModel? get tommorrowPrayTiming;
  @override
  PrayTimingModel? get after2DayPrayTiming;
  @override
  PrayTimingModel? get after3DayPrayTiming;

  /// Create a copy of SalahTimingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SalahTimingStateImplCopyWith<_$SalahTimingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
