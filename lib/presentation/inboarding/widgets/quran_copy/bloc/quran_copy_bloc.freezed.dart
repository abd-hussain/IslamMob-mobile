// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quran_copy_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QuranCopyEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QuranPrints>? list) updatelistOfPrints,
    required TResult Function(bool status) updateInternetConnectionStatus,
    required TResult Function(List<String> print) updatePrintsDownloading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<QuranPrints>? list)? updatelistOfPrints,
    TResult? Function(bool status)? updateInternetConnectionStatus,
    TResult? Function(List<String> print)? updatePrintsDownloading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QuranPrints>? list)? updatelistOfPrints,
    TResult Function(bool status)? updateInternetConnectionStatus,
    TResult Function(List<String> print)? updatePrintsDownloading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdatelistOfPrints value) updatelistOfPrints,
    required TResult Function(_UpdateInternetConnectionStatus value)
        updateInternetConnectionStatus,
    required TResult Function(_UpdatePrintsDownloading value)
        updatePrintsDownloading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdatelistOfPrints value)? updatelistOfPrints,
    TResult? Function(_UpdateInternetConnectionStatus value)?
        updateInternetConnectionStatus,
    TResult? Function(_UpdatePrintsDownloading value)? updatePrintsDownloading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdatelistOfPrints value)? updatelistOfPrints,
    TResult Function(_UpdateInternetConnectionStatus value)?
        updateInternetConnectionStatus,
    TResult Function(_UpdatePrintsDownloading value)? updatePrintsDownloading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuranCopyEventCopyWith<$Res> {
  factory $QuranCopyEventCopyWith(
          QuranCopyEvent value, $Res Function(QuranCopyEvent) then) =
      _$QuranCopyEventCopyWithImpl<$Res, QuranCopyEvent>;
}

/// @nodoc
class _$QuranCopyEventCopyWithImpl<$Res, $Val extends QuranCopyEvent>
    implements $QuranCopyEventCopyWith<$Res> {
  _$QuranCopyEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuranCopyEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UpdatelistOfPrintsImplCopyWith<$Res> {
  factory _$$UpdatelistOfPrintsImplCopyWith(_$UpdatelistOfPrintsImpl value,
          $Res Function(_$UpdatelistOfPrintsImpl) then) =
      __$$UpdatelistOfPrintsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<QuranPrints>? list});
}

/// @nodoc
class __$$UpdatelistOfPrintsImplCopyWithImpl<$Res>
    extends _$QuranCopyEventCopyWithImpl<$Res, _$UpdatelistOfPrintsImpl>
    implements _$$UpdatelistOfPrintsImplCopyWith<$Res> {
  __$$UpdatelistOfPrintsImplCopyWithImpl(_$UpdatelistOfPrintsImpl _value,
      $Res Function(_$UpdatelistOfPrintsImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuranCopyEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = freezed,
  }) {
    return _then(_$UpdatelistOfPrintsImpl(
      freezed == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<QuranPrints>?,
    ));
  }
}

/// @nodoc

class _$UpdatelistOfPrintsImpl implements _UpdatelistOfPrints {
  _$UpdatelistOfPrintsImpl(final List<QuranPrints>? list) : _list = list;

  final List<QuranPrints>? _list;
  @override
  List<QuranPrints>? get list {
    final value = _list;
    if (value == null) return null;
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'QuranCopyEvent.updatelistOfPrints(list: $list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatelistOfPrintsImpl &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  /// Create a copy of QuranCopyEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatelistOfPrintsImplCopyWith<_$UpdatelistOfPrintsImpl> get copyWith =>
      __$$UpdatelistOfPrintsImplCopyWithImpl<_$UpdatelistOfPrintsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QuranPrints>? list) updatelistOfPrints,
    required TResult Function(bool status) updateInternetConnectionStatus,
    required TResult Function(List<String> print) updatePrintsDownloading,
  }) {
    return updatelistOfPrints(list);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<QuranPrints>? list)? updatelistOfPrints,
    TResult? Function(bool status)? updateInternetConnectionStatus,
    TResult? Function(List<String> print)? updatePrintsDownloading,
  }) {
    return updatelistOfPrints?.call(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QuranPrints>? list)? updatelistOfPrints,
    TResult Function(bool status)? updateInternetConnectionStatus,
    TResult Function(List<String> print)? updatePrintsDownloading,
    required TResult orElse(),
  }) {
    if (updatelistOfPrints != null) {
      return updatelistOfPrints(list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdatelistOfPrints value) updatelistOfPrints,
    required TResult Function(_UpdateInternetConnectionStatus value)
        updateInternetConnectionStatus,
    required TResult Function(_UpdatePrintsDownloading value)
        updatePrintsDownloading,
  }) {
    return updatelistOfPrints(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdatelistOfPrints value)? updatelistOfPrints,
    TResult? Function(_UpdateInternetConnectionStatus value)?
        updateInternetConnectionStatus,
    TResult? Function(_UpdatePrintsDownloading value)? updatePrintsDownloading,
  }) {
    return updatelistOfPrints?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdatelistOfPrints value)? updatelistOfPrints,
    TResult Function(_UpdateInternetConnectionStatus value)?
        updateInternetConnectionStatus,
    TResult Function(_UpdatePrintsDownloading value)? updatePrintsDownloading,
    required TResult orElse(),
  }) {
    if (updatelistOfPrints != null) {
      return updatelistOfPrints(this);
    }
    return orElse();
  }
}

