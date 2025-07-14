// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_log_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NetworkLogEntry {

 String get id; String get url; String get method; DateTime get requestTimestamp; DateTime? get responseTimestamp; Map<String, dynamic> get requestHeaders; String? get requestBody; int? get statusCode; Map<String, dynamic>? get responseHeaders; String? get responseBody; String? get errorMessage; int? get duration;// in milliseconds
 bool get isSensitive; bool get isBodyTruncated; int? get requestBodySize; int? get responseBodySize;
/// Create a copy of NetworkLogEntry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NetworkLogEntryCopyWith<NetworkLogEntry> get copyWith => _$NetworkLogEntryCopyWithImpl<NetworkLogEntry>(this as NetworkLogEntry, _$identity);

  /// Serializes this NetworkLogEntry to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NetworkLogEntry&&(identical(other.id, id) || other.id == id)&&(identical(other.url, url) || other.url == url)&&(identical(other.method, method) || other.method == method)&&(identical(other.requestTimestamp, requestTimestamp) || other.requestTimestamp == requestTimestamp)&&(identical(other.responseTimestamp, responseTimestamp) || other.responseTimestamp == responseTimestamp)&&const DeepCollectionEquality().equals(other.requestHeaders, requestHeaders)&&(identical(other.requestBody, requestBody) || other.requestBody == requestBody)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&const DeepCollectionEquality().equals(other.responseHeaders, responseHeaders)&&(identical(other.responseBody, responseBody) || other.responseBody == responseBody)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.isSensitive, isSensitive) || other.isSensitive == isSensitive)&&(identical(other.isBodyTruncated, isBodyTruncated) || other.isBodyTruncated == isBodyTruncated)&&(identical(other.requestBodySize, requestBodySize) || other.requestBodySize == requestBodySize)&&(identical(other.responseBodySize, responseBodySize) || other.responseBodySize == responseBodySize));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,url,method,requestTimestamp,responseTimestamp,const DeepCollectionEquality().hash(requestHeaders),requestBody,statusCode,const DeepCollectionEquality().hash(responseHeaders),responseBody,errorMessage,duration,isSensitive,isBodyTruncated,requestBodySize,responseBodySize);

@override
String toString() {
  return 'NetworkLogEntry(id: $id, url: $url, method: $method, requestTimestamp: $requestTimestamp, responseTimestamp: $responseTimestamp, requestHeaders: $requestHeaders, requestBody: $requestBody, statusCode: $statusCode, responseHeaders: $responseHeaders, responseBody: $responseBody, errorMessage: $errorMessage, duration: $duration, isSensitive: $isSensitive, isBodyTruncated: $isBodyTruncated, requestBodySize: $requestBodySize, responseBodySize: $responseBodySize)';
}


}

