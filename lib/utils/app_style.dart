import 'package:flutter/material.dart';
import 'package:grocery_app/utils/app_colors.dart';

class AppStyles {
  // ===== Heading Styles =====
  static const TextStyle headingLarge = TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryTextColor,
  );

  static const TextStyle headingMedium = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryTextColor,
  );

  // ===== Body Text Styles =====
  static const TextStyle bodyRegular = TextStyle(
    fontSize: 16.0,
    color: AppColors.secondaryTextColor,
  );

  static const TextStyle bodyWhite = TextStyle(
    fontSize: 16.0,
    color: AppColors.whiteColor,
  );

  // ===== Price Text Style =====
  static const TextStyle priceText = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryColor, // Use the primary color for price
  );
}
