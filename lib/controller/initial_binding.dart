import 'package:get/get.dart';
import 'package:grocery_app/controller/splash_controller.dart';
import 'package:grocery_app/controller/product_controller.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
    Get.lazyPut(() => ProductController()); // Add ProductController here
  }
}
