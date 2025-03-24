import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/controller/onboarding_controller.dart';
import 'package:grocery_app/utils/app_assets.dart';
import 'package:grocery_app/utils/app_colors.dart';
import 'package:grocery_app/utils/app_constant.dart';
import 'package:grocery_app/utils/app_style.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final OnboardingController controller = Get.put(OnboardingController());
    Size screenSize = MediaQuery.of(context).size;

    final List<Map<String, String>> onboardingData = [
      {
        "image": AppAssets.onboarding1,
        "text": AppConstants.onBodingText1,
      },
      {
        "image": AppAssets.onboarding2,
        "text": AppConstants.onBodingText2,
      },
      {
        "image": AppAssets.onboarding3,
        "text": AppConstants.onBodingText3,
      },
    ];

    return Scaffold(
      body: Stack(
        children: [
          /// PageView for Onboarding Screens
          PageView.builder(
            controller: controller.pageController,
            onPageChanged: controller.onPageChanged,
            itemCount: onboardingData.length,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  /// Background Image
                  SizedBox(
                    height: screenSize.height,
                    width: screenSize.width,
                    child: Image.asset(
                      onboardingData[index]["image"]!,
                      fit: BoxFit.cover,
                    ),
                  ),

                  /// Heading Text
                  Positioned(
                    top: screenSize.height * 0.1,
                    left: 20,
                    right: 20,
                    child: Text(
                      onboardingData[index]["text"]!,
                      textAlign: TextAlign.center,
                      style: AppStyles.headingStyle,
                    ),
                  ),
                ],
              );
            },
          ),

          /// Page Indicator Dots (Using Obx)
          Positioned(
            bottom: 80,
            left: 0,
            right: 0,
            child: Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  onboardingData.length,
                  (index) => AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    width: controller.currentPage.value == index ? 12 : 8,
                    height: controller.currentPage.value == index ? 12 : 8,
                    decoration: BoxDecoration(
                      color: controller.currentPage.value == index
                          ? AppColors.primaryColor
                          : AppColors.secondaryColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
            ),
          ),

          /// Next Button
          Positioned(
            bottom: 40,
            left: 20,
            right: 20,
            child: Obx(
              () => ElevatedButton(
                onPressed: controller.nextPage,
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryColor,
                  padding: const EdgeInsets.symmetric(
                    vertical: 30,
                  ),
                ),
                child: Text(
                  controller.currentPage.value == 2
                      ? AppConstants.getStarted
                      : AppConstants.next,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
