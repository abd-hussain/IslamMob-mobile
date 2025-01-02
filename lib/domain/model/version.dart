import 'package:freezed_annotation/freezed_annotation.dart';
part 'version.freezed.dart';
part 'version.g.dart';

@freezed
class AppVersionModel with _$AppVersionModel {
  factory AppVersionModel({
    String? latestVersion,
    String? minSupportedVersion,
  }) = _AppVersionModel;

  factory AppVersionModel.fromJson(Map<String, dynamic> json) =>
      _$AppVersionModelFromJson(json);
}
