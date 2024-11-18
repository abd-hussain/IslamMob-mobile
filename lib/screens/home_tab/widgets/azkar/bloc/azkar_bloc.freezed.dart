// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'azkar_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AzkarEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool status) updateShowingAzkarStatus,
    required TResult Function(List<String> list) updateListOfAzkar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool status)? updateShowingAzkarStatus,
    TResult? Function(List<String> list)? updateListOfAzkar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool status)? updateShowingAzkarStatus,
    TResult Function(List<String> list)? updateListOfAzkar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateShowingAzkarStatus value)
        updateShowingAzkarStatus,
    required TResult Function(_UpdateListOfAzkar value) updateListOfAzkar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateShowingAzkarStatus value)?
        updateShowingAzkarStatus,
    TResult? Function(_UpdateListOfAzkar value)? updateListOfAzkar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateShowingAzkarStatus value)? updateShowingAzkarStatus,
    TResult Function(_UpdateListOfAzkar value)? updateListOfAzkar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AzkarEventCopyWith<$Res> {
  factory $AzkarEventCopyWith(
          AzkarEvent value, $Res Function(AzkarEvent) then) =
      _$AzkarEventCopyWithImpl<$Res, AzkarEvent>;
}

/// @nodoc
class _$AzkarEventCopyWithImpl<$Res, $Val extends AzkarEvent>
    implements $AzkarEventCopyWith<$Res> {
  _$AzkarEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AzkarEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UpdateShowingAzkarStatusImplCopyWith<$Res> {
  factory _$$UpdateShowingAzkarStatusImplCopyWith(
          _$UpdateShowingAzkarStatusImpl value,
          $Res Function(_$UpdateShowingAzkarStatusImpl) then) =
      __$$UpdateShowingAzkarStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool status});
}

/// @nodoc
class __$$UpdateShowingAzkarStatusImplCopyWithImpl<$Res>
    extends _$AzkarEventCopyWithImpl<$Res, _$UpdateShowingAzkarStatusImpl>
    implements _$$UpdateShowingAzkarStatusImplCopyWith<$Res> {
  __$$UpdateShowingAzkarStatusImplCopyWithImpl(
      _$UpdateShowingAzkarStatusImpl _value,
      $Res Function(_$UpdateShowingAzkarStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of AzkarEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$UpdateShowingAzkarStatusImpl(
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UpdateShowingAzkarStatusImpl implements _UpdateShowingAzkarStatus {
  _$UpdateShowingAzkarStatusImpl(this.status);

  @override
  final bool status;

  @override
  String toString() {
    return 'AzkarEvent.updateShowingAzkarStatus(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateShowingAzkarStatusImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of AzkarEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateShowingAzkarStatusImplCopyWith<_$UpdateShowingAzkarStatusImpl>
      get copyWith => __$$UpdateShowingAzkarStatusImplCopyWithImpl<
          _$UpdateShowingAzkarStatusImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool status) updateShowingAzkarStatus,
    required TResult Function(List<String> list) updateListOfAzkar,
  }) {
    return updateShowingAzkarStatus(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool status)? updateShowingAzkarStatus,
    TResult? Function(List<String> list)? updateListOfAzkar,
  }) {
    return updateShowingAzkarStatus?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool status)? updateShowingAzkarStatus,
    TResult Function(List<String> list)? updateListOfAzkar,
    required TResult orElse(),
  }) {
    if (updateShowingAzkarStatus != null) {
      return updateShowingAzkarStatus(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateShowingAzkarStatus value)
        updateShowingAzkarStatus,
    required TResult Function(_UpdateListOfAzkar value) updateListOfAzkar,
  }) {
    return updateShowingAzkarStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateShowingAzkarStatus value)?
        updateShowingAzkarStatus,
    TResult? Function(_UpdateListOfAzkar value)? updateListOfAzkar,
  }) {
    return updateShowingAzkarStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateShowingAzkarStatus value)? updateShowingAzkarStatus,
    TResult Function(_UpdateListOfAzkar value)? updateListOfAzkar,
    required TResult orElse(),
  }) {
    if (updateShowingAzkarStatus != null) {
      return updateShowingAzkarStatus(this);
    }
    return orElse();
  }
}

abstract class _UpdateShowingAzkarStatus implements AzkarEvent {
  factory _UpdateShowingAzkarStatus(final bool status) =
      _$UpdateShowingAzkarStatusImpl;

  bool get status;

  /// Create a copy of AzkarEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateShowingAzkarStatusImplCopyWith<_$UpdateShowingAzkarStatusImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateListOfAzkarImplCopyWith<$Res> {
  factory _$$UpdateListOfAzkarImplCopyWith(_$UpdateListOfAzkarImpl value,
          $Res Function(_$UpdateListOfAzkarImpl) then) =
      __$$UpdateListOfAzkarImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> list});
}

