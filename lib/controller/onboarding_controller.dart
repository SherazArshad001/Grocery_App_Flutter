import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  var currentPage = 0.obs;
  final pageController = PageController();

  void nextPage() {
    if (currentPage.value < 2) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.ease,
      );
    } else {
      Get.offAllNamed('/home'); // Navigate to Home after last onboarding screen
    }
  }

  void onPageChanged(int index) {
    currentPage.value = index;
  }
}
