// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$FeedEvent {
  BuildContext get context => throw _privateConstructorUsedError;
  PostCategoryType get type => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, PostCategoryType type)
    getPostFromSpesificCategory,
    required TResult Function(BuildContext context, PostCategoryType type)
    pullRefresh,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, PostCategoryType type)?
    getPostFromSpesificCategory,
    TResult? Function(BuildContext context, PostCategoryType type)? pullRefresh,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, PostCategoryType type)?
    getPostFromSpesificCategory,
    TResult Function(BuildContext context, PostCategoryType type)? pullRefresh,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPostFromSpesificCategory value)
    getPostFromSpesificCategory,
    required TResult Function(_PullRefresh value) pullRefresh,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPostFromSpesificCategory value)?
    getPostFromSpesificCategory,
    TResult? Function(_PullRefresh value)? pullRefresh,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPostFromSpesificCategory value)?
    getPostFromSpesificCategory,
    TResult Function(_PullRefresh value)? pullRefresh,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of FeedEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeedEventCopyWith<FeedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedEventCopyWith<$Res> {
  factory $FeedEventCopyWith(FeedEvent value, $Res Function(FeedEvent) then) =
      _$FeedEventCopyWithImpl<$Res, FeedEvent>;
  @useResult
  $Res call({BuildContext context, PostCategoryType type});

  $PostCategoryTypeCopyWith<$Res> get type;
}

/// @nodoc
class _$FeedEventCopyWithImpl<$Res, $Val extends FeedEvent>
    implements $FeedEventCopyWith<$Res> {
  _$FeedEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? context = null, Object? type = null}) {
    return _then(
      _value.copyWith(
            context: null == context
                ? _value.context
                : context // ignore: cast_nullable_to_non_nullable
                      as BuildContext,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as PostCategoryType,
          )
          as $Val,
    );
  }

  /// Create a copy of FeedEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostCategoryTypeCopyWith<$Res> get type {
    return $PostCategoryTypeCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetPostFromSpesificCategoryImplCopyWith<$Res>
    implements $FeedEventCopyWith<$Res> {
  factory _$$GetPostFromSpesificCategoryImplCopyWith(
    _$GetPostFromSpesificCategoryImpl value,
    $Res Function(_$GetPostFromSpesificCategoryImpl) then,
  ) = __$$GetPostFromSpesificCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BuildContext context, PostCategoryType type});

  @override
  $PostCategoryTypeCopyWith<$Res> get type;
}

/// @nodoc
class __$$GetPostFromSpesificCategoryImplCopyWithImpl<$Res>
    extends _$FeedEventCopyWithImpl<$Res, _$GetPostFromSpesificCategoryImpl>
    implements _$$GetPostFromSpesificCategoryImplCopyWith<$Res> {
  __$$GetPostFromSpesificCategoryImplCopyWithImpl(
    _$GetPostFromSpesificCategoryImpl _value,
    $Res Function(_$GetPostFromSpesificCategoryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FeedEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? context = null, Object? type = null}) {
    return _then(
      _$GetPostFromSpesificCategoryImpl(
        context: null == context
            ? _value.context
            : context // ignore: cast_nullable_to_non_nullable
                  as BuildContext,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as PostCategoryType,
      ),
    );
  }
}

/// @nodoc

