import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sunvally_macro_app/presentation/controllers/reservation_controller.dart';
import 'package:table_calendar/table_calendar.dart';

class ReservationPageCalendar extends StatelessWidget {
  /// 날짜 선택
  const ReservationPageCalendar({super.key, required this.controller});
  final ReservationController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => TableCalendar(
              firstDay: DateTime.now().subtract(const Duration(days: 30)),
              lastDay: DateTime.now().add(const Duration(days: 30)),
              focusedDay: controller.selectedDateTime.value,
              selectedDayPredicate:
                  (day) => isSameDay(controller.selectedDateTime.value, day),
              onDaySelected: (selectedDay, focusedDay) {
                // controller.selectedDate.value = selectedDay;
                controller.changeDate(selectedDay);
              },
            ),
          ),
        ],
      ),
    );
  }
}
