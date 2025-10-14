import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_sound.freezed.dart';

/// A model representing a notification sound option for Islamic prayer notifications.
///
/// This immutable data class encapsulates information about available notification
/// sounds that users can select for prayer time alerts and Islamic reminders.
/// It includes both the display name for user interface and the technical
/// file name for audio playback.
///
/// The model supports various types of notification sounds including:
/// - Traditional Islamic call to prayer (Adhan) in different styles
/// - Simple notification tones for discrete alerts
/// - Regional variations of Adhan from different Islamic traditions
/// - Custom sounds for different prayer times or reminder types
///
/// This is used in sound selection interfaces where users can preview
/// and choose their preferred notification audio for prayer times.
@freezed
abstract class NotificationSound with _$NotificationSound {
  /// Creates a [NotificationSound] instance representing an available notification sound.
  ///
  /// Parameters:
  /// - [name]: The user-friendly display name of the sound (e.g., "Traditional Adhan", "Makkah Adhan")
  /// - [soundFileName]: The file name of the audio file (e.g., "adhan_traditional.mp3")
  ///
  /// The [name] should be localized and descriptive to help users understand
  /// the style or origin of the sound. The [soundFileName] should correspond
  /// to an actual audio file in the app's assets or downloaded content.
  ///
  /// Example:
  /// ```dart
  /// final adhanSound = NotificationSound(
  ///   name: 'Makkah Adhan',
  ///   soundFileName: 'adhan_makkah.mp3',
  /// );
  /// ```
  factory NotificationSound({
    required String name,
    required String soundFileName,
  }) = _NotificationSound;
}