class _$GetPostFromSpesificCategoryImpl
    implements _GetPostFromSpesificCategory {
  _$GetPostFromSpesificCategoryImpl({
    required this.context,
    required this.type,
  });

  @override
  final BuildContext context;
  @override
  final PostCategoryType type;

  @override
  String toString() {
    return 'FeedEvent.getPostFromSpesificCategory(context: $context, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPostFromSpesificCategoryImpl &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, type);

  /// Create a copy of FeedEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPostFromSpesificCategoryImplCopyWith<_$GetPostFromSpesificCategoryImpl>
  get copyWith =>
      __$$GetPostFromSpesificCategoryImplCopyWithImpl<
        _$GetPostFromSpesificCategoryImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, PostCategoryType type)
    getPostFromSpesificCategory,
    required TResult Function(BuildContext context, PostCategoryType type)
    pullRefresh,
  }) {
    return getPostFromSpesificCategory(context, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, PostCategoryType type)?
    getPostFromSpesificCategory,
    TResult? Function(BuildContext context, PostCategoryType type)? pullRefresh,
  }) {
    return getPostFromSpesificCategory?.call(context, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, PostCategoryType type)?
    getPostFromSpesificCategory,
    TResult Function(BuildContext context, PostCategoryType type)? pullRefresh,
    required TResult orElse(),
  }) {
    if (getPostFromSpesificCategory != null) {
      return getPostFromSpesificCategory(context, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPostFromSpesificCategory value)
    getPostFromSpesificCategory,
    required TResult Function(_PullRefresh value) pullRefresh,
  }) {
    return getPostFromSpesificCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPostFromSpesificCategory value)?
    getPostFromSpesificCategory,
    TResult? Function(_PullRefresh value)? pullRefresh,
  }) {
    return getPostFromSpesificCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPostFromSpesificCategory value)?
    getPostFromSpesificCategory,
    TResult Function(_PullRefresh value)? pullRefresh,
    required TResult orElse(),
  }) {
    if (getPostFromSpesificCategory != null) {
      return getPostFromSpesificCategory(this);
    }
    return orElse();
  }
}

abstract class _GetPostFromSpesificCategory implements FeedEvent {
  factory _GetPostFromSpesificCategory({
    required final BuildContext context,
    required final PostCategoryType type,
  }) = _$GetPostFromSpesificCategoryImpl;

  @override
  BuildContext get context;
  @override
  PostCategoryType get type;

  /// Create a copy of FeedEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetPostFromSpesificCategoryImplCopyWith<_$GetPostFromSpesificCategoryImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PullRefreshImplCopyWith<$Res>
    implements $FeedEventCopyWith<$Res> {
  factory _$$PullRefreshImplCopyWith(
    _$PullRefreshImpl value,
    $Res Function(_$PullRefreshImpl) then,
  ) = __$$PullRefreshImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BuildContext context, PostCategoryType type});

  @override
  $PostCategoryTypeCopyWith<$Res> get type;
}

/// @nodoc
class __$$PullRefreshImplCopyWithImpl<$Res>
    extends _$FeedEventCopyWithImpl<$Res, _$PullRefreshImpl>
    implements _$$PullRefreshImplCopyWith<$Res> {
  __$$PullRefreshImplCopyWithImpl(
    _$PullRefreshImpl _value,
    $Res Function(_$PullRefreshImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FeedEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? context = null, Object? type = null}) {
    return _then(
      _$PullRefreshImpl(
        context: null == context
            ? _value.context
            : context // ignore: cast_nullable_to_non_nullable
                  as BuildContext,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as PostCategoryType,
      ),
    );
  }
}

/// @nodoc

class _$PullRefreshImpl implements _PullRefresh {
  _$PullRefreshImpl({required this.context, required this.type});

  @override
  final BuildContext context;
  @override
  final PostCategoryType type;

