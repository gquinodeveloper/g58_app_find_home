import 'package:flutter/material.dart';
import 'package:g58_app_home_find/app/ui/screens/detail/detail_controller.dart';
import 'package:g58_app_home_find/app/ui/screens/detail/widgets/appbar_actions.dart';
import 'package:g58_app_home_find/app/ui/screens/detail/widgets/content.dart';
import 'package:g58_app_home_find/app/ui/screens/detail/widgets/footer.dart';
import 'package:g58_app_home_find/app/ui/screens/detail/widgets/header.dart';
import 'package:get/get.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DetailController>(
      builder: (_) => Scaffold(
        body: Stack(
          children: [
            Header(path: _.houseModel.photo ?? ""),
            AppBarActions(aviable: _.houseModel.aviable ?? 0),
            Content(house: _.houseModel),
            Footer(house: _.houseModel),
          ],
        ),
      ),
    );
  }
}
