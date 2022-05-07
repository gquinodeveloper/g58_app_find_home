import 'package:g58_app_home_find/app/data/providers/auth_provider.dart';
import 'package:g58_app_home_find/app/data/providers/house_provider.dart';
import 'package:g58_app_home_find/app/data/providers/local/storage_provider.dart';
import 'package:g58_app_home_find/app/data/providers/reservation_provider.dart';
import 'package:g58_app_home_find/app/data/providers/user_provider.dart';
import 'package:g58_app_home_find/app/data/repositories/auth_repository.dart';
import 'package:g58_app_home_find/app/data/repositories/house_repository.dart';
import 'package:g58_app_home_find/app/data/repositories/local/storage_repository.dart';
import 'package:g58_app_home_find/app/data/repositories/reservation_repository.dart';
import 'package:g58_app_home_find/app/data/repositories/user_repository.dart';
import 'package:get/get.dart';

class InjectionDependecy {
  static load() {
    //Providers
    Get.put<UserProvider>(UserProvider());
    Get.put<AuthProvider>(AuthProvider());
    Get.put<HouseProvider>(HouseProvider());
    Get.put<ReservationProvider>(ReservationProvider());

    //Local
    Get.put<StorageProvider>(StorageProvider());

    //Respositories
    Get.put<UserRepository>(UserRepository());
    Get.put<AuthRepository>(AuthRepository());
    Get.put<HouseRepository>(HouseRepository());
    Get.put<ReservationRepository>(ReservationRepository());

    //Local
    Get.put<StorageRepository>(StorageRepository());
  }
}
