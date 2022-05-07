import 'package:dio/dio.dart';
import 'package:g58_app_home_find/app/data/models/auth_model.dart';
import 'package:g58_app_home_find/app/data/models/house_model.dart';
import 'package:g58_app_home_find/app/data/models/user_model.dart';
import 'package:g58_app_home_find/app/data/repositories/auth_repository.dart';
import 'package:g58_app_home_find/app/data/repositories/house_repository.dart';
import 'package:g58_app_home_find/app/data/repositories/local/storage_repository.dart';
import 'package:g58_app_home_find/app/data/repositories/user_repository.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    _loadSession();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  //Instancias
  final _authRepository = Get.find<AuthRepository>();
  final _storageRepository = Get.find<StorageRepository>();
  final _userRepository = Get.find<UserRepository>();
  final _houseRepository = Get.find<HouseRepository>();

  AuthModel oAuthModel = AuthModel();
  UserModel ouserModel = UserModel();

  //Variables
  RxList<HouseModel> houses = RxList<HouseModel>([]);
  RxString name = RxString("");
  RxString address = RxString("");
  RxInt isSelectedIndex = RxInt(0);

  //Funciones
  selectedIndex(int index) {
    isSelectedIndex.value = index;
  }

  _loadSession() async {
    oAuthModel = await _storageRepository.readSession();
    _loadInformation();
    _loadHouses();
  }

  _loadHouses() async {
    try {
      houses.value = await _houseRepository.getHouses(
        token: oAuthModel.requestToken,
        page: "1",
      );
    } on DioError catch (e) {}
  }

  _loadInformation() async {
    try {
      ouserModel = await _userRepository.getInformation(
        token: oAuthModel.requestToken,
        idUser: oAuthModel.idUser,
      );
      //name.value = ouserModel.name + " " + ouserModel.lastname;
      name.value = "${ouserModel.name} ${ouserModel.lastname}";
      address.value = ouserModel.adress;
    } on DioError catch (e) {}
  }
}
