// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PostEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Post post) initial,
    required TResult Function(String postId, Post post) edit,
    required TResult Function(String postId, String message) report,
    required TResult Function(String postId) delete,
    required TResult Function(String postId, PostVoteType voteType) changeVote,
    required TResult Function(String postId, bool inBookMark)
    addRemoveFromBookMark,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Post post)? initial,
    TResult? Function(String postId, Post post)? edit,
    TResult? Function(String postId, String message)? report,
    TResult? Function(String postId)? delete,
    TResult? Function(String postId, PostVoteType voteType)? changeVote,
    TResult? Function(String postId, bool inBookMark)? addRemoveFromBookMark,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Post post)? initial,
    TResult Function(String postId, Post post)? edit,
    TResult Function(String postId, String message)? report,
    TResult Function(String postId)? delete,
    TResult Function(String postId, PostVoteType voteType)? changeVote,
    TResult Function(String postId, bool inBookMark)? addRemoveFromBookMark,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Edit value) edit,
    required TResult Function(_ReportPost value) report,
    required TResult Function(_DeletePost value) delete,
    required TResult Function(_ChangePostVote value) changeVote,
    required TResult Function(_AddRemoveFromBookmark value)
    addRemoveFromBookMark,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Edit value)? edit,
    TResult? Function(_ReportPost value)? report,
    TResult? Function(_DeletePost value)? delete,
    TResult? Function(_ChangePostVote value)? changeVote,
    TResult? Function(_AddRemoveFromBookmark value)? addRemoveFromBookMark,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Edit value)? edit,
    TResult Function(_ReportPost value)? report,
    TResult Function(_DeletePost value)? delete,
    TResult Function(_ChangePostVote value)? changeVote,
    TResult Function(_AddRemoveFromBookmark value)? addRemoveFromBookMark,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostEventCopyWith<$Res> {
  factory $PostEventCopyWith(PostEvent value, $Res Function(PostEvent) then) =
      _$PostEventCopyWithImpl<$Res, PostEvent>;
}

/// @nodoc
class _$PostEventCopyWithImpl<$Res, $Val extends PostEvent>
    implements $PostEventCopyWith<$Res> {
  _$PostEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
    _$InitialImpl value,
    $Res Function(_$InitialImpl) then,
  ) = __$$InitialImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Post post});

  $PostCopyWith<$Res> get post;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$PostEventCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PostEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? post = null}) {
    return _then(
      _$InitialImpl(
        null == post
            ? _value.post
            : post // ignore: cast_nullable_to_non_nullable
                  as Post,
      ),
    );
  }

  /// Create a copy of PostEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostCopyWith<$Res> get post {
    return $PostCopyWith<$Res>(_value.post, (value) {
      return _then(_value.copyWith(post: value));
    });
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(this.post);

  @override
  final Post post;

  @override
  String toString() {
    return 'PostEvent.initial(post: $post)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.post, post) || other.post == post));
  }

  @override
  int get hashCode => Object.hash(runtimeType, post);

  /// Create a copy of PostEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Post post) initial,
    required TResult Function(String postId, Post post) edit,
    required TResult Function(String postId, String message) report,
    required TResult Function(String postId) delete,
    required TResult Function(String postId, PostVoteType voteType) changeVote,
    required TResult Function(String postId, bool inBookMark)
    addRemoveFromBookMark,
  }) {
    return initial(post);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Post post)? initial,
    TResult? Function(String postId, Post post)? edit,
    TResult? Function(String postId, String message)? report,
    TResult? Function(String postId)? delete,
    TResult? Function(String postId, PostVoteType voteType)? changeVote,
    TResult? Function(String postId, bool inBookMark)? addRemoveFromBookMark,
  }) {
    return initial?.call(post);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Post post)? initial,
    TResult Function(String postId, Post post)? edit,
    TResult Function(String postId, String message)? report,
    TResult Function(String postId)? delete,
    TResult Function(String postId, PostVoteType voteType)? changeVote,
    TResult Function(String postId, bool inBookMark)? addRemoveFromBookMark,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(post);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Edit value) edit,
    required TResult Function(_ReportPost value) report,
    required TResult Function(_DeletePost value) delete,
    required TResult Function(_ChangePostVote value) changeVote,
    required TResult Function(_AddRemoveFromBookmark value)
    addRemoveFromBookMark,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Edit value)? edit,
    TResult? Function(_ReportPost value)? report,
    TResult? Function(_DeletePost value)? delete,
    TResult? Function(_ChangePostVote value)? changeVote,
    TResult? Function(_AddRemoveFromBookmark value)? addRemoveFromBookMark,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Edit value)? edit,
    TResult Function(_ReportPost value)? report,
    TResult Function(_DeletePost value)? delete,
    TResult Function(_ChangePostVote value)? changeVote,
    TResult Function(_AddRemoveFromBookmark value)? addRemoveFromBookMark,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PostEvent {
  const factory _Initial(final Post post) = _$InitialImpl;

  Post get post;

  /// Create a copy of PostEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditImplCopyWith<$Res> {
  factory _$$EditImplCopyWith(
    _$EditImpl value,
    $Res Function(_$EditImpl) then,
  ) = __$$EditImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String postId, Post post});

  $PostCopyWith<$Res> get post;
}

