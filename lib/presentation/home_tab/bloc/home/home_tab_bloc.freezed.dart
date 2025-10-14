// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_tab_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeTabEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeTabEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeTabEvent()';
}


}

/// @nodoc
class $HomeTabEventCopyWith<$Res>  {
$HomeTabEventCopyWith(HomeTabEvent _, $Res Function(HomeTabEvent) __);
}


/// Adds pattern-matching-related methods to [HomeTabEvent].
extension HomeTabEventPatterns on HomeTabEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initialize value)?  initialize,TResult Function( _UpdateExpandedStatus value)?  updateExpandedStatus,TResult Function( _UpdateShowingNotificationView value)?  updateShowingNotificationView,TResult Function( _UpdateShowingLocationView value)?  updateShowingLocationView,TResult Function( _UpdateNextPrayType value)?  updateNextPrayType,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initialize() when initialize != null:
return initialize(_that);case _UpdateExpandedStatus() when updateExpandedStatus != null:
return updateExpandedStatus(_that);case _UpdateShowingNotificationView() when updateShowingNotificationView != null:
return updateShowingNotificationView(_that);case _UpdateShowingLocationView() when updateShowingLocationView != null:
return updateShowingLocationView(_that);case _UpdateNextPrayType() when updateNextPrayType != null:
return updateNextPrayType(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initialize value)  initialize,required TResult Function( _UpdateExpandedStatus value)  updateExpandedStatus,required TResult Function( _UpdateShowingNotificationView value)  updateShowingNotificationView,required TResult Function( _UpdateShowingLocationView value)  updateShowingLocationView,required TResult Function( _UpdateNextPrayType value)  updateNextPrayType,}){
final _that = this;
switch (_that) {
case _Initialize():
return initialize(_that);case _UpdateExpandedStatus():
return updateExpandedStatus(_that);case _UpdateShowingNotificationView():
return updateShowingNotificationView(_that);case _UpdateShowingLocationView():
return updateShowingLocationView(_that);case _UpdateNextPrayType():
return updateNextPrayType(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initialize value)?  initialize,TResult? Function( _UpdateExpandedStatus value)?  updateExpandedStatus,TResult? Function( _UpdateShowingNotificationView value)?  updateShowingNotificationView,TResult? Function( _UpdateShowingLocationView value)?  updateShowingLocationView,TResult? Function( _UpdateNextPrayType value)?  updateNextPrayType,}){
final _that = this;
switch (_that) {
case _Initialize() when initialize != null:
return initialize(_that);case _UpdateExpandedStatus() when updateExpandedStatus != null:
return updateExpandedStatus(_that);case _UpdateShowingNotificationView() when updateShowingNotificationView != null:
return updateShowingNotificationView(_that);case _UpdateShowingLocationView() when updateShowingLocationView != null:
return updateShowingLocationView(_that);case _UpdateNextPrayType() when updateNextPrayType != null:
return updateNextPrayType(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( BuildContext context)?  initialize,TResult Function( bool status)?  updateExpandedStatus,TResult Function( bool status)?  updateShowingNotificationView,TResult Function( bool status)?  updateShowingLocationView,TResult Function( SalahTimeState nextPrayType)?  updateNextPrayType,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initialize() when initialize != null:
return initialize(_that.context);case _UpdateExpandedStatus() when updateExpandedStatus != null:
return updateExpandedStatus(_that.status);case _UpdateShowingNotificationView() when updateShowingNotificationView != null:
return updateShowingNotificationView(_that.status);case _UpdateShowingLocationView() when updateShowingLocationView != null:
return updateShowingLocationView(_that.status);case _UpdateNextPrayType() when updateNextPrayType != null:
return updateNextPrayType(_that.nextPrayType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( BuildContext context)  initialize,required TResult Function( bool status)  updateExpandedStatus,required TResult Function( bool status)  updateShowingNotificationView,required TResult Function( bool status)  updateShowingLocationView,required TResult Function( SalahTimeState nextPrayType)  updateNextPrayType,}) {final _that = this;
switch (_that) {
case _Initialize():
return initialize(_that.context);case _UpdateExpandedStatus():
return updateExpandedStatus(_that.status);case _UpdateShowingNotificationView():
return updateShowingNotificationView(_that.status);case _UpdateShowingLocationView():
return updateShowingLocationView(_that.status);case _UpdateNextPrayType():
return updateNextPrayType(_that.nextPrayType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( BuildContext context)?  initialize,TResult? Function( bool status)?  updateExpandedStatus,TResult? Function( bool status)?  updateShowingNotificationView,TResult? Function( bool status)?  updateShowingLocationView,TResult? Function( SalahTimeState nextPrayType)?  updateNextPrayType,}) {final _that = this;
switch (_that) {
case _Initialize() when initialize != null:
return initialize(_that.context);case _UpdateExpandedStatus() when updateExpandedStatus != null:
return updateExpandedStatus(_that.status);case _UpdateShowingNotificationView() when updateShowingNotificationView != null:
return updateShowingNotificationView(_that.status);case _UpdateShowingLocationView() when updateShowingLocationView != null:
return updateShowingLocationView(_that.status);case _UpdateNextPrayType() when updateNextPrayType != null:
return updateNextPrayType(_that.nextPrayType);case _:
  return null;

}
}

}

/// @nodoc


class _Initialize implements HomeTabEvent {
   _Initialize(this.context);
  

 final  BuildContext context;

/// Create a copy of HomeTabEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitializeCopyWith<_Initialize> get copyWith => __$InitializeCopyWithImpl<_Initialize>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initialize&&(identical(other.context, context) || other.context == context));
}


@override
int get hashCode => Object.hash(runtimeType,context);

@override
String toString() {
  return 'HomeTabEvent.initialize(context: $context)';
}


}

/// @nodoc
abstract mixin class _$InitializeCopyWith<$Res> implements $HomeTabEventCopyWith<$Res> {
  factory _$InitializeCopyWith(_Initialize value, $Res Function(_Initialize) _then) = __$InitializeCopyWithImpl;
@useResult
$Res call({
 BuildContext context
});




}
/// @nodoc
class __$InitializeCopyWithImpl<$Res>
    implements _$InitializeCopyWith<$Res> {
  __$InitializeCopyWithImpl(this._self, this._then);

  final _Initialize _self;
  final $Res Function(_Initialize) _then;

/// Create a copy of HomeTabEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? context = null,}) {
  return _then(_Initialize(
null == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as BuildContext,
  ));
}


}

