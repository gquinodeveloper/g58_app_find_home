import 'package:flutter/material.dart';
import 'package:g58_app_home_find/app/core/theme/app_theme.dart';
import 'package:g58_app_home_find/app/ui/global_widgets/button_navigator.dart';
import 'package:g58_app_home_find/app/ui/screens/home/home_controller.dart';
import 'package:g58_app_home_find/app/ui/screens/home/widgets/category.dart';
import 'package:g58_app_home_find/app/ui/screens/home/widgets/header.dart';
import 'package:g58_app_home_find/app/ui/screens/home/widgets/houses.dart';
import 'package:g58_app_home_find/app/ui/screens/home/widgets/search.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (_) => Scaffold(
        backgroundColor: AppTheme.background,
        body: SafeArea(
          bottom: false,
          child: Stack(
            children: [
              Positioned.fill(
                child: CustomScrollView(
                  slivers: [
                    Header(),
                    Search(),
                    Category(),
                    Houses(),
                  ],
                ),
              ),
              ButtonNavigator()
            ],
          ),
        ),
      ),
    );
  }
}
