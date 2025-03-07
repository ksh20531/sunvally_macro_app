import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sunvally_macro_app/presentation/controllers/main_controller.dart';
import 'package:sunvally_macro_app/presentation/pages/info/info_page.dart';
import 'package:sunvally_macro_app/presentation/pages/main/widgets/custom_bottom_navigation.dart';
import 'package:sunvally_macro_app/presentation/pages/my_reservstion/my_reservation_page.dart';
import 'package:sunvally_macro_app/presentation/pages/reservation/reservation_page.dart';
import 'package:sunvally_macro_app/presentation/pages/setting/setting_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final pages = [
      ReservationPage(),
      MyReservationPage(),
      InfoPage(),
      SettingPage(),
    ];

    return GetBuilder<MainController>(
      init: MainController(),
      builder: (controller) {
        return Scaffold(
          body: IndexedStack(index: controller.currentIndex, children: pages),
          bottomNavigationBar: CustomBottomNavigation(
            currentIndex: controller.currentIndex,
            onTap: controller.changePage,
          ),
        );
      },
    );
  }
}
