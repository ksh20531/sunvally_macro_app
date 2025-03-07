import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sunvally_macro_app/presentation/controllers/reservation_controller.dart';

class ReservationPageField extends StatelessWidget {
  /// 필드 선택
  const ReservationPageField({super.key, required this.controller});
  final ReservationController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Obx(
        () => DropdownButtonHideUnderline(
          child: DropdownButton(
            isExpanded: true,
            items:
                controller.fields
                    .map(
                      (field) =>
                          DropdownMenuItem(value: field, child: Text(field)),
                    )
                    .toList(),
            value:
                controller.selectedField.value.isEmpty
                    ? null
                    : controller.selectedField.value,
            onChanged: controller.changeField,
            hint: const Text("골프장을 선택해주세요"),
          ),
        ),
      ),
    );
  }
}
