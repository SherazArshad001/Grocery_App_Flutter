import 'package:get/get.dart';

class ProductModel {
  final String id;
  final String imageUrl;
  final String name;
  final String price;
  final String type;
  final String description;

  // Use a private RxBool to control the like status
  final RxBool _isLiked;

  // Constructor for initializing the product model, including the default like status
  ProductModel({
    required this.id,
    required this.imageUrl,
    required this.name,
    required this.price,
    required this.type,
    required this.description,
    bool isLiked = false,
  }) : _isLiked = RxBool(isLiked);

  // Getter to expose the like status as an RxBool (reactive state)
  RxBool get isLiked => _isLiked;

  // Method to toggle the like status
  void toggleLike() {
    _isLiked.value = !_isLiked.value;
  }

  // Optionally, expose the value as a bool for convenience
  bool get isLikedValue => _isLiked.value;
}
