import 'package:flutter/material.dart';
import 'package:sunvally_macro_app/presentation/controllers/reservation_controller.dart';

class ReservationPageReserveButton extends StatelessWidget {
  /// 예약 버튼
  const ReservationPageReserveButton({super.key, required this.controller});
  final ReservationController controller;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        controller.makeReservation();
      },
      child: Text('예약하기'),
    );
  }
}
