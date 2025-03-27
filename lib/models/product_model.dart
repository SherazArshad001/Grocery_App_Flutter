import 'package:get/get_rx/src/rx_types/rx_types.dart';

class Product {
  final String id;
  final String imageUrl;
  final String name;
  final String price;
  final String type;
  RxBool isLiked;

  Product({
    required this.id,
    required this.imageUrl,
    required this.name,
    required this.price,
    required this.type,
    bool isLiked = false,
  }) : isLiked = RxBool(isLiked);
}
