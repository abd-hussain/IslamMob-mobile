import 'package:url_launcher/url_launcher.dart';

class SendSmsMessagesUsecase {
  static Future<void> sendBulkSMS({required List<String> mobileNumbers, required String message}) async {
    // Join multiple numbers with a comma
    final String numbers = mobileNumbers.join(',');

    // Encode message to handle special characters
    final Uri smsUri = Uri.parse('sms:$numbers?body=${Uri.encodeComponent(message)}');

    if (await canLaunchUrl(smsUri)) {
      await launchUrl(smsUri);
    }
  }
}
