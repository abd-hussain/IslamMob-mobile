# Logger Manager

A Flutter package that provides a simplified interface for logging in Flutter applications.

## Features

- Multiple log levels (verbose, debug, info, warning, error, critical)
- Customizable logger configuration
- File logging support
- Pretty console output with colors and formatting

## Getting started

Add this package to your pubspec.yaml:

```yaml
dependencies:
  logger_manager:
    path: ../logger_manager
```

## Usage

### Basic Logging

```dart
import 'package:logger_manager/logger_manager.dart';

// Log messages at different levels
LoggerManagerBase.logDebugMessage(message: 'This is a debug message');
LoggerManagerBase.logInfo(message: 'This is an info message');
LoggerManagerBase.logWarning(message: 'This is a warning message');
LoggerManagerBase.logErrorMessage(
  error: Exception('Something went wrong'),
  message: 'This is an error message',
);
LoggerManagerBase.logCritical(
  error: Exception('Fatal error'),
  message: 'This is a critical message',
  stackTrace: StackTrace.current,
);
```

### Custom Configuration

```dart
import 'package:logger_manager/logger_manager.dart';

// Initialize with custom configuration
LoggerManagerBase.initialize(
  config: LoggerConfig(
    level: Level.info,  // Only show info and above
    includeTime: true,
    useColors: true,
    methodCount: 1,
    errorMethodCount: 5,
  ),
);

// Or use predefined configurations
LoggerManagerBase.initialize(config: LoggerConfig.production);
```

### File Logging

```dart
import 'package:logger_manager/logger_manager.dart';

// Initialize file logger
await FileLogger.initialize(fileName: 'my_app_logs.txt');

// Log to file
FileLogger.log(Level.info, 'This message will be saved to a file');

// Read logs
String logs = await FileLogger.readLogs();
print(logs);

// Clear logs
await FileLogger.clearLogs();
```

## Additional information

For more information on the underlying logger package, see [logger](https://pub.dev/packages/logger).