  @override
  String toString() {
    return 'FeedEvent.pullRefresh(context: $context, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PullRefreshImpl &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, type);

  /// Create a copy of FeedEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PullRefreshImplCopyWith<_$PullRefreshImpl> get copyWith =>
      __$$PullRefreshImplCopyWithImpl<_$PullRefreshImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, PostCategoryType type)
    getPostFromSpesificCategory,
    required TResult Function(BuildContext context, PostCategoryType type)
    pullRefresh,
  }) {
    return pullRefresh(context, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, PostCategoryType type)?
    getPostFromSpesificCategory,
    TResult? Function(BuildContext context, PostCategoryType type)? pullRefresh,
  }) {
    return pullRefresh?.call(context, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, PostCategoryType type)?
    getPostFromSpesificCategory,
    TResult Function(BuildContext context, PostCategoryType type)? pullRefresh,
    required TResult orElse(),
  }) {
    if (pullRefresh != null) {
      return pullRefresh(context, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPostFromSpesificCategory value)
    getPostFromSpesificCategory,
    required TResult Function(_PullRefresh value) pullRefresh,
  }) {
    return pullRefresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPostFromSpesificCategory value)?
    getPostFromSpesificCategory,
    TResult? Function(_PullRefresh value)? pullRefresh,
  }) {
    return pullRefresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPostFromSpesificCategory value)?
    getPostFromSpesificCategory,
    TResult Function(_PullRefresh value)? pullRefresh,
    required TResult orElse(),
  }) {
    if (pullRefresh != null) {
      return pullRefresh(this);
    }
    return orElse();
  }
}

abstract class _PullRefresh implements FeedEvent {
  factory _PullRefresh({
    required final BuildContext context,
    required final PostCategoryType type,
  }) = _$PullRefreshImpl;

  @override
  BuildContext get context;
  @override
  PostCategoryType get type;

  /// Create a copy of FeedEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PullRefreshImplCopyWith<_$PullRefreshImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FeedState {
  bool get showInternetConnectionView => throw _privateConstructorUsedError;
  List<Post> get wallPostList => throw _privateConstructorUsedError;
  List<Post> get watchlistPostList => throw _privateConstructorUsedError;
  dynamic get loadingStatus => throw _privateConstructorUsedError;

  /// Create a copy of FeedState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeedStateCopyWith<FeedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedStateCopyWith<$Res> {
  factory $FeedStateCopyWith(FeedState value, $Res Function(FeedState) then) =
      _$FeedStateCopyWithImpl<$Res, FeedState>;
  @useResult
  $Res call({
    bool showInternetConnectionView,
    List<Post> wallPostList,
    List<Post> watchlistPostList,
    dynamic loadingStatus,
  });
}