/// @nodoc


class _UpdateExpandedStatus implements HomeTabEvent {
   _UpdateExpandedStatus(this.status);
  

 final  bool status;

/// Create a copy of HomeTabEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateExpandedStatusCopyWith<_UpdateExpandedStatus> get copyWith => __$UpdateExpandedStatusCopyWithImpl<_UpdateExpandedStatus>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateExpandedStatus&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,status);

@override
String toString() {
  return 'HomeTabEvent.updateExpandedStatus(status: $status)';
}


}

/// @nodoc
abstract mixin class _$UpdateExpandedStatusCopyWith<$Res> implements $HomeTabEventCopyWith<$Res> {
  factory _$UpdateExpandedStatusCopyWith(_UpdateExpandedStatus value, $Res Function(_UpdateExpandedStatus) _then) = __$UpdateExpandedStatusCopyWithImpl;
@useResult
$Res call({
 bool status
});




}
/// @nodoc
class __$UpdateExpandedStatusCopyWithImpl<$Res>
    implements _$UpdateExpandedStatusCopyWith<$Res> {
  __$UpdateExpandedStatusCopyWithImpl(this._self, this._then);

  final _UpdateExpandedStatus _self;
  final $Res Function(_UpdateExpandedStatus) _then;

/// Create a copy of HomeTabEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? status = null,}) {
  return _then(_UpdateExpandedStatus(
null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _UpdateShowingNotificationView implements HomeTabEvent {
   _UpdateShowingNotificationView(this.status);
  

 final  bool status;

/// Create a copy of HomeTabEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateShowingNotificationViewCopyWith<_UpdateShowingNotificationView> get copyWith => __$UpdateShowingNotificationViewCopyWithImpl<_UpdateShowingNotificationView>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateShowingNotificationView&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,status);

@override
String toString() {
  return 'HomeTabEvent.updateShowingNotificationView(status: $status)';
}


}

/// @nodoc
abstract mixin class _$UpdateShowingNotificationViewCopyWith<$Res> implements $HomeTabEventCopyWith<$Res> {
  factory _$UpdateShowingNotificationViewCopyWith(_UpdateShowingNotificationView value, $Res Function(_UpdateShowingNotificationView) _then) = __$UpdateShowingNotificationViewCopyWithImpl;
@useResult
$Res call({
 bool status
});




}
/// @nodoc
class __$UpdateShowingNotificationViewCopyWithImpl<$Res>
    implements _$UpdateShowingNotificationViewCopyWith<$Res> {
  __$UpdateShowingNotificationViewCopyWithImpl(this._self, this._then);

  final _UpdateShowingNotificationView _self;
  final $Res Function(_UpdateShowingNotificationView) _then;

/// Create a copy of HomeTabEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? status = null,}) {
  return _then(_UpdateShowingNotificationView(
null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _UpdateShowingLocationView implements HomeTabEvent {
   _UpdateShowingLocationView(this.status);
  

 final  bool status;

/// Create a copy of HomeTabEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateShowingLocationViewCopyWith<_UpdateShowingLocationView> get copyWith => __$UpdateShowingLocationViewCopyWithImpl<_UpdateShowingLocationView>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateShowingLocationView&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,status);

@override
String toString() {
  return 'HomeTabEvent.updateShowingLocationView(status: $status)';
}


}

/// @nodoc
abstract mixin class _$UpdateShowingLocationViewCopyWith<$Res> implements $HomeTabEventCopyWith<$Res> {
  factory _$UpdateShowingLocationViewCopyWith(_UpdateShowingLocationView value, $Res Function(_UpdateShowingLocationView) _then) = __$UpdateShowingLocationViewCopyWithImpl;
@useResult
$Res call({
 bool status
});




}
/// @nodoc
class __$UpdateShowingLocationViewCopyWithImpl<$Res>
    implements _$UpdateShowingLocationViewCopyWith<$Res> {
  __$UpdateShowingLocationViewCopyWithImpl(this._self, this._then);

  final _UpdateShowingLocationView _self;
  final $Res Function(_UpdateShowingLocationView) _then;

/// Create a copy of HomeTabEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? status = null,}) {
  return _then(_UpdateShowingLocationView(
null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _UpdateNextPrayType implements HomeTabEvent {
   _UpdateNextPrayType(this.nextPrayType);
  

 final  SalahTimeState nextPrayType;

/// Create a copy of HomeTabEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateNextPrayTypeCopyWith<_UpdateNextPrayType> get copyWith => __$UpdateNextPrayTypeCopyWithImpl<_UpdateNextPrayType>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateNextPrayType&&(identical(other.nextPrayType, nextPrayType) || other.nextPrayType == nextPrayType));
}


@override
int get hashCode => Object.hash(runtimeType,nextPrayType);

@override
String toString() {
  return 'HomeTabEvent.updateNextPrayType(nextPrayType: $nextPrayType)';
}


}

/// @nodoc
abstract mixin class _$UpdateNextPrayTypeCopyWith<$Res> implements $HomeTabEventCopyWith<$Res> {
  factory _$UpdateNextPrayTypeCopyWith(_UpdateNextPrayType value, $Res Function(_UpdateNextPrayType) _then) = __$UpdateNextPrayTypeCopyWithImpl;
@useResult
$Res call({
 SalahTimeState nextPrayType
});


$SalahTimeStateCopyWith<$Res> get nextPrayType;

}
/// @nodoc
class __$UpdateNextPrayTypeCopyWithImpl<$Res>
    implements _$UpdateNextPrayTypeCopyWith<$Res> {
  __$UpdateNextPrayTypeCopyWithImpl(this._self, this._then);

  final _UpdateNextPrayType _self;
  final $Res Function(_UpdateNextPrayType) _then;

/// Create a copy of HomeTabEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? nextPrayType = null,}) {
  return _then(_UpdateNextPrayType(
null == nextPrayType ? _self.nextPrayType : nextPrayType // ignore: cast_nullable_to_non_nullable
as SalahTimeState,
  ));
}

/// Create a copy of HomeTabEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SalahTimeStateCopyWith<$Res> get nextPrayType {
  
  return $SalahTimeStateCopyWith<$Res>(_self.nextPrayType, (value) {
    return _then(_self.copyWith(nextPrayType: value));
  });
}
}

/// @nodoc
mixin _$HomeTabState {

 bool get isBarExpanded; bool get showAllowNotificationView; bool get showAllowLocationView; bool get showInternetConnectionView; SalahTimeState get nextPrayType; dynamic get loadingStatus;
/// Create a copy of HomeTabState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeTabStateCopyWith<HomeTabState> get copyWith => _$HomeTabStateCopyWithImpl<HomeTabState>(this as HomeTabState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeTabState&&(identical(other.isBarExpanded, isBarExpanded) || other.isBarExpanded == isBarExpanded)&&(identical(other.showAllowNotificationView, showAllowNotificationView) || other.showAllowNotificationView == showAllowNotificationView)&&(identical(other.showAllowLocationView, showAllowLocationView) || other.showAllowLocationView == showAllowLocationView)&&(identical(other.showInternetConnectionView, showInternetConnectionView) || other.showInternetConnectionView == showInternetConnectionView)&&(identical(other.nextPrayType, nextPrayType) || other.nextPrayType == nextPrayType)&&const DeepCollectionEquality().equals(other.loadingStatus, loadingStatus));
}


@override
int get hashCode => Object.hash(runtimeType,isBarExpanded,showAllowNotificationView,showAllowLocationView,showInternetConnectionView,nextPrayType,const DeepCollectionEquality().hash(loadingStatus));

@override
String toString() {
  return 'HomeTabState(isBarExpanded: $isBarExpanded, showAllowNotificationView: $showAllowNotificationView, showAllowLocationView: $showAllowLocationView, showInternetConnectionView: $showInternetConnectionView, nextPrayType: $nextPrayType, loadingStatus: $loadingStatus)';
}


}

/// @nodoc
abstract mixin class $HomeTabStateCopyWith<$Res>  {
  factory $HomeTabStateCopyWith(HomeTabState value, $Res Function(HomeTabState) _then) = _$HomeTabStateCopyWithImpl;
@useResult
$Res call({
 bool isBarExpanded, bool showAllowNotificationView, bool showAllowLocationView, bool showInternetConnectionView, SalahTimeState nextPrayType, dynamic loadingStatus
});


$SalahTimeStateCopyWith<$Res> get nextPrayType;

}
/// @nodoc
class _$HomeTabStateCopyWithImpl<$Res>
    implements $HomeTabStateCopyWith<$Res> {
  _$HomeTabStateCopyWithImpl(this._self, this._then);

  final HomeTabState _self;
  final $Res Function(HomeTabState) _then;

/// Create a copy of HomeTabState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isBarExpanded = null,Object? showAllowNotificationView = null,Object? showAllowLocationView = null,Object? showInternetConnectionView = null,Object? nextPrayType = null,Object? loadingStatus = freezed,}) {
  return _then(_self.copyWith(
isBarExpanded: null == isBarExpanded ? _self.isBarExpanded : isBarExpanded // ignore: cast_nullable_to_non_nullable
as bool,showAllowNotificationView: null == showAllowNotificationView ? _self.showAllowNotificationView : showAllowNotificationView // ignore: cast_nullable_to_non_nullable
as bool,showAllowLocationView: null == showAllowLocationView ? _self.showAllowLocationView : showAllowLocationView // ignore: cast_nullable_to_non_nullable
as bool,showInternetConnectionView: null == showInternetConnectionView ? _self.showInternetConnectionView : showInternetConnectionView // ignore: cast_nullable_to_non_nullable
as bool,nextPrayType: null == nextPrayType ? _self.nextPrayType : nextPrayType // ignore: cast_nullable_to_non_nullable
as SalahTimeState,loadingStatus: freezed == loadingStatus ? _self.loadingStatus : loadingStatus // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}
/// Create a copy of HomeTabState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SalahTimeStateCopyWith<$Res> get nextPrayType {
  
  return $SalahTimeStateCopyWith<$Res>(_self.nextPrayType, (value) {
    return _then(_self.copyWith(nextPrayType: value));
  });
}
}


/// Adds pattern-matching-related methods to [HomeTabState].
extension HomeTabStatePatterns on HomeTabState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeTabState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeTabState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeTabState value)  $default,){
final _that = this;
switch (_that) {
case _HomeTabState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeTabState value)?  $default,){
final _that = this;
switch (_that) {
case _HomeTabState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isBarExpanded,  bool showAllowNotificationView,  bool showAllowLocationView,  bool showInternetConnectionView,  SalahTimeState nextPrayType,  dynamic loadingStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeTabState() when $default != null:
return $default(_that.isBarExpanded,_that.showAllowNotificationView,_that.showAllowLocationView,_that.showInternetConnectionView,_that.nextPrayType,_that.loadingStatus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isBarExpanded,  bool showAllowNotificationView,  bool showAllowLocationView,  bool showInternetConnectionView,  SalahTimeState nextPrayType,  dynamic loadingStatus)  $default,) {final _that = this;
switch (_that) {
case _HomeTabState():
return $default(_that.isBarExpanded,_that.showAllowNotificationView,_that.showAllowLocationView,_that.showInternetConnectionView,_that.nextPrayType,_that.loadingStatus);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isBarExpanded,  bool showAllowNotificationView,  bool showAllowLocationView,  bool showInternetConnectionView,  SalahTimeState nextPrayType,  dynamic loadingStatus)?  $default,) {final _that = this;
switch (_that) {
case _HomeTabState() when $default != null:
return $default(_that.isBarExpanded,_that.showAllowNotificationView,_that.showAllowLocationView,_that.showInternetConnectionView,_that.nextPrayType,_that.loadingStatus);case _:
  return null;

}
}

}

/// @nodoc


class _HomeTabState implements HomeTabState {
  const _HomeTabState({this.isBarExpanded = true, this.showAllowNotificationView = false, this.showAllowLocationView = false, this.showInternetConnectionView = false, this.nextPrayType = const SalahTimeState.none(), this.loadingStatus = const HomeScreenProcessState.loading()});
  

@override@JsonKey() final  bool isBarExpanded;
@override@JsonKey() final  bool showAllowNotificationView;
@override@JsonKey() final  bool showAllowLocationView;
@override@JsonKey() final  bool showInternetConnectionView;
@override@JsonKey() final  SalahTimeState nextPrayType;
@override@JsonKey() final  dynamic loadingStatus;

/// Create a copy of HomeTabState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeTabStateCopyWith<_HomeTabState> get copyWith => __$HomeTabStateCopyWithImpl<_HomeTabState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeTabState&&(identical(other.isBarExpanded, isBarExpanded) || other.isBarExpanded == isBarExpanded)&&(identical(other.showAllowNotificationView, showAllowNotificationView) || other.showAllowNotificationView == showAllowNotificationView)&&(identical(other.showAllowLocationView, showAllowLocationView) || other.showAllowLocationView == showAllowLocationView)&&(identical(other.showInternetConnectionView, showInternetConnectionView) || other.showInternetConnectionView == showInternetConnectionView)&&(identical(other.nextPrayType, nextPrayType) || other.nextPrayType == nextPrayType)&&const DeepCollectionEquality().equals(other.loadingStatus, loadingStatus));
}


@override
int get hashCode => Object.hash(runtimeType,isBarExpanded,showAllowNotificationView,showAllowLocationView,showInternetConnectionView,nextPrayType,const DeepCollectionEquality().hash(loadingStatus));

@override
String toString() {
  return 'HomeTabState(isBarExpanded: $isBarExpanded, showAllowNotificationView: $showAllowNotificationView, showAllowLocationView: $showAllowLocationView, showInternetConnectionView: $showInternetConnectionView, nextPrayType: $nextPrayType, loadingStatus: $loadingStatus)';
}


}

/// @nodoc
abstract mixin class _$HomeTabStateCopyWith<$Res> implements $HomeTabStateCopyWith<$Res> {
  factory _$HomeTabStateCopyWith(_HomeTabState value, $Res Function(_HomeTabState) _then) = __$HomeTabStateCopyWithImpl;
@override @useResult
$Res call({
 bool isBarExpanded, bool showAllowNotificationView, bool showAllowLocationView, bool showInternetConnectionView, SalahTimeState nextPrayType, dynamic loadingStatus
});


@override $SalahTimeStateCopyWith<$Res> get nextPrayType;

}
/// @nodoc
class __$HomeTabStateCopyWithImpl<$Res>
    implements _$HomeTabStateCopyWith<$Res> {
  __$HomeTabStateCopyWithImpl(this._self, this._then);

  final _HomeTabState _self;
  final $Res Function(_HomeTabState) _then;

/// Create a copy of HomeTabState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isBarExpanded = null,Object? showAllowNotificationView = null,Object? showAllowLocationView = null,Object? showInternetConnectionView = null,Object? nextPrayType = null,Object? loadingStatus = freezed,}) {
  return _then(_HomeTabState(
isBarExpanded: null == isBarExpanded ? _self.isBarExpanded : isBarExpanded // ignore: cast_nullable_to_non_nullable
as bool,showAllowNotificationView: null == showAllowNotificationView ? _self.showAllowNotificationView : showAllowNotificationView // ignore: cast_nullable_to_non_nullable
as bool,showAllowLocationView: null == showAllowLocationView ? _self.showAllowLocationView : showAllowLocationView // ignore: cast_nullable_to_non_nullable
as bool,showInternetConnectionView: null == showInternetConnectionView ? _self.showInternetConnectionView : showInternetConnectionView // ignore: cast_nullable_to_non_nullable
as bool,nextPrayType: null == nextPrayType ? _self.nextPrayType : nextPrayType // ignore: cast_nullable_to_non_nullable
as SalahTimeState,loadingStatus: freezed == loadingStatus ? _self.loadingStatus : loadingStatus // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

/// Create a copy of HomeTabState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SalahTimeStateCopyWith<$Res> get nextPrayType {
  
  return $SalahTimeStateCopyWith<$Res>(_self.nextPrayType, (value) {
    return _then(_self.copyWith(nextPrayType: value));
  });
}
}

/// @nodoc
mixin _$HomeScreenProcessState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeScreenProcessState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeScreenProcessState()';
}


}

/// @nodoc
class $HomeScreenProcessStateCopyWith<$Res>  {
$HomeScreenProcessStateCopyWith(HomeScreenProcessState _, $Res Function(HomeScreenProcessState) __);
}


/// Adds pattern-matching-related methods to [HomeScreenProcessState].
extension HomeScreenProcessStatePatterns on HomeScreenProcessState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( HomeScreenProcessStateLoading value)?  loading,TResult Function( HomeScreenProcessStateDone value)?  done,required TResult orElse(),}){
final _that = this;
switch (_that) {
case HomeScreenProcessStateLoading() when loading != null:
return loading(_that);case HomeScreenProcessStateDone() when done != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( HomeScreenProcessStateLoading value)  loading,required TResult Function( HomeScreenProcessStateDone value)  done,}){
final _that = this;
switch (_that) {
case HomeScreenProcessStateLoading():
return loading(_that);case HomeScreenProcessStateDone():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( HomeScreenProcessStateLoading value)?  loading,TResult? Function( HomeScreenProcessStateDone value)?  done,}){
final _that = this;
switch (_that) {
case HomeScreenProcessStateLoading() when loading != null:
return loading(_that);case HomeScreenProcessStateDone() when done != null:
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
case HomeScreenProcessStateLoading() when loading != null:
return loading();case HomeScreenProcessStateDone() when done != null:
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
case HomeScreenProcessStateLoading():
return loading();case HomeScreenProcessStateDone():
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
case HomeScreenProcessStateLoading() when loading != null:
return loading();case HomeScreenProcessStateDone() when done != null:
return done();case _:
  return null;

}
}

}

/// @nodoc


class HomeScreenProcessStateLoading implements HomeScreenProcessState {
  const HomeScreenProcessStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeScreenProcessStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeScreenProcessState.loading()';
}


}




/// @nodoc


class HomeScreenProcessStateDone implements HomeScreenProcessState {
  const HomeScreenProcessStateDone();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeScreenProcessStateDone);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeScreenProcessState.done()';
}


}




// dart format on
