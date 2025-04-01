import 'package:get/get_rx/src/rx_types/rx_types.dart';

class ProductModel {
  final String id;
  final String imageUrl;
  final String name;
  final String price;
  final String type;
  final String description;
  RxBool isLiked;

  ProductModel({
    required this.id,
    required this.imageUrl,
    required this.name,
    required this.price,
    required this.type,
    required this.description,
    bool isLiked = false,
  }) : isLiked = RxBool(isLiked);
}