/// @nodoc
abstract mixin class $NetworkLogEntryCopyWith<$Res>  {
  factory $NetworkLogEntryCopyWith(NetworkLogEntry value, $Res Function(NetworkLogEntry) _then) = _$NetworkLogEntryCopyWithImpl;
@useResult
$Res call({
 String id, String url, String method, DateTime requestTimestamp, DateTime? responseTimestamp, Map<String, dynamic> requestHeaders, String? requestBody, int? statusCode, Map<String, dynamic>? responseHeaders, String? responseBody, String? errorMessage, int? duration, bool isSensitive, bool isBodyTruncated, int? requestBodySize, int? responseBodySize
});




}
/// @nodoc
class _$NetworkLogEntryCopyWithImpl<$Res>
    implements $NetworkLogEntryCopyWith<$Res> {
  _$NetworkLogEntryCopyWithImpl(this._self, this._then);

  final NetworkLogEntry _self;
  final $Res Function(NetworkLogEntry) _then;

/// Create a copy of NetworkLogEntry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? url = null,Object? method = null,Object? requestTimestamp = null,Object? responseTimestamp = freezed,Object? requestHeaders = null,Object? requestBody = freezed,Object? statusCode = freezed,Object? responseHeaders = freezed,Object? responseBody = freezed,Object? errorMessage = freezed,Object? duration = freezed,Object? isSensitive = null,Object? isBodyTruncated = null,Object? requestBodySize = freezed,Object? responseBodySize = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String,requestTimestamp: null == requestTimestamp ? _self.requestTimestamp : requestTimestamp // ignore: cast_nullable_to_non_nullable
as DateTime,responseTimestamp: freezed == responseTimestamp ? _self.responseTimestamp : responseTimestamp // ignore: cast_nullable_to_non_nullable
as DateTime?,requestHeaders: null == requestHeaders ? _self.requestHeaders : requestHeaders // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,requestBody: freezed == requestBody ? _self.requestBody : requestBody // ignore: cast_nullable_to_non_nullable
as String?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,responseHeaders: freezed == responseHeaders ? _self.responseHeaders : responseHeaders // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,responseBody: freezed == responseBody ? _self.responseBody : responseBody // ignore: cast_nullable_to_non_nullable
as String?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int?,isSensitive: null == isSensitive ? _self.isSensitive : isSensitive // ignore: cast_nullable_to_non_nullable
as bool,isBodyTruncated: null == isBodyTruncated ? _self.isBodyTruncated : isBodyTruncated // ignore: cast_nullable_to_non_nullable
as bool,requestBodySize: freezed == requestBodySize ? _self.requestBodySize : requestBodySize // ignore: cast_nullable_to_non_nullable
as int?,responseBodySize: freezed == responseBodySize ? _self.responseBodySize : responseBodySize // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _NetworkLogEntry implements NetworkLogEntry {
  const _NetworkLogEntry({required this.id, required this.url, required this.method, required this.requestTimestamp, this.responseTimestamp, required final  Map<String, dynamic> requestHeaders, this.requestBody, this.statusCode, final  Map<String, dynamic>? responseHeaders, this.responseBody, this.errorMessage, this.duration, this.isSensitive = false, this.isBodyTruncated = false, this.requestBodySize, this.responseBodySize}): _requestHeaders = requestHeaders,_responseHeaders = responseHeaders;
  factory _NetworkLogEntry.fromJson(Map<String, dynamic> json) => _$NetworkLogEntryFromJson(json);

@override final  String id;
@override final  String url;
@override final  String method;
@override final  DateTime requestTimestamp;
@override final  DateTime? responseTimestamp;
 final  Map<String, dynamic> _requestHeaders;
@override Map<String, dynamic> get requestHeaders {
  if (_requestHeaders is EqualUnmodifiableMapView) return _requestHeaders;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_requestHeaders);
}

@override final  String? requestBody;
@override final  int? statusCode;
 final  Map<String, dynamic>? _responseHeaders;
@override Map<String, dynamic>? get responseHeaders {
  final value = _responseHeaders;
  if (value == null) return null;
  if (_responseHeaders is EqualUnmodifiableMapView) return _responseHeaders;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override final  String? responseBody;
@override final  String? errorMessage;
@override final  int? duration;
// in milliseconds
@override@JsonKey() final  bool isSensitive;
@override@JsonKey() final  bool isBodyTruncated;
@override final  int? requestBodySize;
@override final  int? responseBodySize;

/// Create a copy of NetworkLogEntry
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NetworkLogEntryCopyWith<_NetworkLogEntry> get copyWith => __$NetworkLogEntryCopyWithImpl<_NetworkLogEntry>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NetworkLogEntryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NetworkLogEntry&&(identical(other.id, id) || other.id == id)&&(identical(other.url, url) || other.url == url)&&(identical(other.method, method) || other.method == method)&&(identical(other.requestTimestamp, requestTimestamp) || other.requestTimestamp == requestTimestamp)&&(identical(other.responseTimestamp, responseTimestamp) || other.responseTimestamp == responseTimestamp)&&const DeepCollectionEquality().equals(other._requestHeaders, _requestHeaders)&&(identical(other.requestBody, requestBody) || other.requestBody == requestBody)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&const DeepCollectionEquality().equals(other._responseHeaders, _responseHeaders)&&(identical(other.responseBody, responseBody) || other.responseBody == responseBody)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.isSensitive, isSensitive) || other.isSensitive == isSensitive)&&(identical(other.isBodyTruncated, isBodyTruncated) || other.isBodyTruncated == isBodyTruncated)&&(identical(other.requestBodySize, requestBodySize) || other.requestBodySize == requestBodySize)&&(identical(other.responseBodySize, responseBodySize) || other.responseBodySize == responseBodySize));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,url,method,requestTimestamp,responseTimestamp,const DeepCollectionEquality().hash(_requestHeaders),requestBody,statusCode,const DeepCollectionEquality().hash(_responseHeaders),responseBody,errorMessage,duration,isSensitive,isBodyTruncated,requestBodySize,responseBodySize);

