// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FeedEvent {

 BuildContext get context; PostCategoryType get type;
/// Create a copy of FeedEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeedEventCopyWith<FeedEvent> get copyWith => _$FeedEventCopyWithImpl<FeedEvent>(this as FeedEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeedEvent&&(identical(other.context, context) || other.context == context)&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,context,type);

@override
String toString() {
  return 'FeedEvent(context: $context, type: $type)';
}


}

/// @nodoc
abstract mixin class $FeedEventCopyWith<$Res>  {
  factory $FeedEventCopyWith(FeedEvent value, $Res Function(FeedEvent) _then) = _$FeedEventCopyWithImpl;
@useResult
$Res call({
 BuildContext context, PostCategoryType type
});


$PostCategoryTypeCopyWith<$Res> get type;

}
/// @nodoc
class _$FeedEventCopyWithImpl<$Res>
    implements $FeedEventCopyWith<$Res> {
  _$FeedEventCopyWithImpl(this._self, this._then);

  final FeedEvent _self;
  final $Res Function(FeedEvent) _then;

/// Create a copy of FeedEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? context = null,Object? type = null,}) {
  return _then(_self.copyWith(
context: null == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as BuildContext,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as PostCategoryType,
  ));
}
/// Create a copy of FeedEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostCategoryTypeCopyWith<$Res> get type {
  
  return $PostCategoryTypeCopyWith<$Res>(_self.type, (value) {
    return _then(_self.copyWith(type: value));
  });
}
}


/// Adds pattern-matching-related methods to [FeedEvent].
extension FeedEventPatterns on FeedEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetPostFromSpesificCategory value)?  getPostFromSpesificCategory,TResult Function( _PullRefresh value)?  pullRefresh,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetPostFromSpesificCategory() when getPostFromSpesificCategory != null:
return getPostFromSpesificCategory(_that);case _PullRefresh() when pullRefresh != null:
return pullRefresh(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetPostFromSpesificCategory value)  getPostFromSpesificCategory,required TResult Function( _PullRefresh value)  pullRefresh,}){
final _that = this;
switch (_that) {
case _GetPostFromSpesificCategory():
return getPostFromSpesificCategory(_that);case _PullRefresh():
return pullRefresh(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetPostFromSpesificCategory value)?  getPostFromSpesificCategory,TResult? Function( _PullRefresh value)?  pullRefresh,}){
final _that = this;
switch (_that) {
case _GetPostFromSpesificCategory() when getPostFromSpesificCategory != null:
return getPostFromSpesificCategory(_that);case _PullRefresh() when pullRefresh != null:
return pullRefresh(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( BuildContext context,  PostCategoryType type)?  getPostFromSpesificCategory,TResult Function( BuildContext context,  PostCategoryType type)?  pullRefresh,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetPostFromSpesificCategory() when getPostFromSpesificCategory != null:
return getPostFromSpesificCategory(_that.context,_that.type);case _PullRefresh() when pullRefresh != null:
return pullRefresh(_that.context,_that.type);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( BuildContext context,  PostCategoryType type)  getPostFromSpesificCategory,required TResult Function( BuildContext context,  PostCategoryType type)  pullRefresh,}) {final _that = this;
switch (_that) {
case _GetPostFromSpesificCategory():
return getPostFromSpesificCategory(_that.context,_that.type);case _PullRefresh():
return pullRefresh(_that.context,_that.type);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( BuildContext context,  PostCategoryType type)?  getPostFromSpesificCategory,TResult? Function( BuildContext context,  PostCategoryType type)?  pullRefresh,}) {final _that = this;
switch (_that) {
case _GetPostFromSpesificCategory() when getPostFromSpesificCategory != null:
return getPostFromSpesificCategory(_that.context,_that.type);case _PullRefresh() when pullRefresh != null:
return pullRefresh(_that.context,_that.type);case _:
  return null;

}
}

}

/// @nodoc


class _GetPostFromSpesificCategory implements FeedEvent {
   _GetPostFromSpesificCategory({required this.context, required this.type});
  

@override final  BuildContext context;
@override final  PostCategoryType type;

/// Create a copy of FeedEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetPostFromSpesificCategoryCopyWith<_GetPostFromSpesificCategory> get copyWith => __$GetPostFromSpesificCategoryCopyWithImpl<_GetPostFromSpesificCategory>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetPostFromSpesificCategory&&(identical(other.context, context) || other.context == context)&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,context,type);

@override
String toString() {
  return 'FeedEvent.getPostFromSpesificCategory(context: $context, type: $type)';
}


}

