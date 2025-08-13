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
  static Future<List<FirebaseDocumentSnapshot>> getAllDocuments({
    required String collectionName,
    bool withPagination = false,
    int limit = 10,
    DocumentSnapshot? startAfterDoc, // for pagination
  }) async {
    if (await _isConnected()) {
      if (!await FirebaseManagerBase.isFirebaseInitialized()) {
        await FirebaseManagerBase.initialize();
      }
      try {
        final collection = _firestoreInstance.collection(collectionName);
        Query query;
        if (withPagination) {
          // Apply pagination with optional startAfter
          if (startAfterDoc != null) {
            query = collection
                .orderBy('createdAt', descending: true)
                .startAfterDocument(startAfterDoc)
                .limit(limit);
          } else {
            query = collection
                .orderBy('createdAt', descending: true)
                .limit(limit);
          }
        } else {
          query = collection;
        }
        final querySnapshot = await query.get();

        final List<FirebaseDocumentSnapshot> documents = querySnapshot.docs
            .map(
              (doc) => FirebaseDocumentSnapshot(
                data: doc.data()! as Map<String, dynamic>,
                id: doc.id,
                raw: doc, // you can keep this private
              ),
            )
            .toList();

        return documents;
      } on FirebaseException catch (error) {
        LoggerManagerBase.logCritical(
          error: error,
          message: 'Unable to fetch posts',
        );
        return [];
      }
    }
    return [];
  }

  static Future<List<FirebaseDocumentSnapshot>> getSubCollectionDocuments({
    required String collectionName,
    required String docId,
    required String subCollectionName,
  }) async {
    if (await _isConnected()) {
      if (!await FirebaseManagerBase.isFirebaseInitialized()) {
        await FirebaseManagerBase.initialize();
      }
      try {
        final subCollectionRef = _firestoreInstance
            .collection(collectionName)
            .doc(docId)
            .collection(subCollectionName);
        final snapshot = await subCollectionRef.get();
        return snapshot.docs.map((doc) {
          return FirebaseDocumentSnapshot(
            id: doc.id,
            data: doc.data(),
            raw: doc,
          );
        }).toList();
      } on FirebaseException catch (error) {
        LoggerManagerBase.logCritical(
          error: error,
          message: 'Unable to fetch SubCollection',
        );
        return [];
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

  /// Sets Firestore data.
  static Future<void> addData<T>({
    required String collectionPath,
    required Map<String, dynamic> map,
  }) async {
    try {
      final collection = _firestoreInstance.collection(collectionPath);
      await collection.add(map);
    } catch (error) {
      LoggerManagerBase.logCritical(
        message: 'Error setting Firestore data',
        error: error,
      );
    }
  }

  /// Sets Firestore Post data
  static Future<void> addPostWithSubcollections<T>({
    required Map<String, dynamic> mainMap,
    required Map<String, dynamic> reportMap,
    required Map<String, dynamic> voteMap,
  }) async {
    try {
      final postsRef = FirebaseFirestore.instance.collection('posts');

      // 1️⃣ Create the post (auto-generated ID)
      final docRef = await postsRef.add(mainMap);

      // 2️⃣ Add to 'reports' subcollection
      await docRef.collection('reports').add(reportMap);

      // 3️⃣ Add to 'votes' subcollection
      await docRef.collection('votes').add(voteMap);
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
    required Map<String, dynamic> updateData,
  }) async {
    if (await _isConnected()) {
      if (!await FirebaseManagerBase.isFirebaseInitialized()) {
        await FirebaseManagerBase.initialize();
      }
      try {
        await _firestoreInstance
            .collection(collectionName)
            .doc(docId)
            .update(updateData);
        LoggerManagerBase.logInfo(
          message:
              'Field "${updateData.keys}" updated in document: $collectionName/$docId',
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

  static Future<void> updateArrayField({
    required String collectionName,
    required String docId,
    required String fieldToAdd,
    String? fieldToRemove, // optional
    required dynamic valueToAddOrRemove,
    bool removeOnly = false,
  }) async {
    if (!await _isConnected()) {
      LoggerManagerBase.logWarning(
        message: 'No internet connection. Update operation skipped.',
      );
      return;
    }

    if (!await FirebaseManagerBase.isFirebaseInitialized()) {
      await FirebaseManagerBase.initialize();
    }

    try {
      final docRef = _firestoreInstance.collection(collectionName).doc(docId);

      final Map<String, dynamic> updateData = {};

      if (removeOnly) {
        updateData[fieldToAdd] = FieldValue.arrayRemove([valueToAddOrRemove]);
        if (fieldToRemove != null) {
          updateData[fieldToRemove] = FieldValue.arrayRemove([
            valueToAddOrRemove,
          ]);
        }
      } else {
        updateData[fieldToAdd] = FieldValue.arrayUnion([valueToAddOrRemove]);
        if (fieldToRemove != null) {
          updateData[fieldToRemove] = FieldValue.arrayRemove([
            valueToAddOrRemove,
          ]);
        }
      }

      await docRef.update(updateData);
    } on FirebaseException catch (error) {
      LoggerManagerBase.logCritical(
        error: error,
        message: 'Failed to update field: $collectionName/$docId',
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
