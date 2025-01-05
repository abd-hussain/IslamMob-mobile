import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_manager/model/firestore_options.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:internet_connection_checkup/internet_connection_checkup.dart';
import 'package:logger_manager/logger_manager.dart';

class FirebaseFirestoreRepository {
  static final FirebaseFirestore _firestoreInstance =
      FirebaseFirestore.instance;
  final FirebaseStorage _storageInstance = FirebaseStorage.instance;

  /// Fetches all documents from a Firestore collection.
  static Future<List<Map<String, dynamic>>> getAllDocuments({
    required String collectionName,
  }) async {
    if (await _isConnected()) {
      try {
        final collection = _firestoreInstance.collection(collectionName);

        final List<Map<String, dynamic>> documents =
            (await collection.get()).docs.map((doc) => doc.data()).toList();

        return documents;
      } on FirebaseException catch (error) {
        LoggerManagerBase.logDebugMessage(
          message: 'Unable to fetch data. Error: $error',
        );
      }
    }
    return [];
  }

  /// Fetches spesific documents from a Firestore collection.
  static Future<T?> getDataFromFireStoreDocument<T>(
      FireStoreOptions<T> options) async {
    if (await _isConnected()) {
      try {
        final document = await _firestoreInstance
            .collection(options.collectionName!)
            .doc(options.docName ?? "")
            .get(const GetOptions());
        return options.toModel!(document.data());
      } on FirebaseException catch (error) {
        LoggerManagerBase.logDebugMessage(
          message: 'Unable to fetch data. Error: $error',
        );
      }
    }
    return null;
  }

  /// Uploads a file to Firebase Storage and returns its download URL.
  Future<String> uploadFile({
    required File file,
    required String fileName,
  }) async {
    try {
      final ref = _storageInstance.ref('reports/$fileName');
      await ref.putFile(file);
      return await ref.getDownloadURL();
    } catch (error) {
      LoggerManagerBase.logDebugMessage(
          message: 'Error uploading file: $error');
      return '';
    }
  }

  /// Sets Firestore data for a given [FireStoreOptions].
  static Future<void> setData<T>({
    required FireStoreOptions<T> options,
  }) async {
    try {
      final collection = _firestoreInstance.collection(options.collectionName!);
      await collection.doc(options.docName).set(options.fromModel!);
    } catch (error) {
      LoggerManagerBase.logDebugMessage(
          message: 'Error setting Firestore data: $error');
    }
  }

  /// Checks for network connectivity.
  static Future<bool> _isConnected() async {
    return await NetworkUseCase.checkInternetConeection();
  }
}
