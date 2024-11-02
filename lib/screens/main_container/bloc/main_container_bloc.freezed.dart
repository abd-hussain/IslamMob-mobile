// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_container_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MainContainerEvent {
  int get tabIndex => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int tabIndex) changeSelectedIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int tabIndex)? changeSelectedIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int tabIndex)? changeSelectedIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeSelectedIndex value) changeSelectedIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeSelectedIndex value)? changeSelectedIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeSelectedIndex value)? changeSelectedIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of MainContainerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MainContainerEventCopyWith<MainContainerEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainContainerEventCopyWith<$Res> {
  factory $MainContainerEventCopyWith(
          MainContainerEvent value, $Res Function(MainContainerEvent) then) =
      _$MainContainerEventCopyWithImpl<$Res, MainContainerEvent>;
  @useResult
  $Res call({int tabIndex});
}

/// @nodoc
class _$MainContainerEventCopyWithImpl<$Res, $Val extends MainContainerEvent>
    implements $MainContainerEventCopyWith<$Res> {
  _$MainContainerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MainContainerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tabIndex = null,
  }) {
    return _then(_value.copyWith(
      tabIndex: null == tabIndex
          ? _value.tabIndex
          : tabIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangeSelectedIndexImplCopyWith<$Res>
    implements $MainContainerEventCopyWith<$Res> {
  factory _$$ChangeSelectedIndexImplCopyWith(_$ChangeSelectedIndexImpl value,
          $Res Function(_$ChangeSelectedIndexImpl) then) =
      __$$ChangeSelectedIndexImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int tabIndex});
}

/// @nodoc
class __$$ChangeSelectedIndexImplCopyWithImpl<$Res>
    extends _$MainContainerEventCopyWithImpl<$Res, _$ChangeSelectedIndexImpl>
    implements _$$ChangeSelectedIndexImplCopyWith<$Res> {
  __$$ChangeSelectedIndexImplCopyWithImpl(_$ChangeSelectedIndexImpl _value,
      $Res Function(_$ChangeSelectedIndexImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainContainerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tabIndex = null,
  }) {
    return _then(_$ChangeSelectedIndexImpl(
      null == tabIndex
          ? _value.tabIndex
          : tabIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeSelectedIndexImpl implements _ChangeSelectedIndex {
  _$ChangeSelectedIndexImpl(this.tabIndex);

  @override
  final int tabIndex;

  @override
  String toString() {
    return 'MainContainerEvent.changeSelectedIndex(tabIndex: $tabIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeSelectedIndexImpl &&
            (identical(other.tabIndex, tabIndex) ||
                other.tabIndex == tabIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tabIndex);

  /// Create a copy of MainContainerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeSelectedIndexImplCopyWith<_$ChangeSelectedIndexImpl> get copyWith =>
      __$$ChangeSelectedIndexImplCopyWithImpl<_$ChangeSelectedIndexImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int tabIndex) changeSelectedIndex,
  }) {
    return changeSelectedIndex(tabIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int tabIndex)? changeSelectedIndex,
  }) {
    return changeSelectedIndex?.call(tabIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int tabIndex)? changeSelectedIndex,
    required TResult orElse(),
  }) {
    if (changeSelectedIndex != null) {
      return changeSelectedIndex(tabIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeSelectedIndex value) changeSelectedIndex,
  }) {
    return changeSelectedIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeSelectedIndex value)? changeSelectedIndex,
  }) {
    return changeSelectedIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeSelectedIndex value)? changeSelectedIndex,
    required TResult orElse(),
  }) {
    if (changeSelectedIndex != null) {
      return changeSelectedIndex(this);
    }
    return orElse();
  }
}

abstract class _ChangeSelectedIndex implements MainContainerEvent {
  factory _ChangeSelectedIndex(final int tabIndex) = _$ChangeSelectedIndexImpl;

  @override
  int get tabIndex;

  /// Create a copy of MainContainerEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeSelectedIndexImplCopyWith<_$ChangeSelectedIndexImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MainContainerState {
  int get selectedIndex => throw _privateConstructorUsedError;

  /// Create a copy of MainContainerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MainContainerStateCopyWith<MainContainerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainContainerStateCopyWith<$Res> {
  factory $MainContainerStateCopyWith(
          MainContainerState value, $Res Function(MainContainerState) then) =
      _$MainContainerStateCopyWithImpl<$Res, MainContainerState>;
  @useResult
  $Res call({int selectedIndex});
}

/// @nodoc
class _$MainContainerStateCopyWithImpl<$Res, $Val extends MainContainerState>
    implements $MainContainerStateCopyWith<$Res> {
  _$MainContainerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MainContainerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIndex = null,
  }) {
    return _then(_value.copyWith(
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MainContainerStateImplCopyWith<$Res>
    implements $MainContainerStateCopyWith<$Res> {
  factory _$$MainContainerStateImplCopyWith(_$MainContainerStateImpl value,
          $Res Function(_$MainContainerStateImpl) then) =
      __$$MainContainerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int selectedIndex});
}

/// @nodoc
class __$$MainContainerStateImplCopyWithImpl<$Res>
    extends _$MainContainerStateCopyWithImpl<$Res, _$MainContainerStateImpl>
    implements _$$MainContainerStateImplCopyWith<$Res> {
  __$$MainContainerStateImplCopyWithImpl(_$MainContainerStateImpl _value,
      $Res Function(_$MainContainerStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainContainerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIndex = null,
  }) {
    return _then(_$MainContainerStateImpl(
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MainContainerStateImpl implements _MainContainerState {
  const _$MainContainerStateImpl({this.selectedIndex = 1});

  @override
  @JsonKey()
  final int selectedIndex;

  @override
  String toString() {
    return 'MainContainerState(selectedIndex: $selectedIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainContainerStateImpl &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedIndex);

  /// Create a copy of MainContainerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MainContainerStateImplCopyWith<_$MainContainerStateImpl> get copyWith =>
      __$$MainContainerStateImplCopyWithImpl<_$MainContainerStateImpl>(
          this, _$identity);
}

abstract class _MainContainerState implements MainContainerState {
  const factory _MainContainerState({final int selectedIndex}) =
      _$MainContainerStateImpl;

  @override
  int get selectedIndex;

  /// Create a copy of MainContainerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MainContainerStateImplCopyWith<_$MainContainerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
