import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:g58_app_home_find/app/core/theme/app_theme.dart';
import 'package:g58_app_home_find/app/data/models/auth_model.dart';
import 'package:g58_app_home_find/app/data/repositories/auth_repository.dart';
import 'package:g58_app_home_find/app/data/repositories/local/storage_repository.dart';
import 'package:g58_app_home_find/app/routes/app_routes.dart';
import 'package:g58_app_home_find/app/ui/global_widgets/load_spinner.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  //Instancias
  final _authRepository = Get.find<AuthRepository>();
  final _storageRepository = Get.find<StorageRepository>();

  AuthModel oAuthModel = AuthModel();

  //Variables
  String _email = "gqcrispin@gmail.com";
  String _password = "123456";

  //Funciones
  void onChangeEmail(String value) => _email = value;
  void onChangePassword(String value) => _password = value;

  doAuth() async {
    try {
      LoadSpinner.show();
      oAuthModel = await _authRepository.auth(
        email: _email,
        password: _password,
      );
      if (oAuthModel.success == true) {
        //1.- Escribir en storage información
        await _storageRepository.writeSession(oAuthModel);

        //2.- Navegar a nueva pantalla
        Get.offNamedUntil(AppRoutes.HOME, (_) => false);
      }
      LoadSpinner.hide();
    } on DioError catch (e) {
      Get.snackbar(
        "${e.error} - ${e.response?.statusMessage} ",
        e.response?.data["message"],
        colorText: Colors.white,
        duration: const Duration(seconds: 4),
        backgroundColor: Colors.pink,
      );
    }
  }

  goToSignUp() {
    Get.toNamed(AppRoutes.SIGNUP);
  }
}
