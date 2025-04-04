import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/controller/initial_binding.dart';
import 'package:grocery_app/routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: InitialBinding(), 
      initialRoute: AppRoutes.splash, 
      getPages: AppRoutes.pages, 
    );
  }
}
