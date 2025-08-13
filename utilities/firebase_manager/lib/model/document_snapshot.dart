import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseDocumentSnapshot {
  final Map<String, dynamic> data;
  final String id;
  final DocumentSnapshot<Object?> raw;

  FirebaseDocumentSnapshot({
    required this.data,
    required this.id,
    required this.raw,
  });
}
