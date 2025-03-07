import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:sunvally_macro_app/presentation/controllers/reservation_controller.dart';

class ReservationPageTimer extends StatelessWidget {
  /// 시간 선택
  const ReservationPageTimer({super.key, required this.controller});
  final ReservationController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Obx(
        () => CupertinoDatePicker(
          mode: CupertinoDatePickerMode.time,
          initialDateTime: controller.selectedDateTime.value,
          onDateTimeChanged: controller.selectedDateTime.call,
        ),
      ),
    );
  }
}
