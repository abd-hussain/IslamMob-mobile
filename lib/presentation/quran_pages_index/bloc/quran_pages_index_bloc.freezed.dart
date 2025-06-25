// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quran_pages_index_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$QuranPagesIndexEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) updateSelectedTab,
    required TResult Function(BuildContext context) getSowarList,
    required TResult Function(BuildContext context, String value) search,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? updateSelectedTab,
    TResult? Function(BuildContext context)? getSowarList,
    TResult? Function(BuildContext context, String value)? search,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? updateSelectedTab,
    TResult Function(BuildContext context)? getSowarList,
    TResult Function(BuildContext context, String value)? search,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateSelectedTab value) updateSelectedTab,
    required TResult Function(_GetSowarList value) getSowarList,
    required TResult Function(_Search value) search,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateSelectedTab value)? updateSelectedTab,
    TResult? Function(_GetSowarList value)? getSowarList,
    TResult? Function(_Search value)? search,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateSelectedTab value)? updateSelectedTab,
    TResult Function(_GetSowarList value)? getSowarList,
    TResult Function(_Search value)? search,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuranPagesIndexEventCopyWith<$Res> {
  factory $QuranPagesIndexEventCopyWith(
    QuranPagesIndexEvent value,
    $Res Function(QuranPagesIndexEvent) then,
  ) = _$QuranPagesIndexEventCopyWithImpl<$Res, QuranPagesIndexEvent>;
}

/// @nodoc
class _$QuranPagesIndexEventCopyWithImpl<
  $Res,
  $Val extends QuranPagesIndexEvent
>
    implements $QuranPagesIndexEventCopyWith<$Res> {
  _$QuranPagesIndexEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuranPagesIndexEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UpdateSelectedTabImplCopyWith<$Res> {
  factory _$$UpdateSelectedTabImplCopyWith(
    _$UpdateSelectedTabImpl value,
    $Res Function(_$UpdateSelectedTabImpl) then,
  ) = __$$UpdateSelectedTabImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$UpdateSelectedTabImplCopyWithImpl<$Res>
    extends _$QuranPagesIndexEventCopyWithImpl<$Res, _$UpdateSelectedTabImpl>
    implements _$$UpdateSelectedTabImplCopyWith<$Res> {
  __$$UpdateSelectedTabImplCopyWithImpl(
    _$UpdateSelectedTabImpl _value,
    $Res Function(_$UpdateSelectedTabImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of QuranPagesIndexEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? index = null}) {
    return _then(
      _$UpdateSelectedTabImpl(
        null == index
            ? _value.index
            : index // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$UpdateSelectedTabImpl implements _UpdateSelectedTab {
  _$UpdateSelectedTabImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'QuranPagesIndexEvent.updateSelectedTab(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSelectedTabImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of QuranPagesIndexEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSelectedTabImplCopyWith<_$UpdateSelectedTabImpl> get copyWith =>
      __$$UpdateSelectedTabImplCopyWithImpl<_$UpdateSelectedTabImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) updateSelectedTab,
    required TResult Function(BuildContext context) getSowarList,
    required TResult Function(BuildContext context, String value) search,
  }) {
    return updateSelectedTab(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? updateSelectedTab,
    TResult? Function(BuildContext context)? getSowarList,
    TResult? Function(BuildContext context, String value)? search,
  }) {
    return updateSelectedTab?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? updateSelectedTab,
    TResult Function(BuildContext context)? getSowarList,
    TResult Function(BuildContext context, String value)? search,
    required TResult orElse(),
  }) {
    if (updateSelectedTab != null) {
      return updateSelectedTab(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateSelectedTab value) updateSelectedTab,
    required TResult Function(_GetSowarList value) getSowarList,
    required TResult Function(_Search value) search,
  }) {
    return updateSelectedTab(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateSelectedTab value)? updateSelectedTab,
    TResult? Function(_GetSowarList value)? getSowarList,
    TResult? Function(_Search value)? search,
  }) {
    return updateSelectedTab?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateSelectedTab value)? updateSelectedTab,
    TResult Function(_GetSowarList value)? getSowarList,
    TResult Function(_Search value)? search,
    required TResult orElse(),
  }) {
    if (updateSelectedTab != null) {
      return updateSelectedTab(this);
    }
    return orElse();
  }
}

abstract class _UpdateSelectedTab implements QuranPagesIndexEvent {
  factory _UpdateSelectedTab(final int index) = _$UpdateSelectedTabImpl;

  int get index;

