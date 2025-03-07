import 'package:get/get.dart';
import 'package:sunvally_macro_app/core/constants/golf_fields.dart';

/// 예약 페이지 컨트롤러
class ReservationController extends GetxController {
  final List<String> fields = GolfFields.fields; // 필드 리스트
  final selectedField = ''.obs; // 선택한 필드
  final selectedDateTime = DateTime.now().obs; // 선택한 시간

  /// 필드 선택
  void changeField(String? value) {
    if (value != null) {
      selectedField.value = value;
    }
  }

  /// 날짜 변경
  void changeDate(DateTime date) {
    selectedDateTime.value = DateTime(
      date.year,
      date.month,
      date.day,
      selectedDateTime.value.hour,
      selectedDateTime.value.minute,
    );
  }

  /// 시간 변경
  void changeTime(DateTime time) {
    selectedDateTime.value = DateTime(
      selectedDateTime.value.year,
      selectedDateTime.value.month,
      selectedDateTime.value.day,
      time.hour,
      time.minute,
    );
  }

  /// 예약
  void makeReservation() {
    if (selectedField.value.isEmpty) {
      Get.snackbar("오류", "골프장을 선택해주세요.");
      return;
    }

    if (selectedDateTime.value.isBefore(DateTime.now())) {
      Get.snackbar("오류", "과거 시간은 예약할 수 없습니다.");
      return;
    }
  }
}
