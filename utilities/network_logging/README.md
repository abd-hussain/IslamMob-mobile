<!-- # 📦 Network Logging

Network request logging system for IslamMob that provides comprehensive HTTP request/response logging for debugging and monitoring purposes.

## 🚀 Features

- **Environment-Aware**: Different behavior for dev/staging/prod environments
- **Production Safe**: Zero overhead in production builds
- **Configurable**: Memory limits, retention periods, sensitive data filtering
- **Secure**: Automatic sanitization of sensitive headers and URLs
- **Performant**: Async processing with minimal request overhead

## 🧰 Installation

Add it to your `pubspec.yaml`:

```yaml
dependencies:
  network_logging:
    path: ../../utilities/network_logging
```

## 📋 Usage

The network logging system is automatically integrated through dependency injection. No manual setup required.

### Accessing Logs (Development Only)

```dart
// Get the storage instance
final storage = diContainer<NetworkLogStorage>();

// Get all logged requests
final logs = await storage.getAll();

// Get logs by time range
final recentLogs = await storage.getByTimeRange(
  DateTime.now().subtract(Duration(hours: 1)),
  DateTime.now(),
);

// Get logs by URL pattern
final apiLogs = await storage.getByUrlPattern(r'/api/');

// Get error logs
final errorLogs = await storage.getByStatusCode(400, 599);
```

## 🔧 Configuration

Configuration is automatically handled based on the app environment:

- **Development**: Full logging with request/response bodies
- **Staging**: Limited logging without sensitive data
- **Production**: Completely disabled (no-op)

## 🛡️ Security

The system automatically filters sensitive data:

- **Headers**: Authorization, Cookie, API keys
- **URLs**: Auth endpoints, login, password reset
- **Bodies**: Configurable patterns for sensitive content

## 📊 Memory Management

- Configurable entry limits (dev: 2000, staging: 500)
- Automatic cleanup of old entries
- Memory usage monitoring and enforcement
- LRU eviction when limits are exceeded -->