/// @nodoc
abstract mixin class _$GetPostFromSpesificCategoryCopyWith<$Res> implements $FeedEventCopyWith<$Res> {
  factory _$GetPostFromSpesificCategoryCopyWith(_GetPostFromSpesificCategory value, $Res Function(_GetPostFromSpesificCategory) _then) = __$GetPostFromSpesificCategoryCopyWithImpl;
@override @useResult
$Res call({
 BuildContext context, PostCategoryType type
});


@override $PostCategoryTypeCopyWith<$Res> get type;

}
/// @nodoc
class __$GetPostFromSpesificCategoryCopyWithImpl<$Res>
    implements _$GetPostFromSpesificCategoryCopyWith<$Res> {
  __$GetPostFromSpesificCategoryCopyWithImpl(this._self, this._then);

  final _GetPostFromSpesificCategory _self;
  final $Res Function(_GetPostFromSpesificCategory) _then;

/// Create a copy of FeedEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? context = null,Object? type = null,}) {
  return _then(_GetPostFromSpesificCategory(
context: null == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as BuildContext,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as PostCategoryType,
  ));
}

/// Create a copy of FeedEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostCategoryTypeCopyWith<$Res> get type {
  
  return $PostCategoryTypeCopyWith<$Res>(_self.type, (value) {
    return _then(_self.copyWith(type: value));
  });
}
}

/// @nodoc


class _PullRefresh implements FeedEvent {
   _PullRefresh({required this.context, required this.type});
  

@override final  BuildContext context;
@override final  PostCategoryType type;

/// Create a copy of FeedEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PullRefreshCopyWith<_PullRefresh> get copyWith => __$PullRefreshCopyWithImpl<_PullRefresh>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PullRefresh&&(identical(other.context, context) || other.context == context)&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,context,type);

@override
String toString() {
  return 'FeedEvent.pullRefresh(context: $context, type: $type)';
}


}

/// @nodoc
abstract mixin class _$PullRefreshCopyWith<$Res> implements $FeedEventCopyWith<$Res> {
  factory _$PullRefreshCopyWith(_PullRefresh value, $Res Function(_PullRefresh) _then) = __$PullRefreshCopyWithImpl;
@override @useResult
$Res call({
 BuildContext context, PostCategoryType type
});


@override $PostCategoryTypeCopyWith<$Res> get type;

}
/// @nodoc
class __$PullRefreshCopyWithImpl<$Res>
    implements _$PullRefreshCopyWith<$Res> {
  __$PullRefreshCopyWithImpl(this._self, this._then);

  final _PullRefresh _self;
  final $Res Function(_PullRefresh) _then;

/// Create a copy of FeedEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? context = null,Object? type = null,}) {
  return _then(_PullRefresh(
context: null == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as BuildContext,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as PostCategoryType,
  ));
}

/// Create a copy of FeedEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostCategoryTypeCopyWith<$Res> get type {
  
  return $PostCategoryTypeCopyWith<$Res>(_self.type, (value) {
    return _then(_self.copyWith(type: value));
  });
}
}

/// @nodoc
mixin _$FeedState {

 bool get showInternetConnectionView; List<Post> get wallPostList; List<Post> get watchlistPostList; dynamic get loadingStatus;
/// Create a copy of FeedState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeedStateCopyWith<FeedState> get copyWith => _$FeedStateCopyWithImpl<FeedState>(this as FeedState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeedState&&(identical(other.showInternetConnectionView, showInternetConnectionView) || other.showInternetConnectionView == showInternetConnectionView)&&const DeepCollectionEquality().equals(other.wallPostList, wallPostList)&&const DeepCollectionEquality().equals(other.watchlistPostList, watchlistPostList)&&const DeepCollectionEquality().equals(other.loadingStatus, loadingStatus));
}


@override
int get hashCode => Object.hash(runtimeType,showInternetConnectionView,const DeepCollectionEquality().hash(wallPostList),const DeepCollectionEquality().hash(watchlistPostList),const DeepCollectionEquality().hash(loadingStatus));

