import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g58_app_home_find/app/core/utils/injection_dependecy.dart';
import 'package:g58_app_home_find/app/routes/app_pages.dart';
import 'package:g58_app_home_find/app/routes/app_routes.dart';
import 'package:get/get.dart';
import 'package:g58_app_home_find/app/ui/screens/splash/splash_screen.dart';

void main() {
  InjectionDependecy.load();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    /*  final size = MediaQuery.of(context).size;
    print("WP: ${size.width}");
    print("HP: ${size.height}"); */

    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_) {
        return GetMaterialApp(
          title: 'G58 Flutter apps',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          initialRoute: AppRoutes.SPLASH,
          getPages: AppPages.pages,
        );
      },
    );
  }
}
