import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_log_entry.freezed.dart';
part 'network_log_entry.g.dart';

@freezed
abstract class NetworkLogEntry with _$NetworkLogEntry {
  const factory NetworkLogEntry({
    required String id,
    required String url,
    required String method,
    required DateTime requestTimestamp,
    DateTime? responseTimestamp,
    required Map<String, dynamic> requestHeaders,
    String? requestBody,
    int? statusCode,
    Map<String, dynamic>? responseHeaders,
    String? responseBody,
    String? errorMessage,
    int? duration, // in milliseconds
    @Default(false) bool isSensitive,
    @Default(false) bool isBodyTruncated,
    int? requestBodySize,
    int? responseBodySize,
  }) = _NetworkLogEntry;

  factory NetworkLogEntry.fromJson(Map<String, dynamic> json) =>
      _$NetworkLogEntryFromJson(json);
}

extension NetworkLogEntryExtensions on NetworkLogEntry {
  bool get hasError => errorMessage != null;
  bool get isComplete => responseTimestamp != null;

  String get statusText {
    if (statusCode == null) return 'Pending';
    if (statusCode! >= 200 && statusCode! < 300) return 'Success';
    if (statusCode! >= 400 && statusCode! < 500) return 'Client Error';
    if (statusCode! >= 500) return 'Server Error';
    return 'Unknown';
  }
}
