import 'package:g58_app_home_find/app/data/models/user_model.dart';
import 'package:g58_app_home_find/app/data/repositories/user_repository.dart';
import 'package:g58_app_home_find/app/routes/app_routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    loadUser();
    super.onInit();
  }

  @override
  void onReady() {
    _loadLogin();
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  _loadLogin() async {
    await Future.delayed(const Duration(seconds: 3), () {
      Get.offNamed(AppRoutes.LOGIN);
      //Get.toNamed(AppRoutes.LOGIN);
    });
  }

  /* final _userRepository = Get.find<UserRepository>();
  RxList<UserModel> users = RxList<UserModel>([]); */
  loadUser() async {
    /*  try {
      users.value = await _userRepository.getUsers();
    } catch (e) {
      Get.snackbar(
        "Error",
        e.toString(),
        duration: const Duration(seconds: 5),
        snackPosition: SnackPosition.BOTTOM,
      );
    } */
  }
}