/// @nodoc
class __$$UpdateListOfAzkarImplCopyWithImpl<$Res>
    extends _$AzkarEventCopyWithImpl<$Res, _$UpdateListOfAzkarImpl>
    implements _$$UpdateListOfAzkarImplCopyWith<$Res> {
  __$$UpdateListOfAzkarImplCopyWithImpl(_$UpdateListOfAzkarImpl _value,
      $Res Function(_$UpdateListOfAzkarImpl) _then)
      : super(_value, _then);

  /// Create a copy of AzkarEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$UpdateListOfAzkarImpl(
      null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$UpdateListOfAzkarImpl implements _UpdateListOfAzkar {
  _$UpdateListOfAzkarImpl(final List<String> list) : _list = list;

  final List<String> _list;
  @override
  List<String> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'AzkarEvent.updateListOfAzkar(list: $list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateListOfAzkarImpl &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  /// Create a copy of AzkarEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateListOfAzkarImplCopyWith<_$UpdateListOfAzkarImpl> get copyWith =>
      __$$UpdateListOfAzkarImplCopyWithImpl<_$UpdateListOfAzkarImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool status) updateShowingAzkarStatus,
    required TResult Function(List<String> list) updateListOfAzkar,
  }) {
    return updateListOfAzkar(list);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool status)? updateShowingAzkarStatus,
    TResult? Function(List<String> list)? updateListOfAzkar,
  }) {
    return updateListOfAzkar?.call(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool status)? updateShowingAzkarStatus,
    TResult Function(List<String> list)? updateListOfAzkar,
    required TResult orElse(),
  }) {
    if (updateListOfAzkar != null) {
      return updateListOfAzkar(list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateShowingAzkarStatus value)
        updateShowingAzkarStatus,
    required TResult Function(_UpdateListOfAzkar value) updateListOfAzkar,
  }) {
    return updateListOfAzkar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateShowingAzkarStatus value)?
        updateShowingAzkarStatus,
    TResult? Function(_UpdateListOfAzkar value)? updateListOfAzkar,
  }) {
    return updateListOfAzkar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateShowingAzkarStatus value)? updateShowingAzkarStatus,
    TResult Function(_UpdateListOfAzkar value)? updateListOfAzkar,
    required TResult orElse(),
  }) {
    if (updateListOfAzkar != null) {
      return updateListOfAzkar(this);
    }
    return orElse();
  }
}

abstract class _UpdateListOfAzkar implements AzkarEvent {
  factory _UpdateListOfAzkar(final List<String> list) = _$UpdateListOfAzkarImpl;

  List<String> get list;

  /// Create a copy of AzkarEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateListOfAzkarImplCopyWith<_$UpdateListOfAzkarImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AzkarState {
  bool get showAzkarView => throw _privateConstructorUsedError;
  List<String> get listOfAzkar => throw _privateConstructorUsedError;

  /// Create a copy of AzkarState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AzkarStateCopyWith<AzkarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AzkarStateCopyWith<$Res> {
  factory $AzkarStateCopyWith(
          AzkarState value, $Res Function(AzkarState) then) =
      _$AzkarStateCopyWithImpl<$Res, AzkarState>;
  @useResult
  $Res call({bool showAzkarView, List<String> listOfAzkar});
}

/// @nodoc
class _$AzkarStateCopyWithImpl<$Res, $Val extends AzkarState>
    implements $AzkarStateCopyWith<$Res> {
  _$AzkarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AzkarState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showAzkarView = null,
    Object? listOfAzkar = null,
  }) {
    return _then(_value.copyWith(
      showAzkarView: null == showAzkarView
          ? _value.showAzkarView
          : showAzkarView // ignore: cast_nullable_to_non_nullable
              as bool,
      listOfAzkar: null == listOfAzkar
          ? _value.listOfAzkar
          : listOfAzkar // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AzkarStateImplCopyWith<$Res>
    implements $AzkarStateCopyWith<$Res> {
  factory _$$AzkarStateImplCopyWith(
          _$AzkarStateImpl value, $Res Function(_$AzkarStateImpl) then) =
      __$$AzkarStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool showAzkarView, List<String> listOfAzkar});
}

/// @nodoc
class __$$AzkarStateImplCopyWithImpl<$Res>
    extends _$AzkarStateCopyWithImpl<$Res, _$AzkarStateImpl>
    implements _$$AzkarStateImplCopyWith<$Res> {
  __$$AzkarStateImplCopyWithImpl(
      _$AzkarStateImpl _value, $Res Function(_$AzkarStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AzkarState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showAzkarView = null,
    Object? listOfAzkar = null,
  }) {
    return _then(_$AzkarStateImpl(
      showAzkarView: null == showAzkarView
          ? _value.showAzkarView
          : showAzkarView // ignore: cast_nullable_to_non_nullable
              as bool,
      listOfAzkar: null == listOfAzkar
          ? _value._listOfAzkar
          : listOfAzkar // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$AzkarStateImpl implements _AzkarState {
  const _$AzkarStateImpl(
      {this.showAzkarView = false, final List<String> listOfAzkar = const []})
      : _listOfAzkar = listOfAzkar;

  @override
  @JsonKey()
  final bool showAzkarView;
  final List<String> _listOfAzkar;
  @override
  @JsonKey()
  List<String> get listOfAzkar {
    if (_listOfAzkar is EqualUnmodifiableListView) return _listOfAzkar;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listOfAzkar);
  }

  @override
  String toString() {
    return 'AzkarState(showAzkarView: $showAzkarView, listOfAzkar: $listOfAzkar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AzkarStateImpl &&
            (identical(other.showAzkarView, showAzkarView) ||
                other.showAzkarView == showAzkarView) &&
            const DeepCollectionEquality()
                .equals(other._listOfAzkar, _listOfAzkar));
  }

  @override
  int get hashCode => Object.hash(runtimeType, showAzkarView,
      const DeepCollectionEquality().hash(_listOfAzkar));

  /// Create a copy of AzkarState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AzkarStateImplCopyWith<_$AzkarStateImpl> get copyWith =>
      __$$AzkarStateImplCopyWithImpl<_$AzkarStateImpl>(this, _$identity);
}

abstract class _AzkarState implements AzkarState {
  const factory _AzkarState(
      {final bool showAzkarView,
      final List<String> listOfAzkar}) = _$AzkarStateImpl;

  @override
  bool get showAzkarView;
  @override
  List<String> get listOfAzkar;

  /// Create a copy of AzkarState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AzkarStateImplCopyWith<_$AzkarStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
