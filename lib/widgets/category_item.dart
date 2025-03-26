import 'package:flutter/material.dart';
import 'package:grocery_app/models/cetagory_model.dart';
import 'package:grocery_app/utils/app_colors.dart';
import 'package:grocery_app/utils/app_style.dart';

class CategoryItem extends StatelessWidget {
  final CategoryModel category;

  const CategoryItem({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: AppColors.secondaryTextColor,
              shape: BoxShape.circle,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                category.imageUrl,
                width: 40,
                height: 40,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          category.name,
          style: AppStyles.bodyStyle,
        ),
      ],
    );
  }
}