  /// Create a copy of QuranPagesIndexEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateSelectedTabImplCopyWith<_$UpdateSelectedTabImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetSowarListImplCopyWith<$Res> {
  factory _$$GetSowarListImplCopyWith(
    _$GetSowarListImpl value,
    $Res Function(_$GetSowarListImpl) then,
  ) = __$$GetSowarListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$GetSowarListImplCopyWithImpl<$Res>
    extends _$QuranPagesIndexEventCopyWithImpl<$Res, _$GetSowarListImpl>
    implements _$$GetSowarListImplCopyWith<$Res> {
  __$$GetSowarListImplCopyWithImpl(
    _$GetSowarListImpl _value,
    $Res Function(_$GetSowarListImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of QuranPagesIndexEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? context = null}) {
    return _then(
      _$GetSowarListImpl(
        null == context
            ? _value.context
            : context // ignore: cast_nullable_to_non_nullable
                  as BuildContext,
      ),
    );
  }
}

/// @nodoc

class _$GetSowarListImpl implements _GetSowarList {
  _$GetSowarListImpl(this.context);

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'QuranPagesIndexEvent.getSowarList(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSowarListImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  /// Create a copy of QuranPagesIndexEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSowarListImplCopyWith<_$GetSowarListImpl> get copyWith =>
      __$$GetSowarListImplCopyWithImpl<_$GetSowarListImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) updateSelectedTab,
    required TResult Function(BuildContext context) getSowarList,
    required TResult Function(BuildContext context, String value) search,
  }) {
    return getSowarList(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? updateSelectedTab,
    TResult? Function(BuildContext context)? getSowarList,
    TResult? Function(BuildContext context, String value)? search,
  }) {
    return getSowarList?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? updateSelectedTab,
    TResult Function(BuildContext context)? getSowarList,
    TResult Function(BuildContext context, String value)? search,
    required TResult orElse(),
  }) {
    if (getSowarList != null) {
      return getSowarList(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateSelectedTab value) updateSelectedTab,
    required TResult Function(_GetSowarList value) getSowarList,
    required TResult Function(_Search value) search,
  }) {
    return getSowarList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateSelectedTab value)? updateSelectedTab,
    TResult? Function(_GetSowarList value)? getSowarList,
    TResult? Function(_Search value)? search,
  }) {
    return getSowarList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateSelectedTab value)? updateSelectedTab,
    TResult Function(_GetSowarList value)? getSowarList,
    TResult Function(_Search value)? search,
    required TResult orElse(),
  }) {
    if (getSowarList != null) {
      return getSowarList(this);
    }
    return orElse();
  }
}

abstract class _GetSowarList implements QuranPagesIndexEvent {
  factory _GetSowarList(final BuildContext context) = _$GetSowarListImpl;

  BuildContext get context;

  /// Create a copy of QuranPagesIndexEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetSowarListImplCopyWith<_$GetSowarListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchImplCopyWith<$Res> {
  factory _$$SearchImplCopyWith(
    _$SearchImpl value,
    $Res Function(_$SearchImpl) then,
  ) = __$$SearchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context, String value});
}