abstract class _UpdatelistOfPrints implements QuranCopyEvent {
  factory _UpdatelistOfPrints(final List<QuranPrints>? list) =
      _$UpdatelistOfPrintsImpl;

  List<QuranPrints>? get list;

  /// Create a copy of QuranCopyEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatelistOfPrintsImplCopyWith<_$UpdatelistOfPrintsImpl> get copyWith =>
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
    extends _$QuranCopyEventCopyWithImpl<$Res,
        _$UpdateInternetConnectionStatusImpl>
    implements _$$UpdateInternetConnectionStatusImplCopyWith<$Res> {
  __$$UpdateInternetConnectionStatusImplCopyWithImpl(
      _$UpdateInternetConnectionStatusImpl _value,
      $Res Function(_$UpdateInternetConnectionStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuranCopyEvent
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
    return 'QuranCopyEvent.updateInternetConnectionStatus(status: $status)';
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

  /// Create a copy of QuranCopyEvent
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
    required TResult Function(List<QuranPrints>? list) updatelistOfPrints,
    required TResult Function(bool status) updateInternetConnectionStatus,
    required TResult Function(List<String> print) updatePrintsDownloading,
  }) {
    return updateInternetConnectionStatus(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<QuranPrints>? list)? updatelistOfPrints,
    TResult? Function(bool status)? updateInternetConnectionStatus,
    TResult? Function(List<String> print)? updatePrintsDownloading,
  }) {
    return updateInternetConnectionStatus?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QuranPrints>? list)? updatelistOfPrints,
    TResult Function(bool status)? updateInternetConnectionStatus,
    TResult Function(List<String> print)? updatePrintsDownloading,
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
    required TResult Function(_UpdatelistOfPrints value) updatelistOfPrints,
    required TResult Function(_UpdateInternetConnectionStatus value)
        updateInternetConnectionStatus,
    required TResult Function(_UpdatePrintsDownloading value)
        updatePrintsDownloading,
  }) {
    return updateInternetConnectionStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdatelistOfPrints value)? updatelistOfPrints,
    TResult? Function(_UpdateInternetConnectionStatus value)?
        updateInternetConnectionStatus,
    TResult? Function(_UpdatePrintsDownloading value)? updatePrintsDownloading,
  }) {
    return updateInternetConnectionStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdatelistOfPrints value)? updatelistOfPrints,
    TResult Function(_UpdateInternetConnectionStatus value)?
        updateInternetConnectionStatus,
    TResult Function(_UpdatePrintsDownloading value)? updatePrintsDownloading,
    required TResult orElse(),
  }) {
    if (updateInternetConnectionStatus != null) {
      return updateInternetConnectionStatus(this);
    }
    return orElse();
  }
}

abstract class _UpdateInternetConnectionStatus implements QuranCopyEvent {
  factory _UpdateInternetConnectionStatus(final bool status) =
      _$UpdateInternetConnectionStatusImpl;

  bool get status;

  /// Create a copy of QuranCopyEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateInternetConnectionStatusImplCopyWith<
          _$UpdateInternetConnectionStatusImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatePrintsDownloadingImplCopyWith<$Res> {
  factory _$$UpdatePrintsDownloadingImplCopyWith(
          _$UpdatePrintsDownloadingImpl value,
          $Res Function(_$UpdatePrintsDownloadingImpl) then) =
      __$$UpdatePrintsDownloadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> print});
}

