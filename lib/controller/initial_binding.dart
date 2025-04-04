import 'package:get/get.dart';
import 'package:grocery_app/controller/splash_controller.dart';
import 'package:grocery_app/controller/product_controller.dart';
import 'package:grocery_app/controller/onboarding_controller.dart'; // Example of service

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    // Lazily initialize SplashController and ProductController
    Get.lazyPut(() => SplashController());
    Get.lazyPut(() => ProductController());
    Get.lazyPut(() => OnboardingController());
    // Example of adding OnboardingController
  }
}
