import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:g58_app_home_find/app/core/config/app_config.dart';
import 'package:g58_app_home_find/app/data/models/auth_model.dart';
import 'package:get/get.dart';

class StorageProvider {
  final _storage = Get.put(const FlutterSecureStorage());

  Future<void> writeSession(
    AuthModel authModel,
  ) async {
    await _storage.write(
      key: kKeySession,
      value: jsonEncode(authModel.toJson()),
    );
  }

  Future<AuthModel> readSession() async {
    String value = await _storage.read(key: kKeySession) ?? "";
    return AuthModel.fromJson(jsonDecode(value));
  }
}