@override
String toString() {
  return 'FeedState(showInternetConnectionView: $showInternetConnectionView, wallPostList: $wallPostList, watchlistPostList: $watchlistPostList, loadingStatus: $loadingStatus)';
}


}

/// @nodoc
abstract mixin class $FeedStateCopyWith<$Res>  {
  factory $FeedStateCopyWith(FeedState value, $Res Function(FeedState) _then) = _$FeedStateCopyWithImpl;
@useResult
$Res call({
 bool showInternetConnectionView, List<Post> wallPostList, List<Post> watchlistPostList, dynamic loadingStatus
});




}
/// @nodoc
class _$FeedStateCopyWithImpl<$Res>
    implements $FeedStateCopyWith<$Res> {
  _$FeedStateCopyWithImpl(this._self, this._then);

  final FeedState _self;
  final $Res Function(FeedState) _then;

/// Create a copy of FeedState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? showInternetConnectionView = null,Object? wallPostList = null,Object? watchlistPostList = null,Object? loadingStatus = freezed,}) {
  return _then(_self.copyWith(
showInternetConnectionView: null == showInternetConnectionView ? _self.showInternetConnectionView : showInternetConnectionView // ignore: cast_nullable_to_non_nullable
as bool,wallPostList: null == wallPostList ? _self.wallPostList : wallPostList // ignore: cast_nullable_to_non_nullable
as List<Post>,watchlistPostList: null == watchlistPostList ? _self.watchlistPostList : watchlistPostList // ignore: cast_nullable_to_non_nullable
as List<Post>,loadingStatus: freezed == loadingStatus ? _self.loadingStatus : loadingStatus // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [FeedState].
extension FeedStatePatterns on FeedState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FeedState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FeedState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FeedState value)  $default,){
final _that = this;
switch (_that) {
case _FeedState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FeedState value)?  $default,){
final _that = this;
switch (_that) {
case _FeedState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool showInternetConnectionView,  List<Post> wallPostList,  List<Post> watchlistPostList,  dynamic loadingStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FeedState() when $default != null:
return $default(_that.showInternetConnectionView,_that.wallPostList,_that.watchlistPostList,_that.loadingStatus);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool showInternetConnectionView,  List<Post> wallPostList,  List<Post> watchlistPostList,  dynamic loadingStatus)  $default,) {final _that = this;
switch (_that) {
case _FeedState():
return $default(_that.showInternetConnectionView,_that.wallPostList,_that.watchlistPostList,_that.loadingStatus);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool showInternetConnectionView,  List<Post> wallPostList,  List<Post> watchlistPostList,  dynamic loadingStatus)?  $default,) {final _that = this;
switch (_that) {
case _FeedState() when $default != null:
return $default(_that.showInternetConnectionView,_that.wallPostList,_that.watchlistPostList,_that.loadingStatus);case _:
  return null;

}
}

}

/// @nodoc


class _FeedState implements FeedState {
  const _FeedState({this.showInternetConnectionView = false, final  List<Post> wallPostList = const [], final  List<Post> watchlistPostList = const [], this.loadingStatus = const FeedScreenProcessState.loading()}): _wallPostList = wallPostList,_watchlistPostList = watchlistPostList;
  

@override@JsonKey() final  bool showInternetConnectionView;
 final  List<Post> _wallPostList;
@override@JsonKey() List<Post> get wallPostList {
  if (_wallPostList is EqualUnmodifiableListView) return _wallPostList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_wallPostList);
}

 final  List<Post> _watchlistPostList;
@override@JsonKey() List<Post> get watchlistPostList {
  if (_watchlistPostList is EqualUnmodifiableListView) return _watchlistPostList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_watchlistPostList);
}

@override@JsonKey() final  dynamic loadingStatus;

/// Create a copy of FeedState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeedStateCopyWith<_FeedState> get copyWith => __$FeedStateCopyWithImpl<_FeedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeedState&&(identical(other.showInternetConnectionView, showInternetConnectionView) || other.showInternetConnectionView == showInternetConnectionView)&&const DeepCollectionEquality().equals(other._wallPostList, _wallPostList)&&const DeepCollectionEquality().equals(other._watchlistPostList, _watchlistPostList)&&const DeepCollectionEquality().equals(other.loadingStatus, loadingStatus));
}


