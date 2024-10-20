// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quran_list_prints_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QuranListPrintsEvent {
  List<QuranPrints>? get list => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QuranPrints>? list) updatelistOfPrints,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<QuranPrints>? list)? updatelistOfPrints,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QuranPrints>? list)? updatelistOfPrints,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdatelistOfPrints value) updatelistOfPrints,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdatelistOfPrints value)? updatelistOfPrints,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdatelistOfPrints value)? updatelistOfPrints,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of QuranListPrintsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuranListPrintsEventCopyWith<QuranListPrintsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuranListPrintsEventCopyWith<$Res> {
  factory $QuranListPrintsEventCopyWith(QuranListPrintsEvent value,
          $Res Function(QuranListPrintsEvent) then) =
      _$QuranListPrintsEventCopyWithImpl<$Res, QuranListPrintsEvent>;
  @useResult
  $Res call({List<QuranPrints>? list});
}

/// @nodoc
class _$QuranListPrintsEventCopyWithImpl<$Res,
        $Val extends QuranListPrintsEvent>
    implements $QuranListPrintsEventCopyWith<$Res> {
  _$QuranListPrintsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuranListPrintsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = freezed,
  }) {
    return _then(_value.copyWith(
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<QuranPrints>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdatelistOfPrintsImplCopyWith<$Res>
    implements $QuranListPrintsEventCopyWith<$Res> {
  factory _$$UpdatelistOfPrintsImplCopyWith(_$UpdatelistOfPrintsImpl value,
          $Res Function(_$UpdatelistOfPrintsImpl) then) =
      __$$UpdatelistOfPrintsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<QuranPrints>? list});
}

/// @nodoc
class __$$UpdatelistOfPrintsImplCopyWithImpl<$Res>
    extends _$QuranListPrintsEventCopyWithImpl<$Res, _$UpdatelistOfPrintsImpl>
    implements _$$UpdatelistOfPrintsImplCopyWith<$Res> {
  __$$UpdatelistOfPrintsImplCopyWithImpl(_$UpdatelistOfPrintsImpl _value,
      $Res Function(_$UpdatelistOfPrintsImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuranListPrintsEvent
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
    return 'QuranListPrintsEvent.updatelistOfPrints(list: $list)';
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

  /// Create a copy of QuranListPrintsEvent
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
  }) {
    return updatelistOfPrints(list);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<QuranPrints>? list)? updatelistOfPrints,
  }) {
    return updatelistOfPrints?.call(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QuranPrints>? list)? updatelistOfPrints,
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
  }) {
    return updatelistOfPrints(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdatelistOfPrints value)? updatelistOfPrints,
  }) {
    return updatelistOfPrints?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdatelistOfPrints value)? updatelistOfPrints,
    required TResult orElse(),
  }) {
    if (updatelistOfPrints != null) {
      return updatelistOfPrints(this);
    }
    return orElse();
  }
}

abstract class _UpdatelistOfPrints implements QuranListPrintsEvent {
  factory _UpdatelistOfPrints(final List<QuranPrints>? list) =
      _$UpdatelistOfPrintsImpl;

  @override
  List<QuranPrints>? get list;

  /// Create a copy of QuranListPrintsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatelistOfPrintsImplCopyWith<_$UpdatelistOfPrintsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QuranListPrintsState {
  List<QuranPrints>? get listOfPrints => throw _privateConstructorUsedError;

  /// Create a copy of QuranListPrintsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuranListPrintsStateCopyWith<QuranListPrintsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuranListPrintsStateCopyWith<$Res> {
  factory $QuranListPrintsStateCopyWith(QuranListPrintsState value,
          $Res Function(QuranListPrintsState) then) =
      _$QuranListPrintsStateCopyWithImpl<$Res, QuranListPrintsState>;
  @useResult
  $Res call({List<QuranPrints>? listOfPrints});
}

/// @nodoc
class _$QuranListPrintsStateCopyWithImpl<$Res,
        $Val extends QuranListPrintsState>
    implements $QuranListPrintsStateCopyWith<$Res> {
  _$QuranListPrintsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuranListPrintsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listOfPrints = freezed,
  }) {
    return _then(_value.copyWith(
      listOfPrints: freezed == listOfPrints
          ? _value.listOfPrints
          : listOfPrints // ignore: cast_nullable_to_non_nullable
              as List<QuranPrints>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuranListPrintsStateImplCopyWith<$Res>
    implements $QuranListPrintsStateCopyWith<$Res> {
  factory _$$QuranListPrintsStateImplCopyWith(_$QuranListPrintsStateImpl value,
          $Res Function(_$QuranListPrintsStateImpl) then) =
      __$$QuranListPrintsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<QuranPrints>? listOfPrints});
}

/// @nodoc
class __$$QuranListPrintsStateImplCopyWithImpl<$Res>
    extends _$QuranListPrintsStateCopyWithImpl<$Res, _$QuranListPrintsStateImpl>
    implements _$$QuranListPrintsStateImplCopyWith<$Res> {
  __$$QuranListPrintsStateImplCopyWithImpl(_$QuranListPrintsStateImpl _value,
      $Res Function(_$QuranListPrintsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuranListPrintsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listOfPrints = freezed,
  }) {
    return _then(_$QuranListPrintsStateImpl(
      listOfPrints: freezed == listOfPrints
          ? _value._listOfPrints
          : listOfPrints // ignore: cast_nullable_to_non_nullable
              as List<QuranPrints>?,
    ));
  }
}

/// @nodoc

class _$QuranListPrintsStateImpl implements _QuranListPrintsState {
  const _$QuranListPrintsStateImpl({final List<QuranPrints>? listOfPrints})
      : _listOfPrints = listOfPrints;

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
  String toString() {
    return 'QuranListPrintsState(listOfPrints: $listOfPrints)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuranListPrintsStateImpl &&
            const DeepCollectionEquality()
                .equals(other._listOfPrints, _listOfPrints));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_listOfPrints));

  /// Create a copy of QuranListPrintsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuranListPrintsStateImplCopyWith<_$QuranListPrintsStateImpl>
      get copyWith =>
          __$$QuranListPrintsStateImplCopyWithImpl<_$QuranListPrintsStateImpl>(
              this, _$identity);
}

abstract class _QuranListPrintsState implements QuranListPrintsState {
  const factory _QuranListPrintsState({final List<QuranPrints>? listOfPrints}) =
      _$QuranListPrintsStateImpl;

  @override
  List<QuranPrints>? get listOfPrints;

  /// Create a copy of QuranListPrintsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuranListPrintsStateImplCopyWith<_$QuranListPrintsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
