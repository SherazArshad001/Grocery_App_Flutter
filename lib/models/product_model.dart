import 'package:get/get_rx/src/rx_types/rx_types.dart';

class ProductModel {
  final String id;
  final String imageUrl;
  final String name;
  final String price;
  final String type;
  final String description;
  final RxBool _isLiked;

  ProductModel({
    required this.id,
    required this.imageUrl,
    required this.name,
    required this.price,
    required this.type,
    required this.description,
    bool isLiked = false,
  }) : _isLiked = RxBool(isLiked);

  RxBool get isLiked => _isLiked;
  void toggleLike() => _isLiked.value = !_isLiked.value;
}
