import 'package:get/get.dart';
import 'package:grocery_app/models/product_model.dart';
import 'package:grocery_app/utils/app_assets.dart';

class ProductController extends GetxController {
  var products = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() {
    products.assignAll([
      Product(
        id: '1',
        imageUrl: AppAssets.fruit1,
        name: 'Apple',
        price: '\$2.99',
        type: 'Per Kg',
      ),
      Product(
        id: '2',
        imageUrl: AppAssets.fruit2,
        name: 'Banana',
        price: '\$1.50',
        type: 'Dozen',
      ),
      Product(
        id: '3',
        imageUrl: AppAssets.fruit3,
        name: 'Orange',
        price: '\$3.20',
        type: 'Per Kg',
      ),
      Product(
        id: '4',
        imageUrl: AppAssets.fruit4,
        name: 'Apple',
        price: '\$2.99',
        type: 'Per Kg',
      ),
      Product(
        id: '5',
        imageUrl: AppAssets.fruit5,
        name: 'Banana',
        price: '\$1.50',
        type: 'Dozen',
      ),
      Product(
        id: '6',
        imageUrl: AppAssets.fruit6,
        name: 'Orange',
        price: '\$3.20',
        type: 'Per Kg',
      ),
    ]);
  }

  void toggleLike(String productId) {
    var product = products.firstWhere((p) => p.id == productId);
    product.isLiked.value = !product.isLiked.value;
  }
}
