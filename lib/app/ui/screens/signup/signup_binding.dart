import 'package:get/get.dart';
import 'package:g58_app_home_find/app/ui/screens/signup/signup_controller.dart';

class SignUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpController());
  }
}