/// @nodoc
class __$$EditImplCopyWithImpl<$Res>
    extends _$PostEventCopyWithImpl<$Res, _$EditImpl>
    implements _$$EditImplCopyWith<$Res> {
  __$$EditImplCopyWithImpl(_$EditImpl _value, $Res Function(_$EditImpl) _then)
    : super(_value, _then);

  /// Create a copy of PostEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? postId = null, Object? post = null}) {
    return _then(
      _$EditImpl(
        null == postId
            ? _value.postId
            : postId // ignore: cast_nullable_to_non_nullable
                  as String,
        null == post
            ? _value.post
            : post // ignore: cast_nullable_to_non_nullable
                  as Post,
      ),
    );
  }

  /// Create a copy of PostEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostCopyWith<$Res> get post {
    return $PostCopyWith<$Res>(_value.post, (value) {
      return _then(_value.copyWith(post: value));
    });
  }
}

/// @nodoc

class _$EditImpl implements _Edit {
  const _$EditImpl(this.postId, this.post);

  @override
  final String postId;
  @override
  final Post post;

  @override
  String toString() {
    return 'PostEvent.edit(postId: $postId, post: $post)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditImpl &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.post, post) || other.post == post));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postId, post);

  /// Create a copy of PostEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditImplCopyWith<_$EditImpl> get copyWith =>
      __$$EditImplCopyWithImpl<_$EditImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Post post) initial,
    required TResult Function(String postId, Post post) edit,
    required TResult Function(String postId, String message) report,
    required TResult Function(String postId) delete,
    required TResult Function(String postId, PostVoteType voteType) changeVote,
    required TResult Function(String postId, bool inBookMark)
    addRemoveFromBookMark,
  }) {
    return edit(postId, post);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Post post)? initial,
    TResult? Function(String postId, Post post)? edit,
    TResult? Function(String postId, String message)? report,
    TResult? Function(String postId)? delete,
    TResult? Function(String postId, PostVoteType voteType)? changeVote,
    TResult? Function(String postId, bool inBookMark)? addRemoveFromBookMark,
  }) {
    return edit?.call(postId, post);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Post post)? initial,
    TResult Function(String postId, Post post)? edit,
    TResult Function(String postId, String message)? report,
    TResult Function(String postId)? delete,
    TResult Function(String postId, PostVoteType voteType)? changeVote,
    TResult Function(String postId, bool inBookMark)? addRemoveFromBookMark,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(postId, post);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Edit value) edit,
    required TResult Function(_ReportPost value) report,
    required TResult Function(_DeletePost value) delete,
    required TResult Function(_ChangePostVote value) changeVote,
    required TResult Function(_AddRemoveFromBookmark value)
    addRemoveFromBookMark,
  }) {
    return edit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Edit value)? edit,
    TResult? Function(_ReportPost value)? report,
    TResult? Function(_DeletePost value)? delete,
    TResult? Function(_ChangePostVote value)? changeVote,
    TResult? Function(_AddRemoveFromBookmark value)? addRemoveFromBookMark,
  }) {
    return edit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Edit value)? edit,
    TResult Function(_ReportPost value)? report,
    TResult Function(_DeletePost value)? delete,
    TResult Function(_ChangePostVote value)? changeVote,
    TResult Function(_AddRemoveFromBookmark value)? addRemoveFromBookMark,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(this);
    }
    return orElse();
  }
}

