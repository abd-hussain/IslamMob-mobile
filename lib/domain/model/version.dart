class AppVersionModel {
  AppVersionModel({this.latestVersion, this.minSupportedVersion});

  AppVersionModel.fromJson(Map<String, dynamic> json) {
    latestVersion = json['latestVersion'];
    minSupportedVersion = json['minSupportedVersion'];
  }
  String? latestVersion;
  String? minSupportedVersion;
}
