import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

/// Example: Then screenshot verified {'file_name'}
Future<void> screenshotVerified(WidgetTester tester, String fileName) async {
  await multiScreenGolden(
    tester,
    fileName,
    devices: [Device.iphone11, Device.phone],
  );
}