/// @nodoc
class _$FeedStateCopyWithImpl<$Res, $Val extends FeedState>
    implements $FeedStateCopyWith<$Res> {
  _$FeedStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showInternetConnectionView = null,
    Object? wallPostList = null,
    Object? watchlistPostList = null,
    Object? loadingStatus = freezed,
  }) {
    return _then(
      _value.copyWith(
            showInternetConnectionView: null == showInternetConnectionView
                ? _value.showInternetConnectionView
                : showInternetConnectionView // ignore: cast_nullable_to_non_nullable
                      as bool,
            wallPostList: null == wallPostList
                ? _value.wallPostList
                : wallPostList // ignore: cast_nullable_to_non_nullable
                      as List<Post>,
            watchlistPostList: null == watchlistPostList
                ? _value.watchlistPostList
                : watchlistPostList // ignore: cast_nullable_to_non_nullable
                      as List<Post>,
            loadingStatus: freezed == loadingStatus
                ? _value.loadingStatus
                : loadingStatus // ignore: cast_nullable_to_non_nullable
                      as dynamic,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FeedStateImplCopyWith<$Res>
    implements $FeedStateCopyWith<$Res> {
  factory _$$FeedStateImplCopyWith(
    _$FeedStateImpl value,
    $Res Function(_$FeedStateImpl) then,
  ) = __$$FeedStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool showInternetConnectionView,
    List<Post> wallPostList,
    List<Post> watchlistPostList,
    dynamic loadingStatus,
  });
}

/// @nodoc
class __$$FeedStateImplCopyWithImpl<$Res>
    extends _$FeedStateCopyWithImpl<$Res, _$FeedStateImpl>
    implements _$$FeedStateImplCopyWith<$Res> {
  __$$FeedStateImplCopyWithImpl(
    _$FeedStateImpl _value,
    $Res Function(_$FeedStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FeedState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showInternetConnectionView = null,
    Object? wallPostList = null,
    Object? watchlistPostList = null,
    Object? loadingStatus = freezed,
  }) {
    return _then(
      _$FeedStateImpl(
        showInternetConnectionView: null == showInternetConnectionView
            ? _value.showInternetConnectionView
            : showInternetConnectionView // ignore: cast_nullable_to_non_nullable
                  as bool,
        wallPostList: null == wallPostList
            ? _value._wallPostList
            : wallPostList // ignore: cast_nullable_to_non_nullable
                  as List<Post>,
        watchlistPostList: null == watchlistPostList
            ? _value._watchlistPostList
            : watchlistPostList // ignore: cast_nullable_to_non_nullable
                  as List<Post>,
        loadingStatus: freezed == loadingStatus
            ? _value.loadingStatus!
            : loadingStatus,
      ),
    );
  }
}

/// @nodoc

class _$FeedStateImpl implements _FeedState {
  const _$FeedStateImpl({
    this.showInternetConnectionView = false,
    final List<Post> wallPostList = const [],
    final List<Post> watchlistPostList = const [],
    this.loadingStatus = const FeedScreenProcessState.loading(),
  }) : _wallPostList = wallPostList,
       _watchlistPostList = watchlistPostList;

  @override
  @JsonKey()
  final bool showInternetConnectionView;
  final List<Post> _wallPostList;
  @override
  @JsonKey()
  List<Post> get wallPostList {
    if (_wallPostList is EqualUnmodifiableListView) return _wallPostList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wallPostList);
  }

  final List<Post> _watchlistPostList;
  @override
  @JsonKey()
  List<Post> get watchlistPostList {
    if (_watchlistPostList is EqualUnmodifiableListView)
      return _watchlistPostList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_watchlistPostList);
  }

  @override
  @JsonKey()
  final dynamic loadingStatus;

  @override
  String toString() {
    return 'FeedState(showInternetConnectionView: $showInternetConnectionView, wallPostList: $wallPostList, watchlistPostList: $watchlistPostList, loadingStatus: $loadingStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedStateImpl &&
            (identical(
                  other.showInternetConnectionView,
                  showInternetConnectionView,
                ) ||
                other.showInternetConnectionView ==
                    showInternetConnectionView) &&
            const DeepCollectionEquality().equals(
              other._wallPostList,
              _wallPostList,
            ) &&
            const DeepCollectionEquality().equals(
              other._watchlistPostList,
              _watchlistPostList,
            ) &&
            const DeepCollectionEquality().equals(
              other.loadingStatus,
              loadingStatus,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    showInternetConnectionView,
    const DeepCollectionEquality().hash(_wallPostList),
    const DeepCollectionEquality().hash(_watchlistPostList),
    const DeepCollectionEquality().hash(loadingStatus),
  );

  /// Create a copy of FeedState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedStateImplCopyWith<_$FeedStateImpl> get copyWith =>
      __$$FeedStateImplCopyWithImpl<_$FeedStateImpl>(this, _$identity);
}

abstract class _FeedState implements FeedState {
  const factory _FeedState({
    final bool showInternetConnectionView,
    final List<Post> wallPostList,
    final List<Post> watchlistPostList,
    final dynamic loadingStatus,
  }) = _$FeedStateImpl;

  @override
  bool get showInternetConnectionView;
  @override
  List<Post> get wallPostList;
  @override
  List<Post> get watchlistPostList;
  @override
  dynamic get loadingStatus;

  /// Create a copy of FeedState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedStateImplCopyWith<_$FeedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FeedScreenProcessState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() done,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? done,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? done,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FeedScreenProcessStateLoading value) loading,
    required TResult Function(FeedScreenProcessStateDone value) done,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FeedScreenProcessStateLoading value)? loading,
    TResult? Function(FeedScreenProcessStateDone value)? done,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FeedScreenProcessStateLoading value)? loading,
    TResult Function(FeedScreenProcessStateDone value)? done,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedScreenProcessStateCopyWith<$Res> {
  factory $FeedScreenProcessStateCopyWith(
    FeedScreenProcessState value,
    $Res Function(FeedScreenProcessState) then,
  ) = _$FeedScreenProcessStateCopyWithImpl<$Res, FeedScreenProcessState>;
}

