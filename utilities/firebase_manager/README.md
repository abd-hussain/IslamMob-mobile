# Firebase Manager

A Flutter package that provides a simplified interface for Firebase services.

## Features

- Firebase Analytics integration
- Firebase Crashlytics for error reporting
- Firebase Firestore database operations
- Firebase Cloud Messaging for push notifications
- Firebase Performance monitoring
- Firebase Remote Config for feature flags and remote settings
- Firebase Storage for file uploads and downloads

## Getting started

Add this package to your pubspec.yaml:

```yaml
dependencies:
  firebase_manager:
    path: ../firebase_manager
```

## Usage

Initialize Firebase in your app:

```dart
import 'package:firebase_manager/firebase_manager.dart';

// In your app initialization
await FirebaseManagerBase.initialize();
```

### Analytics

```dart
// Log an event
await FirebaseAnalyticsRepository.logEvent(
  name: 'button_click',
  parameters: {'button_id': 'login_button'},
);
```

### Firestore

```dart
// Get documents from a collection
final documents = await FirebaseFirestoreRepository.getAllDocuments(
  collectionName: 'users',
);

// Get a specific document with a model
final user = await FirebaseFirestoreRepository.getDataFromFireStoreDocument(
  FireStoreOptions(
    collectionName: 'users',
    docName: 'user_id',
    toModel: (data) => UserModel.fromJson(data),
  ),
);
```

### Cloud Messaging

```dart
// Get FCM token
final token = await FirebaseMessagesRepository().getNotificationToken();
```

### Remote Config

```dart
// Initialize Remote Config
await FirebaseRemoteConfigRepository.initialize();

// Get values
final featureEnabled = FirebaseRemoteConfigRepository.getBool('feature_enabled');
final welcomeMessage = FirebaseRemoteConfigRepository.getString('welcome_message');
```

### Storage

```dart
// Upload a file
final downloadUrl = await FirebaseStorageRepository.uploadFile(
  file: File('path/to/local/file.jpg'),
  path: 'user_uploads',
  fileName: 'profile_image.jpg',
  onProgress: (progress) {
    print('Upload progress: ${progress * 100}%');
  },
);
```

## Additional information

For more detailed documentation on Firebase services, visit the [Firebase documentation](https://firebase.google.com/docs).
