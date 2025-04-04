import 'package:flutter/material.dart';

class AppColors {
  // Primary Colors
  static const Color primaryColor = Color(0xff6CC51D); // Green
  static const Color secondaryColor = Color(0xff868889); // Grey

  // Background Colors
  static const Color whiteColor = Color(0xffffffff); // White

  // Text Colors
  static const Color primaryTextColor = Color(0xff000000); // Black
  static const Color secondaryTextColor = Color(0xff868889); // Grey

  // Additional Colors (for future use)
  static const Color errorColor = Color(0xffD32F2F); // Red for errors
  static const Color successColor = Color(0xff388E3C); // Green for success
  static const Color infoColor =
      Color(0xff1976D2); // Blue for informational messages
  static const Color warningColor = Color(0xffFFA000); // Amber for warnings

  // Helper Methods for Themes
  static Color getBackgroundColor(bool isDarkMode) {
    return isDarkMode
        ? Color(0xff212121)
        : whiteColor; // Dark mode or light mode
  }

  static Color getTextColor(bool isDarkMode) {
    return isDarkMode
        ? whiteColor
        : primaryTextColor; // Text color for dark/light mode
  }
}
