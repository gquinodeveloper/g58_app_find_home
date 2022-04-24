import 'package:g58_app_home_find/app/data/models/auth_model.dart';
import 'package:g58_app_home_find/app/data/repositories/auth_repository.dart';
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

  AuthModel oAuthModel = AuthModel();

  //Variables
  String email = "gqcrispin@gmail.com";
  String password = "123456222";

  //Funciones
  doAuth() async {
    try {
      oAuthModel = await _authRepository.auth(
        email: email,
        password: password,
      );
      print("Token: " + oAuthModel.requestToken);
    } catch (e) {
      print(e.toString());
    }
  }
}
