import 'package:dio/dio.dart';
import 'package:g58_app_home_find/app/data/models/user_model.dart';

class UserProvider {
  Future<List<UserModel>> getUsers() async {
    final dio = Dio();
    final response = await dio.get('https://reqres.in/api/users?page=1');

    return (response.data["data"] as List)
        .map((json) => UserModel.fromJson(json))
        .toList();
  }
}
