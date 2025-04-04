import 'package:flutter/material.dart';
import 'package:grocery_app/utils/app_colors.dart';
import 'package:grocery_app/utils/app_constant.dart';

class SearchBarWidget extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onFilterPressed;
  final String hintText;
  final Color? backgroundColor;
  final IconData searchIcon;
  final IconData filterIcon;
  final EdgeInsetsGeometry contentPadding;
  final double borderRadius;
  final TextStyle? hintStyle;

  const SearchBarWidget({
    super.key,
    required this.controller,
    required this.onFilterPressed,
    this.hintText = AppConstants.search,
    this.backgroundColor,
    this.searchIcon = Icons.search,
    this.filterIcon = Icons.filter_list,
    this.contentPadding =
        const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
    this.borderRadius = 12.0,
    this.hintStyle,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Semantics(
      label: hintText,
      textField: true,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: hintStyle ??
              theme.textTheme.bodyMedium
                  ?.copyWith(color: AppColors.secondaryColor),
          filled: true,
          fillColor:
              backgroundColor ?? AppColors.secondaryColor.withOpacity(0.2),
          prefixIcon: Icon(searchIcon, color: Colors.grey.shade600),
          suffixIcon: IconButton(
            icon: Icon(filterIcon, color: Colors.grey.shade600),
            onPressed: onFilterPressed,
            tooltip: 'Filter',
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: BorderSide.none,
          ),
          contentPadding: contentPadding,
        ),
      ),
    );
  }
}
