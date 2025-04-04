import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  var currentPage = 0.obs;
  final PageController pageController = PageController();

  @override
  void onClose() {
    pageController.dispose(); // Dispose of the PageController
    super.onClose();
  }

  void nextPage() {
    if (currentPage.value < 2) {
      currentPage.value++; // Increment currentPage value
      pageController.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.ease,
      );
    } else {
      Get.offAllNamed('/home'); // Navigate to Home after last onboarding screen
    }
  }

  void previousPage() {
    if (currentPage.value > 0) {
      currentPage.value--; // Decrement currentPage value
      pageController.previousPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.ease,
      );
    }
  }

  void onPageChanged(int index) {
    currentPage.value = index;
  }
}