/// @nodoc
class __$$UpdatePrintsDownloadingImplCopyWithImpl<$Res>
    extends _$QuranCopyEventCopyWithImpl<$Res, _$UpdatePrintsDownloadingImpl>
    implements _$$UpdatePrintsDownloadingImplCopyWith<$Res> {
  __$$UpdatePrintsDownloadingImplCopyWithImpl(
      _$UpdatePrintsDownloadingImpl _value,
      $Res Function(_$UpdatePrintsDownloadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuranCopyEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? print = null,
  }) {
    return _then(_$UpdatePrintsDownloadingImpl(
      null == print
          ? _value._print
          : print // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$UpdatePrintsDownloadingImpl implements _UpdatePrintsDownloading {
  _$UpdatePrintsDownloadingImpl(final List<String> print) : _print = print;

  final List<String> _print;
  @override
  List<String> get print {
    if (_print is EqualUnmodifiableListView) return _print;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_print);
  }

  @override
  String toString() {
    return 'QuranCopyEvent.updatePrintsDownloading(print: $print)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePrintsDownloadingImpl &&
            const DeepCollectionEquality().equals(other._print, _print));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_print));

  /// Create a copy of QuranCopyEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePrintsDownloadingImplCopyWith<_$UpdatePrintsDownloadingImpl>
      get copyWith => __$$UpdatePrintsDownloadingImplCopyWithImpl<
          _$UpdatePrintsDownloadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QuranPrints>? list) updatelistOfPrints,
    required TResult Function(bool status) updateInternetConnectionStatus,
    required TResult Function(List<String> print) updatePrintsDownloading,
  }) {
    return updatePrintsDownloading(print);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<QuranPrints>? list)? updatelistOfPrints,
    TResult? Function(bool status)? updateInternetConnectionStatus,
    TResult? Function(List<String> print)? updatePrintsDownloading,
  }) {
    return updatePrintsDownloading?.call(print);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QuranPrints>? list)? updatelistOfPrints,
    TResult Function(bool status)? updateInternetConnectionStatus,
    TResult Function(List<String> print)? updatePrintsDownloading,
    required TResult orElse(),
  }) {
    if (updatePrintsDownloading != null) {
      return updatePrintsDownloading(print);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdatelistOfPrints value) updatelistOfPrints,
    required TResult Function(_UpdateInternetConnectionStatus value)
        updateInternetConnectionStatus,
    required TResult Function(_UpdatePrintsDownloading value)
        updatePrintsDownloading,
  }) {
    return updatePrintsDownloading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdatelistOfPrints value)? updatelistOfPrints,
    TResult? Function(_UpdateInternetConnectionStatus value)?
        updateInternetConnectionStatus,
    TResult? Function(_UpdatePrintsDownloading value)? updatePrintsDownloading,
  }) {
    return updatePrintsDownloading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdatelistOfPrints value)? updatelistOfPrints,
    TResult Function(_UpdateInternetConnectionStatus value)?
        updateInternetConnectionStatus,
    TResult Function(_UpdatePrintsDownloading value)? updatePrintsDownloading,
    required TResult orElse(),
  }) {
    if (updatePrintsDownloading != null) {
      return updatePrintsDownloading(this);
    }
    return orElse();
  }
}

abstract class _UpdatePrintsDownloading implements QuranCopyEvent {
  factory _UpdatePrintsDownloading(final List<String> print) =
      _$UpdatePrintsDownloadingImpl;

  List<String> get print;

  /// Create a copy of QuranCopyEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatePrintsDownloadingImplCopyWith<_$UpdatePrintsDownloadingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QuranCopyState {
  List<QuranPrints>? get listOfPrints => throw _privateConstructorUsedError;
  bool get internetConnectionStauts => throw _privateConstructorUsedError;
  List<String> get printsDownloading => throw _privateConstructorUsedError;

  /// Create a copy of QuranCopyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuranCopyStateCopyWith<QuranCopyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuranCopyStateCopyWith<$Res> {
  factory $QuranCopyStateCopyWith(
          QuranCopyState value, $Res Function(QuranCopyState) then) =
      _$QuranCopyStateCopyWithImpl<$Res, QuranCopyState>;
  @useResult
  $Res call(
      {List<QuranPrints>? listOfPrints,
      bool internetConnectionStauts,
      List<String> printsDownloading});
}

