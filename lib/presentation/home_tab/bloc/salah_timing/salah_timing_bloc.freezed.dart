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
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SalahTimingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PrayTimingDateTimeModel> prayTimeForWeek)
    updateSalahTimingForTheWeek,
    required TResult Function(SalahTimeState status) updateCurrentSalahType,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PrayTimingDateTimeModel> prayTimeForWeek)?
    updateSalahTimingForTheWeek,
    TResult? Function(SalahTimeState status)? updateCurrentSalahType,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PrayTimingDateTimeModel> prayTimeForWeek)?
    updateSalahTimingForTheWeek,
    TResult Function(SalahTimeState status)? updateCurrentSalahType,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateSalahTimingForTheWeek value)
    updateSalahTimingForTheWeek,
    required TResult Function(_UpdateCurrentSalahType value)
    updateCurrentSalahType,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateSalahTimingForTheWeek value)?
    updateSalahTimingForTheWeek,
    TResult? Function(_UpdateCurrentSalahType value)? updateCurrentSalahType,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateSalahTimingForTheWeek value)?
    updateSalahTimingForTheWeek,
    TResult Function(_UpdateCurrentSalahType value)? updateCurrentSalahType,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalahTimingEventCopyWith<$Res> {
  factory $SalahTimingEventCopyWith(
    SalahTimingEvent value,
    $Res Function(SalahTimingEvent) then,
  ) = _$SalahTimingEventCopyWithImpl<$Res, SalahTimingEvent>;
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
abstract class _$$UpdateSalahTimingForTheWeekImplCopyWith<$Res> {
  factory _$$UpdateSalahTimingForTheWeekImplCopyWith(
    _$UpdateSalahTimingForTheWeekImpl value,
    $Res Function(_$UpdateSalahTimingForTheWeekImpl) then,
  ) = __$$UpdateSalahTimingForTheWeekImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PrayTimingDateTimeModel> prayTimeForWeek});
}

/// @nodoc
class __$$UpdateSalahTimingForTheWeekImplCopyWithImpl<$Res>
    extends
        _$SalahTimingEventCopyWithImpl<$Res, _$UpdateSalahTimingForTheWeekImpl>
    implements _$$UpdateSalahTimingForTheWeekImplCopyWith<$Res> {
  __$$UpdateSalahTimingForTheWeekImplCopyWithImpl(
    _$UpdateSalahTimingForTheWeekImpl _value,
    $Res Function(_$UpdateSalahTimingForTheWeekImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SalahTimingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? prayTimeForWeek = null}) {
    return _then(
      _$UpdateSalahTimingForTheWeekImpl(
        null == prayTimeForWeek
            ? _value._prayTimeForWeek
            : prayTimeForWeek // ignore: cast_nullable_to_non_nullable
                  as List<PrayTimingDateTimeModel>,
      ),
    );
  }
}

/// @nodoc

