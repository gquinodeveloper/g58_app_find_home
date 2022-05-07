import 'package:g58_app_home_find/app/data/models/user_model.dart';
import 'package:g58_app_home_find/app/data/providers/user_provider.dart';
import 'package:get/get.dart';

class UserRepository {
  final _apiProvider = Get.find<UserProvider>();

  Future<List<UserModel>> getUsers() => _apiProvider.getUsers();

  Future<String> insert(UserModel userModel) => _apiProvider.insert(userModel);

  Future<UserModel> getInformation({
    required String token,
    required int idUser,
  }) =>
      _apiProvider.getInformation(token: token, idUser: idUser);
}