abstract class _Edit implements PostEvent {
  const factory _Edit(final String postId, final Post post) = _$EditImpl;

  String get postId;
  Post get post;

  /// Create a copy of PostEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditImplCopyWith<_$EditImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReportPostImplCopyWith<$Res> {
  factory _$$ReportPostImplCopyWith(
    _$ReportPostImpl value,
    $Res Function(_$ReportPostImpl) then,
  ) = __$$ReportPostImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String postId, String message});
}

/// @nodoc
class __$$ReportPostImplCopyWithImpl<$Res>
    extends _$PostEventCopyWithImpl<$Res, _$ReportPostImpl>
    implements _$$ReportPostImplCopyWith<$Res> {
  __$$ReportPostImplCopyWithImpl(
    _$ReportPostImpl _value,
    $Res Function(_$ReportPostImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PostEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? postId = null, Object? message = null}) {
    return _then(
      _$ReportPostImpl(
        null == postId
            ? _value.postId
            : postId // ignore: cast_nullable_to_non_nullable
                  as String,
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ReportPostImpl implements _ReportPost {
  const _$ReportPostImpl(this.postId, this.message);

  @override
  final String postId;
  @override
  final String message;

  @override
  String toString() {
    return 'PostEvent.report(postId: $postId, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportPostImpl &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postId, message);

  /// Create a copy of PostEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportPostImplCopyWith<_$ReportPostImpl> get copyWith =>
      __$$ReportPostImplCopyWithImpl<_$ReportPostImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Post post) initial,
    required TResult Function(String postId, Post post) edit,
    required TResult Function(String postId, String message) report,
    required TResult Function(String postId) delete,
    required TResult Function(String postId, PostVoteType voteType) changeVote,
    required TResult Function(String postId, bool inBookMark)
    addRemoveFromBookMark,
  }) {
    return report(postId, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Post post)? initial,
    TResult? Function(String postId, Post post)? edit,
    TResult? Function(String postId, String message)? report,
    TResult? Function(String postId)? delete,
    TResult? Function(String postId, PostVoteType voteType)? changeVote,
    TResult? Function(String postId, bool inBookMark)? addRemoveFromBookMark,
  }) {
    return report?.call(postId, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Post post)? initial,
    TResult Function(String postId, Post post)? edit,
    TResult Function(String postId, String message)? report,
    TResult Function(String postId)? delete,
    TResult Function(String postId, PostVoteType voteType)? changeVote,
    TResult Function(String postId, bool inBookMark)? addRemoveFromBookMark,
    required TResult orElse(),
  }) {
    if (report != null) {
      return report(postId, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Edit value) edit,
    required TResult Function(_ReportPost value) report,
    required TResult Function(_DeletePost value) delete,
    required TResult Function(_ChangePostVote value) changeVote,
    required TResult Function(_AddRemoveFromBookmark value)
    addRemoveFromBookMark,
  }) {
    return report(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Edit value)? edit,
    TResult? Function(_ReportPost value)? report,
    TResult? Function(_DeletePost value)? delete,
    TResult? Function(_ChangePostVote value)? changeVote,
    TResult? Function(_AddRemoveFromBookmark value)? addRemoveFromBookMark,
  }) {
    return report?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Edit value)? edit,
    TResult Function(_ReportPost value)? report,
    TResult Function(_DeletePost value)? delete,
    TResult Function(_ChangePostVote value)? changeVote,
    TResult Function(_AddRemoveFromBookmark value)? addRemoveFromBookMark,
    required TResult orElse(),
  }) {
    if (report != null) {
      return report(this);
    }
    return orElse();
  }
}

