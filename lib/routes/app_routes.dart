import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:grocery_app/views/home_screen.dart';
import 'package:grocery_app/views/onboarding.dart';
import 'package:grocery_app/views/product_details_screen.dart';
import 'package:grocery_app/views/splash_screen.dart';

class AppRoutes {
  static const String splash = '/splash';
  static const String boarding = '/boarding';

  static const String home = '/home';
   static const String productDetails = '/productDetails'; 

  static List<GetPage> pages = [
    GetPage(name: splash, page: () => const SplashScreen()),
    GetPage(name: boarding, page: () => const OnboardingScreen()),
    GetPage(name: home, page: () => HomeScreen()),
     GetPage(
      name: productDetails,
      page: () => ProductDetailScreen(),
    ),
  ];
}
