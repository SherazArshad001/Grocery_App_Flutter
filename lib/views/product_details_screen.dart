import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/models/product_model.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ProductModel product = Get.arguments as ProductModel; // Fetch product data

    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: 'product_${product.id}',
              child: Image.network(product.imageUrl, height: 200, fit: BoxFit.cover),
            ),
            const SizedBox(height: 10),
            Text(product.name, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text(product.description, style: TextStyle(fontSize: 16)),
            const SizedBox(height: 10),
            Text("Price: \$${product.price}", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Example action: Add to cart logic
              },
              child: Text("Add to Cart"),
            )
          ],
        ),
      ),
    );
  }
}