/// @nodoc
class _$FeedScreenProcessStateCopyWithImpl<
  $Res,
  $Val extends FeedScreenProcessState
>
    implements $FeedScreenProcessStateCopyWith<$Res> {
  _$FeedScreenProcessStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedScreenProcessState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FeedScreenProcessStateLoadingImplCopyWith<$Res> {
  factory _$$FeedScreenProcessStateLoadingImplCopyWith(
    _$FeedScreenProcessStateLoadingImpl value,
    $Res Function(_$FeedScreenProcessStateLoadingImpl) then,
  ) = __$$FeedScreenProcessStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FeedScreenProcessStateLoadingImplCopyWithImpl<$Res>
    extends
        _$FeedScreenProcessStateCopyWithImpl<
          $Res,
          _$FeedScreenProcessStateLoadingImpl
        >
    implements _$$FeedScreenProcessStateLoadingImplCopyWith<$Res> {
  __$$FeedScreenProcessStateLoadingImplCopyWithImpl(
    _$FeedScreenProcessStateLoadingImpl _value,
    $Res Function(_$FeedScreenProcessStateLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FeedScreenProcessState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FeedScreenProcessStateLoadingImpl
    implements FeedScreenProcessStateLoading {
  const _$FeedScreenProcessStateLoadingImpl();

  @override
  String toString() {
    return 'FeedScreenProcessState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedScreenProcessStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() done,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? done,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? done,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FeedScreenProcessStateLoading value) loading,
    required TResult Function(FeedScreenProcessStateDone value) done,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FeedScreenProcessStateLoading value)? loading,
    TResult? Function(FeedScreenProcessStateDone value)? done,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FeedScreenProcessStateLoading value)? loading,
    TResult Function(FeedScreenProcessStateDone value)? done,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FeedScreenProcessStateLoading implements FeedScreenProcessState {
  const factory FeedScreenProcessStateLoading() =
      _$FeedScreenProcessStateLoadingImpl;
}

/// @nodoc
abstract class _$$FeedScreenProcessStateDoneImplCopyWith<$Res> {
  factory _$$FeedScreenProcessStateDoneImplCopyWith(
    _$FeedScreenProcessStateDoneImpl value,
    $Res Function(_$FeedScreenProcessStateDoneImpl) then,
  ) = __$$FeedScreenProcessStateDoneImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FeedScreenProcessStateDoneImplCopyWithImpl<$Res>
    extends
        _$FeedScreenProcessStateCopyWithImpl<
          $Res,
          _$FeedScreenProcessStateDoneImpl
        >
    implements _$$FeedScreenProcessStateDoneImplCopyWith<$Res> {
  __$$FeedScreenProcessStateDoneImplCopyWithImpl(
    _$FeedScreenProcessStateDoneImpl _value,
    $Res Function(_$FeedScreenProcessStateDoneImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FeedScreenProcessState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FeedScreenProcessStateDoneImpl implements FeedScreenProcessStateDone {
  const _$FeedScreenProcessStateDoneImpl();

  @override
  String toString() {
    return 'FeedScreenProcessState.done()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedScreenProcessStateDoneImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() done,
  }) {
    return done();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? done,
  }) {
    return done?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? done,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FeedScreenProcessStateLoading value) loading,
    required TResult Function(FeedScreenProcessStateDone value) done,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FeedScreenProcessStateLoading value)? loading,
    TResult? Function(FeedScreenProcessStateDone value)? done,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FeedScreenProcessStateLoading value)? loading,
    TResult Function(FeedScreenProcessStateDone value)? done,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class FeedScreenProcessStateDone implements FeedScreenProcessState {
  const factory FeedScreenProcessStateDone() = _$FeedScreenProcessStateDoneImpl;
}
