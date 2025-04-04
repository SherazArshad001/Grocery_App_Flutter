import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/models/product_model.dart';
import 'package:grocery_app/widgets/app_button.dart';
import 'package:grocery_app/utils/app_colors.dart';
import 'package:grocery_app/utils/app_style.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Fetch the product data passed as arguments from the previous screen
    final ProductModel? product = Get.arguments as ProductModel?;

    // Error handling: If product is null, show a fallback screen
    if (product == null) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Product Not Found'),
          centerTitle: true,
        ),
        body: const Center(
          child: Text(
            'Product details are unavailable.',
            style: TextStyle(fontSize: 18, color: Colors.red),
          ),
        ),
      );
    }

    // Define screen size for responsive UI
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Hero Animation for Product Image
            Center(
              child: Hero(
                tag: product.imageUrl,
                child: Image.network(
                  product.imageUrl,
                  height: screenSize.height * 0.3, // Make the image responsive
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Product Name
            Text(
              product.name,
              style: AppStyles.headingLarge,
            ),
            const SizedBox(height: 10),

            // Product Description
            Text(
              product.description,
              style: AppStyles.bodyRegular,
            ),
            const SizedBox(height: 10),

            // Price Text
            Text(
              "Price: ${product.price}",
              style: AppStyles.priceText,
            ),
            const SizedBox(height: 20),

            // Add to Cart Button
            CustomButton(
              text: "Add to Cart",
              onPressed: () {
                Get.snackbar(
                  "Cart",
                  "${product.name} added to cart!",
                  snackPosition: SnackPosition.BOTTOM,
                  backgroundColor: AppColors.primaryColor,
                  colorText: Colors.white,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