abstract class _ReportPost implements PostEvent {
  const factory _ReportPost(final String postId, final String message) =
      _$ReportPostImpl;

  String get postId;
  String get message;

  /// Create a copy of PostEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReportPostImplCopyWith<_$ReportPostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeletePostImplCopyWith<$Res> {
  factory _$$DeletePostImplCopyWith(
    _$DeletePostImpl value,
    $Res Function(_$DeletePostImpl) then,
  ) = __$$DeletePostImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String postId});
}

/// @nodoc
class __$$DeletePostImplCopyWithImpl<$Res>
    extends _$PostEventCopyWithImpl<$Res, _$DeletePostImpl>
    implements _$$DeletePostImplCopyWith<$Res> {
  __$$DeletePostImplCopyWithImpl(
    _$DeletePostImpl _value,
    $Res Function(_$DeletePostImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PostEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? postId = null}) {
    return _then(
      _$DeletePostImpl(
        null == postId
            ? _value.postId
            : postId // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$DeletePostImpl implements _DeletePost {
  const _$DeletePostImpl(this.postId);

  @override
  final String postId;

  @override
  String toString() {
    return 'PostEvent.delete(postId: $postId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeletePostImpl &&
            (identical(other.postId, postId) || other.postId == postId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postId);

  /// Create a copy of PostEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeletePostImplCopyWith<_$DeletePostImpl> get copyWith =>
      __$$DeletePostImplCopyWithImpl<_$DeletePostImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Post post) initial,
    required TResult Function(String postId, Post post) edit,
    required TResult Function(String postId, String message) report,
    required TResult Function(String postId) delete,
    required TResult Function(String postId, PostVoteType voteType) changeVote,
    required TResult Function(String postId, bool inBookMark)
    addRemoveFromBookMark,
  }) {
    return delete(postId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Post post)? initial,
    TResult? Function(String postId, Post post)? edit,
    TResult? Function(String postId, String message)? report,
    TResult? Function(String postId)? delete,
    TResult? Function(String postId, PostVoteType voteType)? changeVote,
    TResult? Function(String postId, bool inBookMark)? addRemoveFromBookMark,
  }) {
    return delete?.call(postId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Post post)? initial,
    TResult Function(String postId, Post post)? edit,
    TResult Function(String postId, String message)? report,
    TResult Function(String postId)? delete,
    TResult Function(String postId, PostVoteType voteType)? changeVote,
    TResult Function(String postId, bool inBookMark)? addRemoveFromBookMark,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(postId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Edit value) edit,
    required TResult Function(_ReportPost value) report,
    required TResult Function(_DeletePost value) delete,
    required TResult Function(_ChangePostVote value) changeVote,
    required TResult Function(_AddRemoveFromBookmark value)
    addRemoveFromBookMark,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Edit value)? edit,
    TResult? Function(_ReportPost value)? report,
    TResult? Function(_DeletePost value)? delete,
    TResult? Function(_ChangePostVote value)? changeVote,
    TResult? Function(_AddRemoveFromBookmark value)? addRemoveFromBookMark,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Edit value)? edit,
    TResult Function(_ReportPost value)? report,
    TResult Function(_DeletePost value)? delete,
    TResult Function(_ChangePostVote value)? changeVote,
    TResult Function(_AddRemoveFromBookmark value)? addRemoveFromBookMark,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _DeletePost implements PostEvent {
  const factory _DeletePost(final String postId) = _$DeletePostImpl;

  String get postId;

  /// Create a copy of PostEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeletePostImplCopyWith<_$DeletePostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangePostVoteImplCopyWith<$Res> {
  factory _$$ChangePostVoteImplCopyWith(
    _$ChangePostVoteImpl value,
    $Res Function(_$ChangePostVoteImpl) then,
  ) = __$$ChangePostVoteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String postId, PostVoteType voteType});

  $PostVoteTypeCopyWith<$Res> get voteType;
}