/// @nodoc
class _$QuranCopyStateCopyWithImpl<$Res, $Val extends QuranCopyState>
    implements $QuranCopyStateCopyWith<$Res> {
  _$QuranCopyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuranCopyState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listOfPrints = freezed,
    Object? internetConnectionStauts = null,
    Object? printsDownloading = null,
  }) {
    return _then(_value.copyWith(
      listOfPrints: freezed == listOfPrints
          ? _value.listOfPrints
          : listOfPrints // ignore: cast_nullable_to_non_nullable
              as List<QuranPrints>?,
      internetConnectionStauts: null == internetConnectionStauts
          ? _value.internetConnectionStauts
          : internetConnectionStauts // ignore: cast_nullable_to_non_nullable
              as bool,
      printsDownloading: null == printsDownloading
          ? _value.printsDownloading
          : printsDownloading // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuranCopyStateImplCopyWith<$Res>
    implements $QuranCopyStateCopyWith<$Res> {
  factory _$$QuranCopyStateImplCopyWith(_$QuranCopyStateImpl value,
          $Res Function(_$QuranCopyStateImpl) then) =
      __$$QuranCopyStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<QuranPrints>? listOfPrints,
      bool internetConnectionStauts,
      List<String> printsDownloading});
}

/// @nodoc
class __$$QuranCopyStateImplCopyWithImpl<$Res>
    extends _$QuranCopyStateCopyWithImpl<$Res, _$QuranCopyStateImpl>
    implements _$$QuranCopyStateImplCopyWith<$Res> {
  __$$QuranCopyStateImplCopyWithImpl(
      _$QuranCopyStateImpl _value, $Res Function(_$QuranCopyStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuranCopyState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listOfPrints = freezed,
    Object? internetConnectionStauts = null,
    Object? printsDownloading = null,
  }) {
    return _then(_$QuranCopyStateImpl(
      listOfPrints: freezed == listOfPrints
          ? _value._listOfPrints
          : listOfPrints // ignore: cast_nullable_to_non_nullable
              as List<QuranPrints>?,
      internetConnectionStauts: null == internetConnectionStauts
          ? _value.internetConnectionStauts
          : internetConnectionStauts // ignore: cast_nullable_to_non_nullable
              as bool,
      printsDownloading: null == printsDownloading
          ? _value._printsDownloading
          : printsDownloading // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$QuranCopyStateImpl implements _QuranCopyState {
  const _$QuranCopyStateImpl(
      {final List<QuranPrints>? listOfPrints,
      this.internetConnectionStauts = false,
      final List<String> printsDownloading = const []})
      : _listOfPrints = listOfPrints,
        _printsDownloading = printsDownloading;

  final List<QuranPrints>? _listOfPrints;
  @override
  List<QuranPrints>? get listOfPrints {
    final value = _listOfPrints;
    if (value == null) return null;
    if (_listOfPrints is EqualUnmodifiableListView) return _listOfPrints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final bool internetConnectionStauts;
  final List<String> _printsDownloading;
  @override
  @JsonKey()
  List<String> get printsDownloading {
    if (_printsDownloading is EqualUnmodifiableListView)
      return _printsDownloading;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_printsDownloading);
  }

  @override
  String toString() {
    return 'QuranCopyState(listOfPrints: $listOfPrints, internetConnectionStauts: $internetConnectionStauts, printsDownloading: $printsDownloading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuranCopyStateImpl &&
            const DeepCollectionEquality()
                .equals(other._listOfPrints, _listOfPrints) &&
            (identical(
                    other.internetConnectionStauts, internetConnectionStauts) ||
                other.internetConnectionStauts == internetConnectionStauts) &&
            const DeepCollectionEquality()
                .equals(other._printsDownloading, _printsDownloading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_listOfPrints),
      internetConnectionStauts,
      const DeepCollectionEquality().hash(_printsDownloading));

  /// Create a copy of QuranCopyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuranCopyStateImplCopyWith<_$QuranCopyStateImpl> get copyWith =>
      __$$QuranCopyStateImplCopyWithImpl<_$QuranCopyStateImpl>(
          this, _$identity);
}

abstract class _QuranCopyState implements QuranCopyState {
  const factory _QuranCopyState(
      {final List<QuranPrints>? listOfPrints,
      final bool internetConnectionStauts,
      final List<String> printsDownloading}) = _$QuranCopyStateImpl;

  @override
  List<QuranPrints>? get listOfPrints;
  @override
  bool get internetConnectionStauts;
  @override
  List<String> get printsDownloading;

  /// Create a copy of QuranCopyState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuranCopyStateImplCopyWith<_$QuranCopyStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
