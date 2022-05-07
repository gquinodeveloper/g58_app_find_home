import 'package:g58_app_home_find/app/data/models/reservation_model.dart';
import 'package:g58_app_home_find/app/data/providers/reservation_provider.dart';
import 'package:get/get.dart';

class ReservationRepository {
  final _apiProvider = Get.find<ReservationProvider>();

  Future<String> reservation({
    required String token,
    required ReservationModel reservationModel,
  }) =>
      _apiProvider.reservation(
        token: token,
        reservationModel: reservationModel,
      );
}