@override
int get hashCode => Object.hash(runtimeType,showInternetConnectionView,const DeepCollectionEquality().hash(_wallPostList),const DeepCollectionEquality().hash(_watchlistPostList),const DeepCollectionEquality().hash(loadingStatus));

@override
String toString() {
  return 'FeedState(showInternetConnectionView: $showInternetConnectionView, wallPostList: $wallPostList, watchlistPostList: $watchlistPostList, loadingStatus: $loadingStatus)';
}


}

/// @nodoc
abstract mixin class _$FeedStateCopyWith<$Res> implements $FeedStateCopyWith<$Res> {
  factory _$FeedStateCopyWith(_FeedState value, $Res Function(_FeedState) _then) = __$FeedStateCopyWithImpl;
@override @useResult
$Res call({
 bool showInternetConnectionView, List<Post> wallPostList, List<Post> watchlistPostList, dynamic loadingStatus
});




}
/// @nodoc
class __$FeedStateCopyWithImpl<$Res>
    implements _$FeedStateCopyWith<$Res> {
  __$FeedStateCopyWithImpl(this._self, this._then);

  final _FeedState _self;
  final $Res Function(_FeedState) _then;

/// Create a copy of FeedState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? showInternetConnectionView = null,Object? wallPostList = null,Object? watchlistPostList = null,Object? loadingStatus = freezed,}) {
  return _then(_FeedState(
showInternetConnectionView: null == showInternetConnectionView ? _self.showInternetConnectionView : showInternetConnectionView // ignore: cast_nullable_to_non_nullable
as bool,wallPostList: null == wallPostList ? _self._wallPostList : wallPostList // ignore: cast_nullable_to_non_nullable
as List<Post>,watchlistPostList: null == watchlistPostList ? _self._watchlistPostList : watchlistPostList // ignore: cast_nullable_to_non_nullable
as List<Post>,loadingStatus: freezed == loadingStatus ? _self.loadingStatus : loadingStatus // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

/// @nodoc
mixin _$FeedScreenProcessState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeedScreenProcessState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FeedScreenProcessState()';
}


}

/// @nodoc
class $FeedScreenProcessStateCopyWith<$Res>  {
$FeedScreenProcessStateCopyWith(FeedScreenProcessState _, $Res Function(FeedScreenProcessState) __);
}


/// Adds pattern-matching-related methods to [FeedScreenProcessState].
extension FeedScreenProcessStatePatterns on FeedScreenProcessState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FeedScreenProcessStateLoading value)?  loading,TResult Function( FeedScreenProcessStateDone value)?  done,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FeedScreenProcessStateLoading() when loading != null:
return loading(_that);case FeedScreenProcessStateDone() when done != null:
return done(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FeedScreenProcessStateLoading value)  loading,required TResult Function( FeedScreenProcessStateDone value)  done,}){
final _that = this;
switch (_that) {
case FeedScreenProcessStateLoading():
return loading(_that);case FeedScreenProcessStateDone():
return done(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FeedScreenProcessStateLoading value)?  loading,TResult? Function( FeedScreenProcessStateDone value)?  done,}){
final _that = this;
switch (_that) {
case FeedScreenProcessStateLoading() when loading != null:
return loading(_that);case FeedScreenProcessStateDone() when done != null:
return done(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function()?  done,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FeedScreenProcessStateLoading() when loading != null:
return loading();case FeedScreenProcessStateDone() when done != null:
return done();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function()  done,}) {final _that = this;
switch (_that) {
case FeedScreenProcessStateLoading():
return loading();case FeedScreenProcessStateDone():
return done();}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function()?  done,}) {final _that = this;
switch (_that) {
case FeedScreenProcessStateLoading() when loading != null:
return loading();case FeedScreenProcessStateDone() when done != null:
return done();case _:
  return null;

}
}

}

/// @nodoc


class FeedScreenProcessStateLoading implements FeedScreenProcessState {
  const FeedScreenProcessStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeedScreenProcessStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FeedScreenProcessState.loading()';
}


}




/// @nodoc


class FeedScreenProcessStateDone implements FeedScreenProcessState {
  const FeedScreenProcessStateDone();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeedScreenProcessStateDone);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FeedScreenProcessState.done()';
}


}




// dart format on
