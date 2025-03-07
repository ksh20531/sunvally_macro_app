import 'package:get/get.dart';

/// 메인 페이지 컨트롤러
class MainController extends GetxController {
  int currentIndex = 0;

  /// 페이지 전환
  void changePage(int index) {
    currentIndex = index;
    update();
  }
}
