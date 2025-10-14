// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'web_view_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WebViewEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WebViewEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WebViewEvent()';
}


}

/// @nodoc
class $WebViewEventCopyWith<$Res>  {
$WebViewEventCopyWith(WebViewEvent _, $Res Function(WebViewEvent) __);
}


/// Adds pattern-matching-related methods to [WebViewEvent].
extension WebViewEventPatterns on WebViewEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _InitalizeWebViewContent value)?  initalizeWebViewContent,TResult Function( _UpdateWebViewContent value)?  updateWebViewContent,TResult Function( _UpdateInternetConnectionStatus value)?  updateInternetConnectionStatus,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InitalizeWebViewContent() when initalizeWebViewContent != null:
return initalizeWebViewContent(_that);case _UpdateWebViewContent() when updateWebViewContent != null:
return updateWebViewContent(_that);case _UpdateInternetConnectionStatus() when updateInternetConnectionStatus != null:
return updateInternetConnectionStatus(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _InitalizeWebViewContent value)  initalizeWebViewContent,required TResult Function( _UpdateWebViewContent value)  updateWebViewContent,required TResult Function( _UpdateInternetConnectionStatus value)  updateInternetConnectionStatus,}){
final _that = this;
switch (_that) {
case _InitalizeWebViewContent():
return initalizeWebViewContent(_that);case _UpdateWebViewContent():
return updateWebViewContent(_that);case _UpdateInternetConnectionStatus():
return updateInternetConnectionStatus(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _InitalizeWebViewContent value)?  initalizeWebViewContent,TResult? Function( _UpdateWebViewContent value)?  updateWebViewContent,TResult? Function( _UpdateInternetConnectionStatus value)?  updateInternetConnectionStatus,}){
final _that = this;
switch (_that) {
case _InitalizeWebViewContent() when initalizeWebViewContent != null:
return initalizeWebViewContent(_that);case _UpdateWebViewContent() when updateWebViewContent != null:
return updateWebViewContent(_that);case _UpdateInternetConnectionStatus() when updateInternetConnectionStatus != null:
return updateInternetConnectionStatus(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initalizeWebViewContent,TResult Function( String webViewUrl,  String pageTitle)?  updateWebViewContent,TResult Function( bool status)?  updateInternetConnectionStatus,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InitalizeWebViewContent() when initalizeWebViewContent != null:
return initalizeWebViewContent();case _UpdateWebViewContent() when updateWebViewContent != null:
return updateWebViewContent(_that.webViewUrl,_that.pageTitle);case _UpdateInternetConnectionStatus() when updateInternetConnectionStatus != null:
return updateInternetConnectionStatus(_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initalizeWebViewContent,required TResult Function( String webViewUrl,  String pageTitle)  updateWebViewContent,required TResult Function( bool status)  updateInternetConnectionStatus,}) {final _that = this;
switch (_that) {
case _InitalizeWebViewContent():
return initalizeWebViewContent();case _UpdateWebViewContent():
return updateWebViewContent(_that.webViewUrl,_that.pageTitle);case _UpdateInternetConnectionStatus():
return updateInternetConnectionStatus(_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initalizeWebViewContent,TResult? Function( String webViewUrl,  String pageTitle)?  updateWebViewContent,TResult? Function( bool status)?  updateInternetConnectionStatus,}) {final _that = this;
switch (_that) {
case _InitalizeWebViewContent() when initalizeWebViewContent != null:
return initalizeWebViewContent();case _UpdateWebViewContent() when updateWebViewContent != null:
return updateWebViewContent(_that.webViewUrl,_that.pageTitle);case _UpdateInternetConnectionStatus() when updateInternetConnectionStatus != null:
return updateInternetConnectionStatus(_that.status);case _:
  return null;

}
}

}

/// @nodoc


class _InitalizeWebViewContent implements WebViewEvent {
  const _InitalizeWebViewContent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InitalizeWebViewContent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WebViewEvent.initalizeWebViewContent()';
}


}




/// @nodoc


class _UpdateWebViewContent implements WebViewEvent {
  const _UpdateWebViewContent({required this.webViewUrl, required this.pageTitle});
  

 final  String webViewUrl;
 final  String pageTitle;

/// Create a copy of WebViewEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateWebViewContentCopyWith<_UpdateWebViewContent> get copyWith => __$UpdateWebViewContentCopyWithImpl<_UpdateWebViewContent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateWebViewContent&&(identical(other.webViewUrl, webViewUrl) || other.webViewUrl == webViewUrl)&&(identical(other.pageTitle, pageTitle) || other.pageTitle == pageTitle));
}


@override
int get hashCode => Object.hash(runtimeType,webViewUrl,pageTitle);

@override
String toString() {
  return 'WebViewEvent.updateWebViewContent(webViewUrl: $webViewUrl, pageTitle: $pageTitle)';
}


}

