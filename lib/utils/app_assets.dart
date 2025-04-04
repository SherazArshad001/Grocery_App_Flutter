class AppAssets {
  // Splash Screen Assets
  static const String splash = 'assets/images/splash.png';

  // Onboarding Screen Assets
  static const String onboarding1 = 'assets/images/onboarding1.png';
  static const String onboarding2 = 'assets/images/onboarding2.png';
  static const String onboarding3 = 'assets/images/onboarding3.png';

  // Home Screen Assets
  static const String pic1 = 'assets/images/homepic1.png';

  // Category Images
  static const String category1 = 'assets/images/category1.png';
  static const String category2 = 'assets/images/category2.png';
  static const String category3 = 'assets/images/category3.png';
  static const String category4 = 'assets/images/category4.png';
  static const String category5 = 'assets/images/category5.png';
  static const String category6 = 'assets/images/category6.png';

  // Fruit Images
  static const String fruit1 = 'assets/images/fruit1.png';
  static const String fruit2 = 'assets/images/fruit2.png';
  static const String fruit3 = 'assets/images/fruit3.png';
  static const String fruit4 = 'assets/images/fruit4.png';
  static const String fruit5 = 'assets/images/fruit5.png';
  static const String fruit6 = 'assets/images/fruit6.png';

  // Helper method to get category images
  static String getCategoryImage(int index) {
    switch (index) {
      case 1:
        return category1;
      case 2:
        return category2;
      case 3:
        return category3;
      case 4:
        return category4;
      case 5:
        return category5;
      case 6:
        return category6;
      default:
        return category1; // Default category image if index is out of bounds
    }
  }

  // Helper method to get fruit images
  static String getFruitImage(int index) {
    switch (index) {
      case 1:
        return fruit1;
      case 2:
        return fruit2;
      case 3:
        return fruit3;
      case 4:
        return fruit4;
      case 5:
        return fruit5;
      case 6:
        return fruit6;
      default:
        return fruit1; // Default fruit image if index is out of bounds
    }
  }
}
