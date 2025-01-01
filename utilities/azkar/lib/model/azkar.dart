class AzkarModel {
  final int id;
  final String title;
  final String desc;
  final int maxCount;
  final int currentCount;

  AzkarModel({
    required this.id,
    required this.title,
    required this.desc,
    required this.maxCount,
    this.currentCount = 0,
  });

  // Implementing the copyWith method
  AzkarModel copyWith({
    int? id,
    String? title,
    String? desc,
    int? maxCount,
    int? currentCount,
  }) {
    return AzkarModel(
      id: id ?? this.id,
      title: title ?? this.title,
      desc: desc ?? this.desc,
      maxCount: maxCount ?? this.maxCount,
      currentCount: currentCount ?? this.currentCount,
    );
  }
}
