import 'package:flutter/material.dart';
import 'package:grocery_app/utils/app_colors.dart';

class AppStyles {
  static TextStyle headingStyle = TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryTextColor,
  );

  static const TextStyle bodyStyle = TextStyle(
    fontSize: 16.0,
    color: AppColors.secondaryTextColor,
  );
  static const TextStyle descriptionStyle = TextStyle(
    fontSize: 16.0,
    color: AppColors.whiteColor,
  );
  static const TextStyle boldText = TextStyle(
    fontSize: 18.0,
    color: AppColors.primaryTextColor,
    fontWeight: FontWeight.bold,
  );
}
