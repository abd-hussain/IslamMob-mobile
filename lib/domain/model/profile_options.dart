import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_options.freezed.dart';

/// A model representing a profile menu option in the Islam Mob app.
///
/// This immutable data class encapsulates the information needed to display
/// and handle profile menu items in the user profile screen. Each option
/// represents a specific feature or setting that users can access:
///
/// - **Visual representation** through icons
/// - **Textual information** with titles and optional subtitles
/// - **Interaction handling** through tap callbacks
/// - **Availability control** for conditional display
///
/// Profile options typically include settings, features, help sections,
/// and other user-accessible functionality organized in a menu format.
/// The model supports both enabled and disabled states for options that
/// may not be available in certain contexts or app versions.
@freezed
class ProfileOptions with _$ProfileOptions {
  /// Creates a [ProfileOptions] instance representing a profile menu item.
  ///
  /// Parameters:
  /// - [icon]: The icon to display for this profile option
  /// - [name]: The main title/name of the profile option
  /// - [subtitle]: Optional subtitle for additional information (defaults to empty)
  /// - [avaliable]: Whether this option is currently available/enabled (defaults to true)
  /// - [onTap]: The callback function to execute when this option is tapped
  ///
  /// The [icon] should be semantically appropriate for the option's function.
  /// The [name] should be localized and clearly describe the option's purpose.
  /// The [subtitle] can provide additional context or status information.
  /// The [avaliable] flag allows for conditional enabling/disabling of options.
  /// The [onTap] callback handles the user interaction and navigation.
  ///
  /// Example:
  /// ```dart
  /// final settingsOption = ProfileOptions(
  ///   icon: Icons.settings,
  ///   name: 'Settings',
  ///   subtitle: 'Customize your app experience',
  ///   avaliable: true,
  ///   onTap: () => Navigator.pushNamed(context, '/settings'),
  /// );
  /// ```
  factory ProfileOptions({
    required IconData icon,
    required String name,
    @Default('') String subtitle,
    @Default(true) bool avaliable,
    required VoidCallback onTap,
  }) = _ProfileOptions;
}
