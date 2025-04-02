import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/controller/product_controller.dart';
import 'package:grocery_app/models/product_model.dart';
import 'package:grocery_app/utils/app_constant.dart';
import 'package:grocery_app/widgets/app_button.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;
  final ProductController controller = Get.find();

  ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 4,
      child: Container(
        width: 181,
        height: 234,
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Hero(
                    tag: product.imageUrl,
                    child: Image.asset(
                      product.imageUrl, // Load from assets
                      width: double.infinity,
                      height: 100,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: GestureDetector(
                    onTap: () => controller.toggleLike(product.id),
                    child: Obx(() => Icon(
                          Icons.favorite,
                          color:
                              product.isLiked.value ? Colors.red : Colors.grey,
                          size: 24,
                        )),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              product.name,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(
              product.price,
              style: const TextStyle(fontSize: 14, color: Colors.green),
            ),
            const SizedBox(height: 4),
            Text(
              product.type,
              style: const TextStyle(fontSize: 12, color: Colors.grey),
            ),
            const Spacer(),
            CustomButton(
              text: AppConstants.addToCart,
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
