import 'package:dio/dio.dart';
import 'package:g58_app_home_find/app/ui/global_widgets/load_spinner.dart';
import 'package:g58_app_home_find/app/ui/global_widgets/snackbar.dart';

class CatchException {
  static void show({
    required DioError exception,
    bool isPositionTop = false,
  }) {
    LoadSpinner.hide();
    Snackbar.show(
      title: exception.error ?? "Don't type status code",
      message: exception.response?.data.toString() ?? exception.message,
      typeMessage: 1,
      isPositionTop: isPositionTop,
    );
  }
}