/// @nodoc
class __$$ChangePostVoteImplCopyWithImpl<$Res>
    extends _$PostEventCopyWithImpl<$Res, _$ChangePostVoteImpl>
    implements _$$ChangePostVoteImplCopyWith<$Res> {
  __$$ChangePostVoteImplCopyWithImpl(
    _$ChangePostVoteImpl _value,
    $Res Function(_$ChangePostVoteImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PostEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? postId = null, Object? voteType = null}) {
    return _then(
      _$ChangePostVoteImpl(
        null == postId
            ? _value.postId
            : postId // ignore: cast_nullable_to_non_nullable
                  as String,
        null == voteType
            ? _value.voteType
            : voteType // ignore: cast_nullable_to_non_nullable
                  as PostVoteType,
      ),
    );
  }

  /// Create a copy of PostEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostVoteTypeCopyWith<$Res> get voteType {
    return $PostVoteTypeCopyWith<$Res>(_value.voteType, (value) {
      return _then(_value.copyWith(voteType: value));
    });
  }
}

/// @nodoc

class _$ChangePostVoteImpl implements _ChangePostVote {
  const _$ChangePostVoteImpl(this.postId, this.voteType);

  @override
  final String postId;
  @override
  final PostVoteType voteType;

  @override
  String toString() {
    return 'PostEvent.changeVote(postId: $postId, voteType: $voteType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePostVoteImpl &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.voteType, voteType) ||
                other.voteType == voteType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postId, voteType);

  /// Create a copy of PostEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePostVoteImplCopyWith<_$ChangePostVoteImpl> get copyWith =>
      __$$ChangePostVoteImplCopyWithImpl<_$ChangePostVoteImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Post post) initial,
    required TResult Function(String postId, Post post) edit,
    required TResult Function(String postId, String message) report,
    required TResult Function(String postId) delete,
    required TResult Function(String postId, PostVoteType voteType) changeVote,
    required TResult Function(String postId, bool inBookMark)
    addRemoveFromBookMark,
  }) {
    return changeVote(postId, voteType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Post post)? initial,
    TResult? Function(String postId, Post post)? edit,
    TResult? Function(String postId, String message)? report,
    TResult? Function(String postId)? delete,
    TResult? Function(String postId, PostVoteType voteType)? changeVote,
    TResult? Function(String postId, bool inBookMark)? addRemoveFromBookMark,
  }) {
    return changeVote?.call(postId, voteType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Post post)? initial,
    TResult Function(String postId, Post post)? edit,
    TResult Function(String postId, String message)? report,
    TResult Function(String postId)? delete,
    TResult Function(String postId, PostVoteType voteType)? changeVote,
    TResult Function(String postId, bool inBookMark)? addRemoveFromBookMark,
    required TResult orElse(),
  }) {
    if (changeVote != null) {
      return changeVote(postId, voteType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Edit value) edit,
    required TResult Function(_ReportPost value) report,
    required TResult Function(_DeletePost value) delete,
    required TResult Function(_ChangePostVote value) changeVote,
    required TResult Function(_AddRemoveFromBookmark value)
    addRemoveFromBookMark,
  }) {
    return changeVote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Edit value)? edit,
    TResult? Function(_ReportPost value)? report,
    TResult? Function(_DeletePost value)? delete,
    TResult? Function(_ChangePostVote value)? changeVote,
    TResult? Function(_AddRemoveFromBookmark value)? addRemoveFromBookMark,
  }) {
    return changeVote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Edit value)? edit,
    TResult Function(_ReportPost value)? report,
    TResult Function(_DeletePost value)? delete,
    TResult Function(_ChangePostVote value)? changeVote,
    TResult Function(_AddRemoveFromBookmark value)? addRemoveFromBookMark,
    required TResult orElse(),
  }) {
    if (changeVote != null) {
      return changeVote(this);
    }
    return orElse();
  }
}

