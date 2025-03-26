import 'package:flutter/material.dart';
import 'package:grocery_app/models/cetagory_model.dart';
import 'package:grocery_app/utils/app_assets.dart';
import 'package:grocery_app/utils/app_constant.dart';
import 'package:grocery_app/utils/app_style.dart';
import 'package:grocery_app/widgets/app_textfield.dart';
import 'package:grocery_app/widgets/category_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();

    List<CategoryModel> categories = [
      CategoryModel(name: "Fruits", imageUrl: AppAssets.category1),
      CategoryModel(name: "Vegetables", imageUrl: AppAssets.category2),
      CategoryModel(name: "Dairy", imageUrl: AppAssets.category3),
      CategoryModel(name: "Bakery", imageUrl: AppAssets.category4),
      CategoryModel(name: "Bakery", imageUrl: AppAssets.category5),
      CategoryModel(name: "Bakery", imageUrl: AppAssets.category6),
    ];

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchBarWidget(
              controller: searchController,
              onFilterPressed: () {},
            ),
            const SizedBox(height: 15),
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                AppAssets.pic1,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 15),
            Text(
              AppConstants.categories,
              style: AppStyles.boldText,
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(vertical: 8),
                itemCount: categories.length,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: CategoryItem(category: categories[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
