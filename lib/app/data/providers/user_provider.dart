import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:g58_app_home_find/app/core/config/app_config.dart';
import 'package:g58_app_home_find/app/data/models/user_model.dart';

class UserProvider {
  Future<List<UserModel>> getUsers() async {
    final dio = Dio();
    final response = await dio.get('https://reqres.in/api/users?page=1');

    return (response.data["data"] as List)
        .map((json) => UserModel.fromJson(json))
        .toList();
  }

  Future<String> insert(UserModel userModel) async {
    final dio = Dio();
    final response = await dio.post(
      "$kBaseUrl/api/user/register",
      data: json.encode(userModel.toJson()),
    );

    return response.data["message"];
  }

  Future<UserModel> getInformation({
    required String token,
    required int idUser,
  }) async {
    final dio = Dio();
    final response = await dio.get(
      "$kBaseUrl/api/user/information/$idUser",
      options: Options(
        headers: {
          "auth": token,
        },
      ),
    );

    return (response.data["information"] as List)
        .map((json) => UserModel.fromJson(json))
        .toList()[0];
  }
}
