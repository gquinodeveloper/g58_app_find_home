import 'package:dio/dio.dart';
import 'package:g58_app_home_find/app/core/config/app_config.dart';
import 'package:g58_app_home_find/app/data/models/house_model.dart';

class HouseProvider {
  Future<List<HouseModel>> getHouses({
    required String token,
    required String page,
  }) async {
    final dio = Dio();
    final response = await dio.get(
      "$kBaseUrl/api/house/houses/$page/6",
      options: Options(
        headers: {
          "auth": token,
        },
      ),
    );

    return (response.data["result"] as List)
        .map((json) => HouseModel.fromJson(json))
        .toList();
  }
}