@override
String toString() {
  return 'NetworkLogEntry(id: $id, url: $url, method: $method, requestTimestamp: $requestTimestamp, responseTimestamp: $responseTimestamp, requestHeaders: $requestHeaders, requestBody: $requestBody, statusCode: $statusCode, responseHeaders: $responseHeaders, responseBody: $responseBody, errorMessage: $errorMessage, duration: $duration, isSensitive: $isSensitive, isBodyTruncated: $isBodyTruncated, requestBodySize: $requestBodySize, responseBodySize: $responseBodySize)';
}


}

/// @nodoc
abstract mixin class _$NetworkLogEntryCopyWith<$Res> implements $NetworkLogEntryCopyWith<$Res> {
  factory _$NetworkLogEntryCopyWith(_NetworkLogEntry value, $Res Function(_NetworkLogEntry) _then) = __$NetworkLogEntryCopyWithImpl;
@override @useResult
$Res call({
 String id, String url, String method, DateTime requestTimestamp, DateTime? responseTimestamp, Map<String, dynamic> requestHeaders, String? requestBody, int? statusCode, Map<String, dynamic>? responseHeaders, String? responseBody, String? errorMessage, int? duration, bool isSensitive, bool isBodyTruncated, int? requestBodySize, int? responseBodySize
});




}
/// @nodoc
class __$NetworkLogEntryCopyWithImpl<$Res>
    implements _$NetworkLogEntryCopyWith<$Res> {
  __$NetworkLogEntryCopyWithImpl(this._self, this._then);

  final _NetworkLogEntry _self;
  final $Res Function(_NetworkLogEntry) _then;

/// Create a copy of NetworkLogEntry
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? url = null,Object? method = null,Object? requestTimestamp = null,Object? responseTimestamp = freezed,Object? requestHeaders = null,Object? requestBody = freezed,Object? statusCode = freezed,Object? responseHeaders = freezed,Object? responseBody = freezed,Object? errorMessage = freezed,Object? duration = freezed,Object? isSensitive = null,Object? isBodyTruncated = null,Object? requestBodySize = freezed,Object? responseBodySize = freezed,}) {
  return _then(_NetworkLogEntry(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String,requestTimestamp: null == requestTimestamp ? _self.requestTimestamp : requestTimestamp // ignore: cast_nullable_to_non_nullable
as DateTime,responseTimestamp: freezed == responseTimestamp ? _self.responseTimestamp : responseTimestamp // ignore: cast_nullable_to_non_nullable
as DateTime?,requestHeaders: null == requestHeaders ? _self._requestHeaders : requestHeaders // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,requestBody: freezed == requestBody ? _self.requestBody : requestBody // ignore: cast_nullable_to_non_nullable
as String?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,responseHeaders: freezed == responseHeaders ? _self._responseHeaders : responseHeaders // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,responseBody: freezed == responseBody ? _self.responseBody : responseBody // ignore: cast_nullable_to_non_nullable
as String?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int?,isSensitive: null == isSensitive ? _self.isSensitive : isSensitive // ignore: cast_nullable_to_non_nullable
as bool,isBodyTruncated: null == isBodyTruncated ? _self.isBodyTruncated : isBodyTruncated // ignore: cast_nullable_to_non_nullable
as bool,requestBodySize: freezed == requestBodySize ? _self.requestBodySize : requestBodySize // ignore: cast_nullable_to_non_nullable
as int?,responseBodySize: freezed == responseBodySize ? _self.responseBodySize : responseBodySize // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
