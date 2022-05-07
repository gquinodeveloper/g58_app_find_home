import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:g58_app_home_find/app/core/config/app_config.dart';
import 'package:g58_app_home_find/app/data/models/reservation_model.dart';

class ReservationProvider {
  Future<String> reservation({
    required String token,
    required ReservationModel reservationModel,
  }) async {
    final dio = Dio();
    final response = await dio.post(
      "$kBaseUrl/api/reservation/register",
      options: Options(
        headers: {
          "auth": token,
        },
      ),
      data: json.encode(reservationModel.toJson()),
    );

    return response.data["message"];
  }
}
