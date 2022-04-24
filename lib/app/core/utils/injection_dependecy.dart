import 'package:g58_app_home_find/app/data/providers/auth_provider.dart';
import 'package:g58_app_home_find/app/data/providers/user_provider.dart';
import 'package:g58_app_home_find/app/data/repositories/auth_repository.dart';
import 'package:g58_app_home_find/app/data/repositories/user_repository.dart';
import 'package:get/get.dart';

class InjectionDependecy {
  static load() {
    //Providers
    Get.put<UserProvider>(UserProvider());
    Get.put<AuthProvider>(AuthProvider());

    //Respositories
    Get.put<UserRepository>(UserRepository());
    Get.put<AuthRepository>(AuthRepository());
  }
}