/// @nodoc
class __$$SearchImplCopyWithImpl<$Res>
    extends _$QuranPagesIndexEventCopyWithImpl<$Res, _$SearchImpl>
    implements _$$SearchImplCopyWith<$Res> {
  __$$SearchImplCopyWithImpl(
    _$SearchImpl _value,
    $Res Function(_$SearchImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of QuranPagesIndexEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? context = null, Object? value = null}) {
    return _then(
      _$SearchImpl(
        null == context
            ? _value.context
            : context // ignore: cast_nullable_to_non_nullable
                  as BuildContext,
        null == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$SearchImpl implements _Search {
  _$SearchImpl(this.context, this.value);

  @override
  final BuildContext context;
  @override
  final String value;

  @override
  String toString() {
    return 'QuranPagesIndexEvent.search(context: $context, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchImpl &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, value);

  /// Create a copy of QuranPagesIndexEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchImplCopyWith<_$SearchImpl> get copyWith =>
      __$$SearchImplCopyWithImpl<_$SearchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) updateSelectedTab,
    required TResult Function(BuildContext context) getSowarList,
    required TResult Function(BuildContext context, String value) search,
  }) {
    return search(context, value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? updateSelectedTab,
    TResult? Function(BuildContext context)? getSowarList,
    TResult? Function(BuildContext context, String value)? search,
  }) {
    return search?.call(context, value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? updateSelectedTab,
    TResult Function(BuildContext context)? getSowarList,
    TResult Function(BuildContext context, String value)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(context, value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateSelectedTab value) updateSelectedTab,
    required TResult Function(_GetSowarList value) getSowarList,
    required TResult Function(_Search value) search,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateSelectedTab value)? updateSelectedTab,
    TResult? Function(_GetSowarList value)? getSowarList,
    TResult? Function(_Search value)? search,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateSelectedTab value)? updateSelectedTab,
    TResult Function(_GetSowarList value)? getSowarList,
    TResult Function(_Search value)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _Search implements QuranPagesIndexEvent {
  factory _Search(final BuildContext context, final String value) =
      _$SearchImpl;

  BuildContext get context;
  String get value;

  /// Create a copy of QuranPagesIndexEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchImplCopyWith<_$SearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QuranPagesIndexState {
  int get selectedIndex => throw _privateConstructorUsedError;
  List<String> get sowarList => throw _privateConstructorUsedError;

  /// Create a copy of QuranPagesIndexState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuranPagesIndexStateCopyWith<QuranPagesIndexState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuranPagesIndexStateCopyWith<$Res> {
  factory $QuranPagesIndexStateCopyWith(
    QuranPagesIndexState value,
    $Res Function(QuranPagesIndexState) then,
  ) = _$QuranPagesIndexStateCopyWithImpl<$Res, QuranPagesIndexState>;
  @useResult
  $Res call({int selectedIndex, List<String> sowarList});
}

/// @nodoc
class _$QuranPagesIndexStateCopyWithImpl<
  $Res,
  $Val extends QuranPagesIndexState
>
    implements $QuranPagesIndexStateCopyWith<$Res> {
  _$QuranPagesIndexStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuranPagesIndexState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? selectedIndex = null, Object? sowarList = null}) {
    return _then(
      _value.copyWith(
            selectedIndex: null == selectedIndex
                ? _value.selectedIndex
                : selectedIndex // ignore: cast_nullable_to_non_nullable
                      as int,
            sowarList: null == sowarList
                ? _value.sowarList
                : sowarList // ignore: cast_nullable_to_non_nullable
                      as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$QuranPagesIndexStateImplCopyWith<$Res>
    implements $QuranPagesIndexStateCopyWith<$Res> {
  factory _$$QuranPagesIndexStateImplCopyWith(
    _$QuranPagesIndexStateImpl value,
    $Res Function(_$QuranPagesIndexStateImpl) then,
  ) = __$$QuranPagesIndexStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int selectedIndex, List<String> sowarList});
}

/// @nodoc
class __$$QuranPagesIndexStateImplCopyWithImpl<$Res>
    extends _$QuranPagesIndexStateCopyWithImpl<$Res, _$QuranPagesIndexStateImpl>
    implements _$$QuranPagesIndexStateImplCopyWith<$Res> {
  __$$QuranPagesIndexStateImplCopyWithImpl(
    _$QuranPagesIndexStateImpl _value,
    $Res Function(_$QuranPagesIndexStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of QuranPagesIndexState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? selectedIndex = null, Object? sowarList = null}) {
    return _then(
      _$QuranPagesIndexStateImpl(
        selectedIndex: null == selectedIndex
            ? _value.selectedIndex
            : selectedIndex // ignore: cast_nullable_to_non_nullable
                  as int,
        sowarList: null == sowarList
            ? _value._sowarList
            : sowarList // ignore: cast_nullable_to_non_nullable
                  as List<String>,
      ),
    );
  }
}

/// @nodoc

class _$QuranPagesIndexStateImpl implements _QuranPagesIndexState {
  const _$QuranPagesIndexStateImpl({
    this.selectedIndex = 0,
    final List<String> sowarList = const [],
  }) : _sowarList = sowarList;

  @override
  @JsonKey()
  final int selectedIndex;
  final List<String> _sowarList;
  @override
  @JsonKey()
  List<String> get sowarList {
    if (_sowarList is EqualUnmodifiableListView) return _sowarList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sowarList);
  }

  @override
  String toString() {
    return 'QuranPagesIndexState(selectedIndex: $selectedIndex, sowarList: $sowarList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuranPagesIndexStateImpl &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex) &&
            const DeepCollectionEquality().equals(
              other._sowarList,
              _sowarList,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    selectedIndex,
    const DeepCollectionEquality().hash(_sowarList),
  );

  /// Create a copy of QuranPagesIndexState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuranPagesIndexStateImplCopyWith<_$QuranPagesIndexStateImpl>
  get copyWith =>
      __$$QuranPagesIndexStateImplCopyWithImpl<_$QuranPagesIndexStateImpl>(
        this,
        _$identity,
      );
}

abstract class _QuranPagesIndexState implements QuranPagesIndexState {
  const factory _QuranPagesIndexState({
    final int selectedIndex,
    final List<String> sowarList,
  }) = _$QuranPagesIndexStateImpl;

  @override
  int get selectedIndex;
  @override
  List<String> get sowarList;

  /// Create a copy of QuranPagesIndexState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuranPagesIndexStateImplCopyWith<_$QuranPagesIndexStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
