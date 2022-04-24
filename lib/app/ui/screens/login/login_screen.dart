import 'package:flutter/material.dart';
import 'package:g58_app_home_find/app/core/theme/app_theme.dart';
import 'package:g58_app_home_find/app/ui/screens/login/login_controller.dart';
import 'package:g58_app_home_find/app/ui/screens/login/widgets/content.dart';
import 'package:g58_app_home_find/app/ui/screens/login/widgets/header.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      builder: (_) => Scaffold(
        backgroundColor: AppTheme.cyan,
        body: SafeArea(
          bottom: false,
          child: SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height -
                  MediaQuery.of(context).padding.top,
              child: Column(
                children: [
                  Header(),
                  Content(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
