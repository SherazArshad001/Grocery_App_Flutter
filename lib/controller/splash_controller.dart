import 'package:get/get.dart';
import 'package:grocery_app/routes/app_routes.dart';

class SplashController extends GetxController {
  // Flag to track if the navigation was already triggered
  bool isNavigated = false;

  @override
  void onInit() {
    super.onInit();
    _navigateToOnBoarding();
  }

  // Method to handle the navigation after a delay
  void _navigateToOnBoarding() {
    if (isNavigated) return; // Prevent multiple navigation triggers

    // Delay navigation
    Future.delayed(
      const Duration(seconds: 3),
      () {
        if (!isNavigated) {
          isNavigated = true;
          Get.offNamed(AppRoutes.boarding);
        }
      },
    );
  }

  // Optional: Method to cancel the navigation if needed (e.g., user navigates away)
  void cancelNavigation() {
    isNavigated = true;
  }
}
