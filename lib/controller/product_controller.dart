import 'package:get/get.dart';
import 'package:grocery_app/models/product_model.dart';
import 'package:grocery_app/utils/app_assets.dart';

class ProductController extends GetxController {
  var products = <ProductModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() {
    products.assignAll([
      ProductModel(
        id: '1',
        imageUrl: AppAssets.fruit1,
        name: 'Apple',
        price: '\$2.99',
        type: 'Per Kg',
        description: 'Fresh and juicy apples sourced from organic farms.',
      ),
      ProductModel(
        id: '2',
        imageUrl: AppAssets.fruit2,
        name: 'Banana',
        price: '\$1.50',
        type: 'Dozen',
        description: 'Ripe and sweet bananas, perfect for a healthy snack.',
      ),
      ProductModel(
        id: '3',
        imageUrl: AppAssets.fruit3,
        name: 'Orange',
        price: '\$3.20',
        type: 'Per Kg',
        description: 'Citrus-rich oranges packed with vitamin C.',
      ),
      ProductModel(
        id: '4',
        imageUrl: AppAssets.fruit4,
        name: 'Apple',
        price: '\$2.99',
        type: 'Per Kg',
        description: 'Hand-picked apples with a crisp texture and sweet taste.',
      ),
      ProductModel(
        id: '5',
        imageUrl: AppAssets.fruit5,
        name: 'Banana',
        price: '\$1.50',
        type: 'Dozen',
        description: 'High-energy bananas, ideal for smoothies and snacks.',
      ),
      ProductModel(
        id: '6',
        imageUrl: AppAssets.fruit6,
        name: 'Orange',
        price: '\$3.20',
        type: 'Per Kg',
        description: 'Sun-kissed oranges with a juicy and tangy flavor.',
      ),
    ]);
  }

  void toggleLike(String productId) {
    var product = products.firstWhere((p) => p.id == productId);
    product.isLiked.value = !product.isLiked.value;
  }
}
