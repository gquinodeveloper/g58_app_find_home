import 'package:g58_app_home_find/app/data/models/auth_model.dart';
import 'package:g58_app_home_find/app/data/providers/local/storage_provider.dart';
import 'package:get/get.dart';

class StorageRepository {
  final _apiProvider = Get.find<StorageProvider>();

  Future<void> writeSession(
    AuthModel authModel,
  ) =>
      _apiProvider.writeSession(authModel);

  Future<AuthModel> readSession() => _apiProvider.readSession();
}
