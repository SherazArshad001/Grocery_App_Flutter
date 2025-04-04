import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:grocery_app/views/home_screen.dart';
import 'package:grocery_app/views/onboarding.dart';
import 'package:grocery_app/views/product_details_screen.dart';
import 'package:grocery_app/views/splash_screen.dart';

class AppRoutes {
  // Route names for easier navigation and to avoid magic strings
  static const String splash = '/splash';
  static const String boarding = '/boarding';
  static const String home = '/home';
  static const String productDetails = '/productDetails';

  // List of all defined routes with corresponding pages
  static List<GetPage> pages = [
    // Splash Screen Route
    GetPage(
      name: splash,
      page: () => const SplashScreen(),
      transition: Transition.fadeIn, // Optional transition
    ),

    // Onboarding Screen Route
    GetPage(
      name: boarding,
      page: () => const OnboardingScreen(),
      transition: Transition.rightToLeft, // Optional transition
    ),

    // Home Screen Route
    GetPage(
      name: home,
      page: () => HomeScreen(),
      transition: Transition.fadeIn, // Optional transition
    ),

    // Product Details Route
    GetPage(
      name: productDetails,
      page: () => const ProductDetailsScreen(),
      transition: Transition.rightToLeftWithFade, // Optional transition
    ),
  ];
}