/// @nodoc
abstract mixin class _$UpdateWebViewContentCopyWith<$Res> implements $WebViewEventCopyWith<$Res> {
  factory _$UpdateWebViewContentCopyWith(_UpdateWebViewContent value, $Res Function(_UpdateWebViewContent) _then) = __$UpdateWebViewContentCopyWithImpl;
@useResult
$Res call({
 String webViewUrl, String pageTitle
});




}
/// @nodoc
class __$UpdateWebViewContentCopyWithImpl<$Res>
    implements _$UpdateWebViewContentCopyWith<$Res> {
  __$UpdateWebViewContentCopyWithImpl(this._self, this._then);

  final _UpdateWebViewContent _self;
  final $Res Function(_UpdateWebViewContent) _then;

/// Create a copy of WebViewEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? webViewUrl = null,Object? pageTitle = null,}) {
  return _then(_UpdateWebViewContent(
webViewUrl: null == webViewUrl ? _self.webViewUrl : webViewUrl // ignore: cast_nullable_to_non_nullable
as String,pageTitle: null == pageTitle ? _self.pageTitle : pageTitle // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _UpdateInternetConnectionStatus implements WebViewEvent {
   _UpdateInternetConnectionStatus(this.status);
  

 final  bool status;

/// Create a copy of WebViewEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateInternetConnectionStatusCopyWith<_UpdateInternetConnectionStatus> get copyWith => __$UpdateInternetConnectionStatusCopyWithImpl<_UpdateInternetConnectionStatus>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateInternetConnectionStatus&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,status);

@override
String toString() {
  return 'WebViewEvent.updateInternetConnectionStatus(status: $status)';
}


}

/// @nodoc
abstract mixin class _$UpdateInternetConnectionStatusCopyWith<$Res> implements $WebViewEventCopyWith<$Res> {
  factory _$UpdateInternetConnectionStatusCopyWith(_UpdateInternetConnectionStatus value, $Res Function(_UpdateInternetConnectionStatus) _then) = __$UpdateInternetConnectionStatusCopyWithImpl;
@useResult
$Res call({
 bool status
});




}
/// @nodoc
class __$UpdateInternetConnectionStatusCopyWithImpl<$Res>
    implements _$UpdateInternetConnectionStatusCopyWith<$Res> {
  __$UpdateInternetConnectionStatusCopyWithImpl(this._self, this._then);

  final _UpdateInternetConnectionStatus _self;
  final $Res Function(_UpdateInternetConnectionStatus) _then;

/// Create a copy of WebViewEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? status = null,}) {
  return _then(_UpdateInternetConnectionStatus(
null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$WebViewState {

/// The URL to be loaded in the web view.
///
/// This string contains the web address that will be displayed
/// in the WebViewX component. Defaults to an empty string.
 String get webViewUrl;/// The title of the web page to display in the app bar.
///
/// This string is shown in the custom app bar at the top of the screen.
/// Defaults to an empty string.
 String get pageTitle;/// The current internet connectivity status.
///
/// When true, the web view is displayed. When false, a no internet
/// view with retry functionality is shown instead. Defaults to false.
 bool get internetConnectionStauts;
/// Create a copy of WebViewState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WebViewStateCopyWith<WebViewState> get copyWith => _$WebViewStateCopyWithImpl<WebViewState>(this as WebViewState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WebViewState&&(identical(other.webViewUrl, webViewUrl) || other.webViewUrl == webViewUrl)&&(identical(other.pageTitle, pageTitle) || other.pageTitle == pageTitle)&&(identical(other.internetConnectionStauts, internetConnectionStauts) || other.internetConnectionStauts == internetConnectionStauts));
}


@override
int get hashCode => Object.hash(runtimeType,webViewUrl,pageTitle,internetConnectionStauts);

@override
String toString() {
  return 'WebViewState(webViewUrl: $webViewUrl, pageTitle: $pageTitle, internetConnectionStauts: $internetConnectionStauts)';
}


}

/// @nodoc
abstract mixin class $WebViewStateCopyWith<$Res>  {
  factory $WebViewStateCopyWith(WebViewState value, $Res Function(WebViewState) _then) = _$WebViewStateCopyWithImpl;
@useResult
$Res call({
 String webViewUrl, String pageTitle, bool internetConnectionStauts
});




}
/// @nodoc
class _$WebViewStateCopyWithImpl<$Res>
    implements $WebViewStateCopyWith<$Res> {
  _$WebViewStateCopyWithImpl(this._self, this._then);

  final WebViewState _self;
  final $Res Function(WebViewState) _then;

/// Create a copy of WebViewState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? webViewUrl = null,Object? pageTitle = null,Object? internetConnectionStauts = null,}) {
  return _then(_self.copyWith(
webViewUrl: null == webViewUrl ? _self.webViewUrl : webViewUrl // ignore: cast_nullable_to_non_nullable
as String,pageTitle: null == pageTitle ? _self.pageTitle : pageTitle // ignore: cast_nullable_to_non_nullable
as String,internetConnectionStauts: null == internetConnectionStauts ? _self.internetConnectionStauts : internetConnectionStauts // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [WebViewState].
extension WebViewStatePatterns on WebViewState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WebViewState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WebViewState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WebViewState value)  $default,){
final _that = this;
switch (_that) {
case _WebViewState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WebViewState value)?  $default,){
final _that = this;
switch (_that) {
case _WebViewState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String webViewUrl,  String pageTitle,  bool internetConnectionStauts)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WebViewState() when $default != null:
return $default(_that.webViewUrl,_that.pageTitle,_that.internetConnectionStauts);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String webViewUrl,  String pageTitle,  bool internetConnectionStauts)  $default,) {final _that = this;
switch (_that) {
case _WebViewState():
return $default(_that.webViewUrl,_that.pageTitle,_that.internetConnectionStauts);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String webViewUrl,  String pageTitle,  bool internetConnectionStauts)?  $default,) {final _that = this;
switch (_that) {
case _WebViewState() when $default != null:
return $default(_that.webViewUrl,_that.pageTitle,_that.internetConnectionStauts);case _:
  return null;

}
}

}

/// @nodoc


class _WebViewState implements WebViewState {
  const _WebViewState({this.webViewUrl = "", this.pageTitle = "", this.internetConnectionStauts = false});
  

/// The URL to be loaded in the web view.
///
/// This string contains the web address that will be displayed
/// in the WebViewX component. Defaults to an empty string.
@override@JsonKey() final  String webViewUrl;
/// The title of the web page to display in the app bar.
///
/// This string is shown in the custom app bar at the top of the screen.
/// Defaults to an empty string.
@override@JsonKey() final  String pageTitle;
/// The current internet connectivity status.
///
/// When true, the web view is displayed. When false, a no internet
/// view with retry functionality is shown instead. Defaults to false.
@override@JsonKey() final  bool internetConnectionStauts;

/// Create a copy of WebViewState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WebViewStateCopyWith<_WebViewState> get copyWith => __$WebViewStateCopyWithImpl<_WebViewState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WebViewState&&(identical(other.webViewUrl, webViewUrl) || other.webViewUrl == webViewUrl)&&(identical(other.pageTitle, pageTitle) || other.pageTitle == pageTitle)&&(identical(other.internetConnectionStauts, internetConnectionStauts) || other.internetConnectionStauts == internetConnectionStauts));
}


@override
int get hashCode => Object.hash(runtimeType,webViewUrl,pageTitle,internetConnectionStauts);

@override
String toString() {
  return 'WebViewState(webViewUrl: $webViewUrl, pageTitle: $pageTitle, internetConnectionStauts: $internetConnectionStauts)';
}


}

/// @nodoc
abstract mixin class _$WebViewStateCopyWith<$Res> implements $WebViewStateCopyWith<$Res> {
  factory _$WebViewStateCopyWith(_WebViewState value, $Res Function(_WebViewState) _then) = __$WebViewStateCopyWithImpl;
@override @useResult
$Res call({
 String webViewUrl, String pageTitle, bool internetConnectionStauts
});




}
/// @nodoc
class __$WebViewStateCopyWithImpl<$Res>
    implements _$WebViewStateCopyWith<$Res> {
  __$WebViewStateCopyWithImpl(this._self, this._then);

  final _WebViewState _self;
  final $Res Function(_WebViewState) _then;

/// Create a copy of WebViewState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? webViewUrl = null,Object? pageTitle = null,Object? internetConnectionStauts = null,}) {
  return _then(_WebViewState(
webViewUrl: null == webViewUrl ? _self.webViewUrl : webViewUrl // ignore: cast_nullable_to_non_nullable
as String,pageTitle: null == pageTitle ? _self.pageTitle : pageTitle // ignore: cast_nullable_to_non_nullable
as String,internetConnectionStauts: null == internetConnectionStauts ? _self.internetConnectionStauts : internetConnectionStauts // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