abstract class _ChangePostVote implements PostEvent {
  const factory _ChangePostVote(
    final String postId,
    final PostVoteType voteType,
  ) = _$ChangePostVoteImpl;

  String get postId;
  PostVoteType get voteType;

  /// Create a copy of PostEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangePostVoteImplCopyWith<_$ChangePostVoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddRemoveFromBookmarkImplCopyWith<$Res> {
  factory _$$AddRemoveFromBookmarkImplCopyWith(
    _$AddRemoveFromBookmarkImpl value,
    $Res Function(_$AddRemoveFromBookmarkImpl) then,
  ) = __$$AddRemoveFromBookmarkImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String postId, bool inBookMark});
}

/// @nodoc
class __$$AddRemoveFromBookmarkImplCopyWithImpl<$Res>
    extends _$PostEventCopyWithImpl<$Res, _$AddRemoveFromBookmarkImpl>
    implements _$$AddRemoveFromBookmarkImplCopyWith<$Res> {
  __$$AddRemoveFromBookmarkImplCopyWithImpl(
    _$AddRemoveFromBookmarkImpl _value,
    $Res Function(_$AddRemoveFromBookmarkImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PostEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? postId = null, Object? inBookMark = null}) {
    return _then(
      _$AddRemoveFromBookmarkImpl(
        null == postId
            ? _value.postId
            : postId // ignore: cast_nullable_to_non_nullable
                  as String,
        null == inBookMark
            ? _value.inBookMark
            : inBookMark // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$AddRemoveFromBookmarkImpl implements _AddRemoveFromBookmark {
  const _$AddRemoveFromBookmarkImpl(this.postId, this.inBookMark);

  @override
  final String postId;
  @override
  final bool inBookMark;

  @override
  String toString() {
    return 'PostEvent.addRemoveFromBookMark(postId: $postId, inBookMark: $inBookMark)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddRemoveFromBookmarkImpl &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.inBookMark, inBookMark) ||
                other.inBookMark == inBookMark));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postId, inBookMark);

  /// Create a copy of PostEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddRemoveFromBookmarkImplCopyWith<_$AddRemoveFromBookmarkImpl>
  get copyWith =>
      __$$AddRemoveFromBookmarkImplCopyWithImpl<_$AddRemoveFromBookmarkImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Post post) initial,
    required TResult Function(String postId, Post post) edit,
    required TResult Function(String postId, String message) report,
    required TResult Function(String postId) delete,
    required TResult Function(String postId, PostVoteType voteType) changeVote,
    required TResult Function(String postId, bool inBookMark)
    addRemoveFromBookMark,
  }) {
    return addRemoveFromBookMark(postId, inBookMark);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Post post)? initial,
    TResult? Function(String postId, Post post)? edit,
    TResult? Function(String postId, String message)? report,
    TResult? Function(String postId)? delete,
    TResult? Function(String postId, PostVoteType voteType)? changeVote,
    TResult? Function(String postId, bool inBookMark)? addRemoveFromBookMark,
  }) {
    return addRemoveFromBookMark?.call(postId, inBookMark);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Post post)? initial,
    TResult Function(String postId, Post post)? edit,
    TResult Function(String postId, String message)? report,
    TResult Function(String postId)? delete,
    TResult Function(String postId, PostVoteType voteType)? changeVote,
    TResult Function(String postId, bool inBookMark)? addRemoveFromBookMark,
    required TResult orElse(),
  }) {
    if (addRemoveFromBookMark != null) {
      return addRemoveFromBookMark(postId, inBookMark);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Edit value) edit,
    required TResult Function(_ReportPost value) report,
    required TResult Function(_DeletePost value) delete,
    required TResult Function(_ChangePostVote value) changeVote,
    required TResult Function(_AddRemoveFromBookmark value)
    addRemoveFromBookMark,
  }) {
    return addRemoveFromBookMark(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Edit value)? edit,
    TResult? Function(_ReportPost value)? report,
    TResult? Function(_DeletePost value)? delete,
    TResult? Function(_ChangePostVote value)? changeVote,
    TResult? Function(_AddRemoveFromBookmark value)? addRemoveFromBookMark,
  }) {
    return addRemoveFromBookMark?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Edit value)? edit,
    TResult Function(_ReportPost value)? report,
    TResult Function(_DeletePost value)? delete,
    TResult Function(_ChangePostVote value)? changeVote,
    TResult Function(_AddRemoveFromBookmark value)? addRemoveFromBookMark,
    required TResult orElse(),
  }) {
    if (addRemoveFromBookMark != null) {
      return addRemoveFromBookMark(this);
    }
    return orElse();
  }
}

