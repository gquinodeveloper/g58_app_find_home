import 'package:dio/dio.dart';
import 'package:g58_app_home_find/app/core/config/app_config.dart';
import 'package:g58_app_home_find/app/data/models/auth_model.dart';

class AuthProvider {
  final dio = Dio();

  Future<AuthModel> auth({
    required String email,
    required String password,
  }) async {
    final response = await dio.post(
      "$kBaseUrl/api/user/auth",
      data: {
        "email": email,
        "password": password,
      },
    );

    return AuthModel.fromJson(response.data);
  }
}
