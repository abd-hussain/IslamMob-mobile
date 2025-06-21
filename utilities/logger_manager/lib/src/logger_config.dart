import 'package:logger/logger.dart';

/// Configuration class for logger settings and behavior.
///
/// This class defines various configuration options for the logger including
/// log levels, output formatting, and display preferences. It provides
/// predefined configurations for different environments.
class LoggerConfig {
  /// The minimum log level to display
  final Level level;

  /// Whether to use colors in console output
  final bool useColors;

  /// Number of method calls to display in stack trace
  final int methodCount;

  /// Number of method calls to display for errors
  final int errorMethodCount;

  /// Whether to include emojis in log output
  final bool includeEmojis;

  /// Maximum line length before wrapping
  final int lineLength;

  /// Creates a new [LoggerConfig] with the specified settings.
  ///
  /// All parameters are optional and have sensible defaults for development use.
  const LoggerConfig({
    this.level = Level.debug,
    this.useColors = true,
    this.methodCount = 2,
    this.errorMethodCount = 8,
    this.includeEmojis = true,
    this.lineLength = 120,
  });

  /// Production configuration with minimal output
  static const LoggerConfig production = LoggerConfig(
    level: Level.warning,
    useColors: false,
    methodCount: 0,
    errorMethodCount: 5,
    includeEmojis: false,
  );

  /// Development configuration with detailed output
  static const LoggerConfig development = LoggerConfig();
}
