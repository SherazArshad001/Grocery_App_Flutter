import 'package:flutter/material.dart';
import 'package:grocery_app/models/cetagory_model.dart';
import 'package:grocery_app/utils/app_colors.dart';
import 'package:grocery_app/utils/app_style.dart';

class CategoryItem extends StatelessWidget {
  final CategoryModel category;
  final double imageSize;
  final double containerSize;
  final TextStyle? textStyle;
  final Color? backgroundColor;

  const CategoryItem({
    super.key,
    required this.category,
    this.imageSize = 40.0,
    this.containerSize = 80.0,
    this.textStyle,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: 'Category: ${category.name}',
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: containerSize,
            width: containerSize + 10,
            child: Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: backgroundColor ?? AppColors.secondaryTextColor,
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  category.imageUrl,
                  width: imageSize,
                  height: imageSize,
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) {
                    return Icon(Icons.broken_image,
                        size: imageSize, color: Colors.grey);
                  },
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            category.name,
            textAlign: TextAlign.center,
            style: textStyle ?? AppStyles.bodyRegular,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
