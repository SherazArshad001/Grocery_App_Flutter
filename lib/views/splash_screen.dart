import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/controller/splash_controller.dart';
import 'package:grocery_app/utils/app_assets.dart';
import 'package:grocery_app/utils/app_constant.dart';
import 'package:grocery_app/utils/app_style.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              AppAssets.splash,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 50,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                AppConstants.splashText,
                style: AppStyles.headingLarge,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