class _$UpdateSalahTimingForTheWeekImpl
    implements _UpdateSalahTimingForTheWeek {
  const _$UpdateSalahTimingForTheWeekImpl(
    final List<PrayTimingDateTimeModel> prayTimeForWeek,
  ) : _prayTimeForWeek = prayTimeForWeek;

  final List<PrayTimingDateTimeModel> _prayTimeForWeek;
  @override
  List<PrayTimingDateTimeModel> get prayTimeForWeek {
    if (_prayTimeForWeek is EqualUnmodifiableListView) return _prayTimeForWeek;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_prayTimeForWeek);
  }

  @override
  String toString() {
    return 'SalahTimingEvent.updateSalahTimingForTheWeek(prayTimeForWeek: $prayTimeForWeek)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSalahTimingForTheWeekImpl &&
            const DeepCollectionEquality().equals(
              other._prayTimeForWeek,
              _prayTimeForWeek,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_prayTimeForWeek),
  );

  /// Create a copy of SalahTimingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSalahTimingForTheWeekImplCopyWith<_$UpdateSalahTimingForTheWeekImpl>
  get copyWith =>
      __$$UpdateSalahTimingForTheWeekImplCopyWithImpl<
        _$UpdateSalahTimingForTheWeekImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PrayTimingDateTimeModel> prayTimeForWeek)
    updateSalahTimingForTheWeek,
    required TResult Function(SalahTimeState status) updateCurrentSalahType,
  }) {
    return updateSalahTimingForTheWeek(prayTimeForWeek);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PrayTimingDateTimeModel> prayTimeForWeek)?
    updateSalahTimingForTheWeek,
    TResult? Function(SalahTimeState status)? updateCurrentSalahType,
  }) {
    return updateSalahTimingForTheWeek?.call(prayTimeForWeek);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PrayTimingDateTimeModel> prayTimeForWeek)?
    updateSalahTimingForTheWeek,
    TResult Function(SalahTimeState status)? updateCurrentSalahType,
    required TResult orElse(),
  }) {
    if (updateSalahTimingForTheWeek != null) {
      return updateSalahTimingForTheWeek(prayTimeForWeek);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateSalahTimingForTheWeek value)
    updateSalahTimingForTheWeek,
    required TResult Function(_UpdateCurrentSalahType value)
    updateCurrentSalahType,
  }) {
    return updateSalahTimingForTheWeek(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateSalahTimingForTheWeek value)?
    updateSalahTimingForTheWeek,
    TResult? Function(_UpdateCurrentSalahType value)? updateCurrentSalahType,
  }) {
    return updateSalahTimingForTheWeek?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateSalahTimingForTheWeek value)?
    updateSalahTimingForTheWeek,
    TResult Function(_UpdateCurrentSalahType value)? updateCurrentSalahType,
    required TResult orElse(),
  }) {
    if (updateSalahTimingForTheWeek != null) {
      return updateSalahTimingForTheWeek(this);
    }
    return orElse();
  }
}

abstract class _UpdateSalahTimingForTheWeek implements SalahTimingEvent {
  const factory _UpdateSalahTimingForTheWeek(
    final List<PrayTimingDateTimeModel> prayTimeForWeek,
  ) = _$UpdateSalahTimingForTheWeekImpl;

  List<PrayTimingDateTimeModel> get prayTimeForWeek;

  /// Create a copy of SalahTimingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateSalahTimingForTheWeekImplCopyWith<_$UpdateSalahTimingForTheWeekImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCurrentSalahTypeImplCopyWith<$Res> {
  factory _$$UpdateCurrentSalahTypeImplCopyWith(
    _$UpdateCurrentSalahTypeImpl value,
    $Res Function(_$UpdateCurrentSalahTypeImpl) then,
  ) = __$$UpdateCurrentSalahTypeImplCopyWithImpl<$Res>;
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
    $Res Function(_$UpdateCurrentSalahTypeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SalahTimingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null}) {
    return _then(
      _$UpdateCurrentSalahTypeImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as SalahTimeState,
      ),
    );
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
  get copyWith =>
      __$$UpdateCurrentSalahTypeImplCopyWithImpl<_$UpdateCurrentSalahTypeImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PrayTimingDateTimeModel> prayTimeForWeek)
    updateSalahTimingForTheWeek,
    required TResult Function(SalahTimeState status) updateCurrentSalahType,
  }) {
    return updateCurrentSalahType(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PrayTimingDateTimeModel> prayTimeForWeek)?
    updateSalahTimingForTheWeek,
    TResult? Function(SalahTimeState status)? updateCurrentSalahType,
  }) {
    return updateCurrentSalahType?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PrayTimingDateTimeModel> prayTimeForWeek)?
    updateSalahTimingForTheWeek,
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
    required TResult Function(_UpdateSalahTimingForTheWeek value)
    updateSalahTimingForTheWeek,
    required TResult Function(_UpdateCurrentSalahType value)
    updateCurrentSalahType,
  }) {
    return updateCurrentSalahType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateSalahTimingForTheWeek value)?
    updateSalahTimingForTheWeek,
    TResult? Function(_UpdateCurrentSalahType value)? updateCurrentSalahType,
  }) {
    return updateCurrentSalahType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateSalahTimingForTheWeek value)?
    updateSalahTimingForTheWeek,
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
  List<PrayTimingDateTimeModel> get prayTimeForWeek =>
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
    SalahTimingState value,
    $Res Function(SalahTimingState) then,
  ) = _$SalahTimingStateCopyWithImpl<$Res, SalahTimingState>;
  @useResult
  $Res call({
    SalahTimeState currentSalahType,
    List<PrayTimingDateTimeModel> prayTimeForWeek,
  });

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
  $Res call({Object? currentSalahType = null, Object? prayTimeForWeek = null}) {
    return _then(
      _value.copyWith(
            currentSalahType: null == currentSalahType
                ? _value.currentSalahType
                : currentSalahType // ignore: cast_nullable_to_non_nullable
                      as SalahTimeState,
            prayTimeForWeek: null == prayTimeForWeek
                ? _value.prayTimeForWeek
                : prayTimeForWeek // ignore: cast_nullable_to_non_nullable
                      as List<PrayTimingDateTimeModel>,
          )
          as $Val,
    );
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
  factory _$$SalahTimingStateImplCopyWith(
    _$SalahTimingStateImpl value,
    $Res Function(_$SalahTimingStateImpl) then,
  ) = __$$SalahTimingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    SalahTimeState currentSalahType,
    List<PrayTimingDateTimeModel> prayTimeForWeek,
  });

  @override
  $SalahTimeStateCopyWith<$Res> get currentSalahType;
}

