import 'package:g58_app_home_find/app/data/models/auth_model.dart';
import 'package:g58_app_home_find/app/data/providers/auth_provider.dart';
import 'package:get/get.dart';

class AuthRepository {
  final _apiProvider = Get.find<AuthProvider>();
  Future<AuthModel> auth({
    required String email,
    required String password,
  }) =>
      _apiProvider.auth(email: email, password: password);
}
