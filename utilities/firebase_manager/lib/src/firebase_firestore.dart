import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_manager/firebase_manager.dart';
import 'package:internet_connection_checkup/internet_connection_checkup.dart';
import 'package:logger_manager/logger_manager.dart';

/// A repository class that provides methods for interacting with Firebase Firestore.
///
/// This class offers static methods for common Firestore operations including
/// fetching documents, getting specific data, and setting data. All operations
/// include network connectivity checks and error handling.
class FirebaseFirestoreRepository {
  static final FirebaseFirestore _firestoreInstance =
      FirebaseFirestore.instance;

  /// Fetches all documents from a Firestore collection.
  static Future<List<Map<String, dynamic>>> getAllDocuments({
    required String collectionName,
  }) async {
    if (await _isConnected()) {
      if (!await FirebaseManagerBase.isFirebaseInitialized()) {
        await FirebaseManagerBase.initialize();
      }
      try {
        final collection = _firestoreInstance.collection(collectionName);

        final List<Map<String, dynamic>> documents = (await collection.get())
            .docs
            .map((doc) => doc.data())
            .toList();

        return documents;
      } on FirebaseException catch (error) {
        LoggerManagerBase.logCritical(
          error: error,
          message: 'Unable to fetch data',
        );
      }
    }
    return [];
  }

  /// Fetches spesific documents from a Firestore collection.
  static Future<T?> getDataFromFireStoreDocument<T>(
    FireStoreOptions<T> options,
  ) async {
    if (await _isConnected()) {
      if (!await FirebaseManagerBase.isFirebaseInitialized()) {
        await FirebaseManagerBase.initialize();
      }
      try {
        final document = await _firestoreInstance
            .collection(options.collectionName!)
            .doc(options.docName ?? "")
            .get(const GetOptions());
        return options.toModel!(document.data());
      } on FirebaseException catch (error) {
        LoggerManagerBase.logCritical(
          error: error,
          message: 'Unable to fetch data.',
        );
      }
    }
    return null;
  }

  /// Sets Firestore data for a given [FireStoreOptions].
  static Future<void> setData<T>({required FireStoreOptions<T> options}) async {
    try {
      final collection = _firestoreInstance.collection(options.collectionName!);
      await collection.doc(options.docName).set(options.fromModel!);
    } catch (error) {
      LoggerManagerBase.logCritical(
        message: 'Error setting Firestore data',
        error: error,
      );
    }
  }

  /// Updates a single field in a Firestore document.
  static Future<void> updateField({
    required String collectionName,
    required String docId,
    required String field,
    required dynamic value,
  }) async {
    if (await _isConnected()) {
      if (!await FirebaseManagerBase.isFirebaseInitialized()) {
        await FirebaseManagerBase.initialize();
      }
      try {
        await _firestoreInstance.collection(collectionName).doc(docId).update({
          field: value,
        });
        LoggerManagerBase.logInfo(
          message: 'Field "$field" updated in document: $collectionName/$docId',
        );
      } on FirebaseException catch (error) {
        LoggerManagerBase.logCritical(
          error: error,
          message: 'Failed to update field: $collectionName/$docId',
        );
      }
    } else {
      LoggerManagerBase.logWarning(
        message: 'No internet connection. Update operation skipped.',
      );
    }
  }

  /// Gets a single field value from a Firestore document.
  static Future<T?> getFieldValue<T>({
    required String collectionName,
    required String docId,
    required String field,
  }) async {
    if (await _isConnected()) {
      if (!await FirebaseManagerBase.isFirebaseInitialized()) {
        await FirebaseManagerBase.initialize();
      }
      try {
        final docSnapshot = await _firestoreInstance
            .collection(collectionName)
            .doc(docId)
            .get();
        if (docSnapshot.exists && docSnapshot.data()!.containsKey(field)) {
          return docSnapshot.get(field) as T;
        } else {
          LoggerManagerBase.logWarning(
            message:
                'Field "$field" not found in document: $collectionName/$docId',
          );
        }
      } on FirebaseException catch (error) {
        LoggerManagerBase.logCritical(
          error: error,
          message: 'Failed to fetch field: $collectionName/$docId',
        );
      }
    } else {
      LoggerManagerBase.logWarning(
        message: 'No internet connection. Get field operation skipped.',
      );
    }
    return null;
  }

  /// Deletes a specific document from a Firestore collection.
  static Future<void> deleteDocument({
    required String collectionName,
    required String docId,
  }) async {
    if (await _isConnected()) {
      if (!await FirebaseManagerBase.isFirebaseInitialized()) {
        await FirebaseManagerBase.initialize();
      }
      try {
        await _firestoreInstance.collection(collectionName).doc(docId).delete();
        LoggerManagerBase.logInfo(
          message: 'Document deleted: $collectionName/$docId',
        );
      } on FirebaseException catch (error) {
        LoggerManagerBase.logCritical(
          error: error,
          message: 'Failed to delete document: $collectionName/$docId',
        );
      }
    } else {
      LoggerManagerBase.logWarning(
        message: 'No internet connection. Delete operation skipped.',
      );
    }
  }

  /// Checks for network connectivity.
  static Future<bool> _isConnected() async {
    return NetworkUseCase.checkInternetConnection();
  }
}
