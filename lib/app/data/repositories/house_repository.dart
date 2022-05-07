import 'package:get/get.dart';
import 'package:g58_app_home_find/app/data/models/house_model.dart';
import 'package:g58_app_home_find/app/data/providers/house_provider.dart';

class HouseRepository {
  final _apiProvider = Get.find<HouseProvider>();

  Future<List<HouseModel>> getHouses({
    required String token,
    required String page,
  }) =>
      _apiProvider.getHouses(token: token, page: page);
}
