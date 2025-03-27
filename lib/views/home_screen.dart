import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/controller/product_controller.dart';
import 'package:grocery_app/models/cetagory_model.dart';
import 'package:grocery_app/utils/app_assets.dart';
import 'package:grocery_app/utils/app_constant.dart';
import 'package:grocery_app/utils/app_style.dart';
import 'package:grocery_app/widgets/app_textfield.dart';
import 'package:grocery_app/widgets/category_item.dart';
import 'package:grocery_app/widgets/product_card.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final ProductController controller = Get.find<ProductController>();

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();

    final List<CategoryModel> categories = [
      CategoryModel(name: "Fruits", imageUrl: AppAssets.category1),
      CategoryModel(name: "Vegetables", imageUrl: AppAssets.category2),
      CategoryModel(name: "Dairy", imageUrl: AppAssets.category3),
      CategoryModel(name: "Bakery", imageUrl: AppAssets.category4),
      CategoryModel(name: "Meat", imageUrl: AppAssets.category5),
      CategoryModel(name: "Beverages", imageUrl: AppAssets.category6),
    ];

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 🔍 Search Bar
              SearchBarWidget(
                controller: searchController,
                onFilterPressed: () {},
              ),
              const SizedBox(height: 15),

              // 🏞 Banner Image
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  AppAssets.pic1,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 150,
                ),
              ),
              const SizedBox(height: 15),

              // 📌 Categories Title
              Text(AppConstants.categories, style: AppStyles.headingMedium),
              const SizedBox(height: 10),

              // 🏷 Categories List
              SizedBox(
                height: 130,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemCount: categories.length,
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 10),
                  itemBuilder: (context, index) {
                    return CategoryItem(category: categories[index]);
                  },
                ),
              ),
              const SizedBox(height: 15),

              // ⭐ Featured Products Title
              Text(AppConstants.featureProduct, style: AppStyles.headingMedium),
              const SizedBox(height: 10),

              // 🛍 Product Grid (Fixed Height)
              Obx(() {
                return GridView.builder(
                  shrinkWrap: true, // ✅ Allows GridView to size dynamically
                  physics:
                      const NeverScrollableScrollPhysics(), // ✅ Prevents nested scrolling issues
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 181 / 234,
                  ),
                  itemCount: controller.products.length,
                  itemBuilder: (context, index) {
                    return ProductCard(product: controller.products[index]);
                  },
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
