import 'package:flutter/material.dart';
import 'package:grocery_app/utils/app_colors.dart';
import 'package:grocery_app/utils/app_constant.dart';

class SearchBarWidget extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onFilterPressed;
  final String hintText;

  const SearchBarWidget({
    super.key,
    required this.controller,
    required this.onFilterPressed,
    this.hintText = AppConstants.search,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: AppColors.secondaryColor),
        filled: true,
        prefixIcon: const Icon(Icons.search, color: Colors.grey),
        suffixIcon: IconButton(
          icon: const Icon(Icons.filter_list, color: Colors.grey),
          onPressed: onFilterPressed,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 20,
        ),
      ),
    );
  }
}
