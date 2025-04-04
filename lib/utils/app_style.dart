import 'package:flutter/material.dart';
import 'package:grocery_app/utils/app_colors.dart';

class AppStyles {
  /// Heading styles
  static TextStyle headingLarge = TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryTextColor,
  );

  static const TextStyle headingMedium = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryTextColor,
  );

  /// Body text styles
  static const TextStyle bodyRegular = TextStyle(
    fontSize: 16.0,
    color: AppColors.secondaryTextColor,
  );

  static const TextStyle bodyWhite = TextStyle(
    fontSize: 16.0,
    color: AppColors.whiteColor,
  );
  static const TextStyle priceText = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryColor, // or any color you'd like for the price text
  );
}
