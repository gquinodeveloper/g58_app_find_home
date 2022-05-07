import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:g58_app_home_find/app/data/models/user_model.dart';
import 'package:g58_app_home_find/app/data/repositories/user_repository.dart';
import 'package:g58_app_home_find/app/routes/app_routes.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  //Instancias
  final _userRepository = Get.find<UserRepository>();

  //Variables
  //RxString name = RxString(""); //-------OBX------

  String _name = "";
  String _lastname = "";
  String _address = "";
  String _email = "";
  String _password = "";

  //Controller
  TextEditingController textLastNameController = TextEditingController();

  //Funciones
  void onChangeName(String value) => _name = value;
  void onChangeLastName(String value) => _lastname = value;
  void onChangeAddress(String value) => _address = value;
  void onChangeEmail(String value) => _email = value;
  void onChangePassword(String value) => _password = value;

  goToLogin() {
    Get.toNamed(AppRoutes.LOGIN);
  }

  saveUser() async {
    try {
      //name.value = "";
      //textLastNameController.clear();
      final response = await _userRepository.insert(
        UserModel(
          name: _name,
          lastname: _lastname,
          adress: _address,
          email: _email,
          password: _password,
        ),
      );

      //print(response);
    } on DioError catch (e) {
      print(e.toString());
    }
  }
}
