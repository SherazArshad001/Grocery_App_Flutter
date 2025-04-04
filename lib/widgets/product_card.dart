import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/controller/product_controller.dart';
import 'package:grocery_app/models/product_model.dart';
import 'package:grocery_app/utils/app_constant.dart';
import 'package:grocery_app/widgets/app_button.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;
  final ProductController controller = Get.find<ProductController>();

  ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Semantics(
      label: 'Product: ${product.name}',
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Container(
          width: 181,
          height: 234,
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildImageWithLike(),
              const SizedBox(height: 8),
              Text(
                product.name,
                style: theme.textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 4),
              Text(
                product.price,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: Colors.green,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                product.type,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
              const Spacer(),
              CustomButton(
                text: AppConstants.addToCart,
                onPressed: () {
                  controller.addToCart(product);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImageWithLike() {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Hero(
            tag: product.imageUrl,
            child: Image.asset(
              product.imageUrl,
              width: double.infinity,
              height: 100,
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  height: 100,
                  alignment: Alignment.center,
                  color: Colors.grey.shade200,
                  child: const Icon(Icons.broken_image, size: 40, color: Colors.grey),
                );
              },
            ),
          ),
        ),
        Positioned(
          top: 8,
          right: 8,
          child: Obx(() => GestureDetector(
                onTap: () => controller.toggleLike(product.id),
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  transitionBuilder: (child, anim) =>
                      ScaleTransition(scale: anim, child: child),
                  child: Icon(
                    key: ValueKey<bool>(product.isLiked.value),
                    Icons.favorite,
                    color: product.isLiked.value ? Colors.red : Colors.grey,
                    size: 24,
                  ),
                ),
              )),
        ),
      ],
    );
  }
}