/// @nodoc
class __$$SalahTimingStateImplCopyWithImpl<$Res>
    extends _$SalahTimingStateCopyWithImpl<$Res, _$SalahTimingStateImpl>
    implements _$$SalahTimingStateImplCopyWith<$Res> {
  __$$SalahTimingStateImplCopyWithImpl(
    _$SalahTimingStateImpl _value,
    $Res Function(_$SalahTimingStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SalahTimingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? currentSalahType = null, Object? prayTimeForWeek = null}) {
    return _then(
      _$SalahTimingStateImpl(
        currentSalahType: null == currentSalahType
            ? _value.currentSalahType
            : currentSalahType // ignore: cast_nullable_to_non_nullable
                  as SalahTimeState,
        prayTimeForWeek: null == prayTimeForWeek
            ? _value._prayTimeForWeek
            : prayTimeForWeek // ignore: cast_nullable_to_non_nullable
                  as List<PrayTimingDateTimeModel>,
      ),
    );
  }
}

/// @nodoc

class _$SalahTimingStateImpl implements _SalahTimingState {
  const _$SalahTimingStateImpl({
    this.currentSalahType = const SalahTimeState.none(),
    final List<PrayTimingDateTimeModel> prayTimeForWeek = const [],
  }) : _prayTimeForWeek = prayTimeForWeek;

  @override
  @JsonKey()
  final SalahTimeState currentSalahType;
  final List<PrayTimingDateTimeModel> _prayTimeForWeek;
  @override
  @JsonKey()
  List<PrayTimingDateTimeModel> get prayTimeForWeek {
    if (_prayTimeForWeek is EqualUnmodifiableListView) return _prayTimeForWeek;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_prayTimeForWeek);
  }

  @override
  String toString() {
    return 'SalahTimingState(currentSalahType: $currentSalahType, prayTimeForWeek: $prayTimeForWeek)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SalahTimingStateImpl &&
            (identical(other.currentSalahType, currentSalahType) ||
                other.currentSalahType == currentSalahType) &&
            const DeepCollectionEquality().equals(
              other._prayTimeForWeek,
              _prayTimeForWeek,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    currentSalahType,
    const DeepCollectionEquality().hash(_prayTimeForWeek),
  );

  /// Create a copy of SalahTimingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SalahTimingStateImplCopyWith<_$SalahTimingStateImpl> get copyWith =>
      __$$SalahTimingStateImplCopyWithImpl<_$SalahTimingStateImpl>(
        this,
        _$identity,
      );
}

abstract class _SalahTimingState implements SalahTimingState {
  const factory _SalahTimingState({
    final SalahTimeState currentSalahType,
    final List<PrayTimingDateTimeModel> prayTimeForWeek,
  }) = _$SalahTimingStateImpl;

  @override
  SalahTimeState get currentSalahType;
  @override
  List<PrayTimingDateTimeModel> get prayTimeForWeek;

  /// Create a copy of SalahTimingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SalahTimingStateImplCopyWith<_$SalahTimingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
