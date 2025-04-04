class CategoryModel {
  final String name;
  final String imageUrl;

  CategoryModel({
    required this.name,
    required this.imageUrl,
  });

  // Equality operator to compare instances of CategoryModel
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CategoryModel &&
        other.name == name &&
        other.imageUrl == imageUrl;
  }

  // HashCode override to ensure equality comparisons are consistent
  @override
  int get hashCode => name.hashCode ^ imageUrl.hashCode;

}
