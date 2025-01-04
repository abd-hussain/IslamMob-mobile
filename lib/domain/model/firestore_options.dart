class FireStoreOptions<T> {
  FireStoreOptions({
    this.collectionName,
    this.docName,
    this.fromModel,
    this.toModel,
  });
  final String? collectionName;
  final String? docName;
  final Map<String, dynamic>? fromModel;
  final T Function(dynamic)? toModel;
}
