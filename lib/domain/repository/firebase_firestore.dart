import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:islam_app/domain/model/firestore_options.dart';
import 'package:islam_app/domain/usecase/network_usecase.dart';
import 'package:islam_app/utils/logger.dart';

class FirebaseFirestoreRepository {
  final FirebaseFirestore _firestoreInstance = FirebaseFirestore.instance;
  final FirebaseStorage _storageInstance = FirebaseStorage.instance;

  /// Fetches all documents from a Firestore collection.
  Future<List<QueryDocumentSnapshot<Object?>>> getAllDocuments({
    required String collectionName,
  }) async {
    if (await _isConnected()) {
      try {
        final collection = _firestoreInstance.collection(collectionName);
        return (await collection.get()).docs;
      } on FirebaseException catch (error) {
        logDebugMessage(
          message: 'Unable to fetch data. Error: $error',
        );
      }
    }
    return [];
  }

  /// Fetches spesific documents from a Firestore collection.
  Future<T?> getDataFromFireStoreDocument<T>(
      FireStoreOptions<T> options) async {
    if (await _isConnected()) {
      try {
        final document = await _firestoreInstance
            .collection(options.collectionName!)
            .doc(options.docName ?? "")
            .get(const GetOptions());
        return options.toModel!(document.data());
      } on FirebaseException catch (error) {
        logDebugMessage(
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
      logDebugMessage(message: 'Error uploading file: $error');
      return '';
    }
  }

  /// Sets Firestore data for a given [FireStoreOptions].
  Future<void> setData<T>({
    required FireStoreOptions<T> options,
  }) async {
    try {
      final collection = _firestoreInstance.collection(options.collectionName!);
      await collection.doc(options.docName).set(options.fromModel!.toJson());
    } catch (error) {
      logDebugMessage(message: 'Error setting Firestore data: $error');
    }
  }

  /// Checks for network connectivity.
  Future<bool> _isConnected() async {
    return await NetworkUseCase.checkInternetConeection();
  }
}
