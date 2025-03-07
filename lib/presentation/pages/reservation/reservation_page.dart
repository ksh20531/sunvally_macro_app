import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sunvally_macro_app/presentation/controllers/reservation_controller.dart';
import 'package:sunvally_macro_app/presentation/pages/reservation/widgets/reservation_page_calendar.dart';
import 'package:sunvally_macro_app/presentation/pages/reservation/widgets/reservation_page_field.dart';
import 'package:sunvally_macro_app/presentation/pages/reservation/widgets/reservation_page_reserve_button.dart';
import 'package:sunvally_macro_app/presentation/pages/reservation/widgets/reservation_page_timer.dart';

class ReservationPage extends StatelessWidget {
  /// 예약 페이지
  const ReservationPage({super.key});

  @override
  Widget build(BuildContext context) {
    print('ReservationPage');
    final controller = Get.put(ReservationController());

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
          child: Column(
            children: [
              ReservationPageField(controller: controller), // 필드 선택
              SizedBox(height: 16),
              ReservationPageCalendar(controller: controller), // 날짜 선택
              SizedBox(height: 16),
              ReservationPageTimer(controller: controller), // 시간 선택
              Spacer(),
              ReservationPageReserveButton(controller: controller), // 예약 버튼
            ],
          ),
        ),
      ),
    );
  }
}
