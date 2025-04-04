import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/controller/product_controller.dart';
import 'package:grocery_app/models/cetagory_model.dart';
import 'package:grocery_app/routes/app_routes.dart';
import 'package:grocery_app/utils/app_assets.dart';
import 'package:grocery_app/utils/app_constant.dart';
import 'package:grocery_app/utils/app_style.dart';
import 'package:grocery_app/widgets/app_textfield.dart';
import 'package:grocery_app/widgets/category_item.dart';
import 'package:grocery_app/widgets/product_card.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  // Controller binding to make it available across the widget tree
  final ProductController controller = Get.find<ProductController>();

  @override
  Widget build(BuildContext context) {
    // TextEditingController for search functionality
    TextEditingController searchController = TextEditingController();

    // Category List Initialization
    final List<CategoryModel> categories = [
      CategoryModel(name: "Fruits", imageUrl: AppAssets.category1),
      CategoryModel(name: "Vegetables", imageUrl: AppAssets.category2),
      CategoryModel(name: "Dairy", imageUrl: AppAssets.category3),
      CategoryModel(name: "Bakery", imageUrl: AppAssets.category4),
      CategoryModel(name: "Meat", imageUrl: AppAssets.category5),
      CategoryModel(name: "Beverages", imageUrl: AppAssets.category6),
    ];

    return Scaffold(
      body: ScrollConfiguration(
        behavior: NoScrollGlowBehavior(), // To remove scroll glow effect
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Search Bar with filter functionality
                SearchBarWidget(
                  controller: searchController,
                  onFilterPressed: () {},
                ),
                const SizedBox(height: 15),

                // Banner Image at the top
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

                // Categories Header
                Text(AppConstants.categories, style: AppStyles.headingMedium),
                const SizedBox(height: 10),

                // Horizontal list view for categories
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

                // Featured Products Header
                Text(AppConstants.featureProduct,
                    style: AppStyles.headingMedium),
                const SizedBox(height: 10),

                // Grid view for displaying products
                Obx(() {
                  return GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 181 / 234,
                    ),
                    itemCount: controller.products.length,
                    itemBuilder: (context, index) {
                      final product = controller.products[index];

                      return GestureDetector(
                        onTap: () {
                          Get.toNamed(AppRoutes.productDetails,
                              arguments: product);
                        },
                        child: ProductCard(product: product),
                      );
                    },
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NoScrollGlowBehavior extends MaterialScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
