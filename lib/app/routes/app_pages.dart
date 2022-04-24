import 'package:g58_app_home_find/app/routes/app_routes.dart';
import 'package:g58_app_home_find/app/ui/screens/login/login_binding.dart';
import 'package:g58_app_home_find/app/ui/screens/login/login_screen.dart';
import 'package:g58_app_home_find/app/ui/screens/splash/splash_binding.dart';
import 'package:g58_app_home_find/app/ui/screens/splash/splash_screen.dart';
import 'package:get/get.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.SPLASH,
      page: () => const SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: AppRoutes.LOGIN,
      page: () => const LoginScreen(),
      binding: LoginBinding(),
    ),
  ];
}