abstract class _AddRemoveFromBookmark implements PostEvent {
  const factory _AddRemoveFromBookmark(
    final String postId,
    final bool inBookMark,
  ) = _$AddRemoveFromBookmarkImpl;

  String get postId;
  bool get inBookMark;

  /// Create a copy of PostEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddRemoveFromBookmarkImplCopyWith<_$AddRemoveFromBookmarkImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PostState {
  String get postID => throw _privateConstructorUsedError;
  int get upComments => throw _privateConstructorUsedError;
  int get downComments => throw _privateConstructorUsedError;
  bool get inBookmark => throw _privateConstructorUsedError;
  bool get isPostReported => throw _privateConstructorUsedError;
  PostVoteType get postVoteType => throw _privateConstructorUsedError;

  /// Create a copy of PostState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostStateCopyWith<PostState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostStateCopyWith<$Res> {
  factory $PostStateCopyWith(PostState value, $Res Function(PostState) then) =
      _$PostStateCopyWithImpl<$Res, PostState>;
  @useResult
  $Res call({
    String postID,
    int upComments,
    int downComments,
    bool inBookmark,
    bool isPostReported,
    PostVoteType postVoteType,
  });

  $PostVoteTypeCopyWith<$Res> get postVoteType;
}

/// @nodoc
class _$PostStateCopyWithImpl<$Res, $Val extends PostState>
    implements $PostStateCopyWith<$Res> {
  _$PostStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postID = null,
    Object? upComments = null,
    Object? downComments = null,
    Object? inBookmark = null,
    Object? isPostReported = null,
    Object? postVoteType = null,
  }) {
    return _then(
      _value.copyWith(
            postID: null == postID
                ? _value.postID
                : postID // ignore: cast_nullable_to_non_nullable
                      as String,
            upComments: null == upComments
                ? _value.upComments
                : upComments // ignore: cast_nullable_to_non_nullable
                      as int,
            downComments: null == downComments
                ? _value.downComments
                : downComments // ignore: cast_nullable_to_non_nullable
                      as int,
            inBookmark: null == inBookmark
                ? _value.inBookmark
                : inBookmark // ignore: cast_nullable_to_non_nullable
                      as bool,
            isPostReported: null == isPostReported
                ? _value.isPostReported
                : isPostReported // ignore: cast_nullable_to_non_nullable
                      as bool,
            postVoteType: null == postVoteType
                ? _value.postVoteType
                : postVoteType // ignore: cast_nullable_to_non_nullable
                      as PostVoteType,
          )
          as $Val,
    );
  }

  /// Create a copy of PostState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostVoteTypeCopyWith<$Res> get postVoteType {
    return $PostVoteTypeCopyWith<$Res>(_value.postVoteType, (value) {
      return _then(_value.copyWith(postVoteType: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostStateImplCopyWith<$Res>
    implements $PostStateCopyWith<$Res> {
  factory _$$PostStateImplCopyWith(
    _$PostStateImpl value,
    $Res Function(_$PostStateImpl) then,
  ) = __$$PostStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String postID,
    int upComments,
    int downComments,
    bool inBookmark,
    bool isPostReported,
    PostVoteType postVoteType,
  });

  @override
  $PostVoteTypeCopyWith<$Res> get postVoteType;
}

/// @nodoc
class __$$PostStateImplCopyWithImpl<$Res>
    extends _$PostStateCopyWithImpl<$Res, _$PostStateImpl>
    implements _$$PostStateImplCopyWith<$Res> {
  __$$PostStateImplCopyWithImpl(
    _$PostStateImpl _value,
    $Res Function(_$PostStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PostState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postID = null,
    Object? upComments = null,
    Object? downComments = null,
    Object? inBookmark = null,
    Object? isPostReported = null,
    Object? postVoteType = null,
  }) {
    return _then(
      _$PostStateImpl(
        postID: null == postID
            ? _value.postID
            : postID // ignore: cast_nullable_to_non_nullable
                  as String,
        upComments: null == upComments
            ? _value.upComments
            : upComments // ignore: cast_nullable_to_non_nullable
                  as int,
        downComments: null == downComments
            ? _value.downComments
            : downComments // ignore: cast_nullable_to_non_nullable
                  as int,
        inBookmark: null == inBookmark
            ? _value.inBookmark
            : inBookmark // ignore: cast_nullable_to_non_nullable
                  as bool,
        isPostReported: null == isPostReported
            ? _value.isPostReported
            : isPostReported // ignore: cast_nullable_to_non_nullable
                  as bool,
        postVoteType: null == postVoteType
            ? _value.postVoteType
            : postVoteType // ignore: cast_nullable_to_non_nullable
                  as PostVoteType,
      ),
    );
  }
}

/// @nodoc

class _$PostStateImpl implements _PostState {
  const _$PostStateImpl({
    this.postID = "",
    this.upComments = 0,
    this.downComments = 0,
    this.inBookmark = false,
    this.isPostReported = false,
    this.postVoteType = const PostVoteType.idl(),
  });

  @override
  @JsonKey()
  final String postID;
  @override
  @JsonKey()
  final int upComments;
  @override
  @JsonKey()
  final int downComments;
  @override
  @JsonKey()
  final bool inBookmark;
  @override
  @JsonKey()
  final bool isPostReported;
  @override
  @JsonKey()
  final PostVoteType postVoteType;

  @override
  String toString() {
    return 'PostState(postID: $postID, upComments: $upComments, downComments: $downComments, inBookmark: $inBookmark, isPostReported: $isPostReported, postVoteType: $postVoteType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostStateImpl &&
            (identical(other.postID, postID) || other.postID == postID) &&
            (identical(other.upComments, upComments) ||
                other.upComments == upComments) &&
            (identical(other.downComments, downComments) ||
                other.downComments == downComments) &&
            (identical(other.inBookmark, inBookmark) ||
                other.inBookmark == inBookmark) &&
            (identical(other.isPostReported, isPostReported) ||
                other.isPostReported == isPostReported) &&
            (identical(other.postVoteType, postVoteType) ||
                other.postVoteType == postVoteType));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    postID,
    upComments,
    downComments,
    inBookmark,
    isPostReported,
    postVoteType,
  );

  /// Create a copy of PostState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostStateImplCopyWith<_$PostStateImpl> get copyWith =>
      __$$PostStateImplCopyWithImpl<_$PostStateImpl>(this, _$identity);
}

abstract class _PostState implements PostState {
  const factory _PostState({
    final String postID,
    final int upComments,
    final int downComments,
    final bool inBookmark,
    final bool isPostReported,
    final PostVoteType postVoteType,
  }) = _$PostStateImpl;

  @override
  String get postID;
  @override
  int get upComments;
  @override
  int get downComments;
  @override
  bool get inBookmark;
  @override
  bool get isPostReported;
  @override
  PostVoteType get postVoteType;

  /// Create a copy of PostState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostStateImplCopyWith<_$PostStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
