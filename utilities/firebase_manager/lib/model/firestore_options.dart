/// Configuration options for Firestore operations.
///
/// This class encapsulates the necessary parameters for performing Firestore
/// database operations, including collection and document identification,
/// data serialization, and model conversion functions.
class FireStoreOptions<T> {
  /// Creates a [FireStoreOptions] with the specified parameters.
  FireStoreOptions({
    this.collectionName,
    this.docName,
    this.fromModel,
    this.toModel,
  });

  /// The name of the Firestore collection to operate on.
  final String? collectionName;

  /// The name of the specific document within the collection.
  final String? docName;

  /// The model data to be converted to Firestore format (Map<String, dynamic>).
  final Map<String, dynamic>? fromModel;

  /// Function to convert Firestore data back to the model type T.
  final T Function(dynamic)? toModel;
}
