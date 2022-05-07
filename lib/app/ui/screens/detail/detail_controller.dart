import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:g58_app_home_find/app/core/theme/app_theme.dart';
import 'package:g58_app_home_find/app/core/utils/catch_exception.dart';
import 'package:g58_app_home_find/app/data/models/auth_model.dart';
import 'package:g58_app_home_find/app/data/models/house_model.dart';
import 'package:g58_app_home_find/app/data/models/reservation_model.dart';
import 'package:g58_app_home_find/app/data/repositories/house_repository.dart';
import 'package:g58_app_home_find/app/data/repositories/local/storage_repository.dart';
import 'package:g58_app_home_find/app/data/repositories/reservation_repository.dart';
import 'package:get/get.dart';

class DetailController extends GetxController {
  @override
  void onInit() {
    houseModel = Get.arguments as HouseModel;
    _loadSession();
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
  final _storageRepository = Get.find<StorageRepository>();
  final _reservationRepository = Get.find<ReservationRepository>();

  AuthModel oAuthModel = AuthModel();
  HouseModel houseModel = HouseModel();

  //Variables
  RxString name = RxString("");
  RxString address = RxString("");
  RxInt isSelectedIndex = RxInt(0);

  String _date = "";

  //Funciones

  onChangeDate(String value) => _date = value;

  _loadSession() async {
    oAuthModel = await _storageRepository.readSession();
  }

  save() async {
    try {
      final response = await _reservationRepository.reservation(
        token: oAuthModel.requestToken,
        reservationModel: ReservationModel(
          idUser: oAuthModel.idUser.toString(),
          idHouse: houseModel.idHouse.toString(),
          date: _date,
          price: houseModel.price.toString(),
        ),
      );
      Get.back();
      Get.snackbar(
        "Success",
        response,
        colorText: Colors.white,
        duration: const Duration(seconds: 4),
        backgroundColor: AppTheme.cyan,
      );
    } on DioError catch (e) {
      CatchException.show(exception: e);
    }
  }
}
