import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:islam_app/my_app/locator.dart';
import 'package:islam_app/services/general/network_info_service.dart';
import 'package:islam_app/utils/logger.dart';

class FirestoreService {
  Future<List<QueryDocumentSnapshot<Object?>>> getAllDocumentsFromFireStore({required String collectionName}) async {
    if (await locator<NetworkInfoService>().checkConnectivityonLunching()) {
      try {
        FirebaseFirestore? initInstance = FirebaseFirestore.instance;
        CollectionReference? configCollectionReference = initInstance.collection(collectionName);

        return (await configCollectionReference.get()).docs;
      } on FirebaseException catch (error) {
        logDebugMessage(message: 'Unable to fetch remote config. Cached or default values will be used $error');
      }
    }
    return [];
  }
}
