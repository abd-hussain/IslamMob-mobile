import 'package:url_launcher/url_launcher.dart';

/// Use case for sending SMS messages with Islamic content to multiple recipients.
///
/// This class provides functionality to share Islamic content via SMS messages
/// to multiple contacts simultaneously. It supports:
/// - **Bulk SMS sending** to multiple phone numbers at once
/// - **Islamic content sharing** such as Quran verses, Hadith, and reminders
/// - **Prayer time notifications** to family and friends
/// - **Islamic event reminders** for holidays and special occasions
/// - **Da'wah activities** by sharing beneficial Islamic knowledge
///
/// The SMS functionality enables Muslims to:
/// - Share daily Islamic reminders with their network
/// - Send prayer time updates to family members
/// - Distribute Islamic quotes and verses
/// - Coordinate Islamic community activities
/// - Spread beneficial religious knowledge
///
/// This supports the Islamic principle of sharing beneficial knowledge
/// and maintaining strong community connections among Muslims.
class SendSmsMessagesUsecase {
  /// Sends a bulk SMS message to multiple phone numbers.
  ///
  /// This method opens the device's SMS application with a pre-composed message
  /// addressed to multiple recipients. It handles:
  /// - Multiple phone number formatting and joining
  /// - Message encoding for special characters (Arabic text, emojis)
  /// - SMS URI construction for cross-platform compatibility
  /// - Device SMS app integration
  ///
  /// The method is particularly useful for sharing:
  /// - Daily Islamic reminders and quotes
  /// - Prayer time notifications
  /// - Quran verses and Hadith
  /// - Islamic event announcements
  /// - Community gathering information
  ///
  /// Parameters:
  /// - [mobileNumbers]: List of phone numbers to send the message to
  /// - [message]: The Islamic content or message to send
  ///
  /// The message content should be appropriate Islamic content that benefits
  /// the recipients and aligns with Islamic principles of sharing knowledge.
  ///
  /// Example:
  /// ```dart
  /// await SendSmsMessagesUsecase.sendBulkSMS(
  ///   mobileNumbers: ['+1234567890', '+0987654321'],
  ///   message: 'Assalamu Alaikum! Prayer time reminder: Maghrib at 6:30 PM',
  /// );
  /// ```
  static Future<void> sendBulkSMS({
    required List<String> mobileNumbers,
    required String message,
  }) async {
    // Join multiple numbers with a comma
    final String numbers = mobileNumbers.join(',');

    // Encode message to handle special characters
    final Uri smsUri = Uri.parse(
      'sms:$numbers?body=${Uri.encodeComponent(message)}',
    );

    if (await canLaunchUrl(smsUri)) {
      await launchUrl(smsUri);
    }
  }
}
