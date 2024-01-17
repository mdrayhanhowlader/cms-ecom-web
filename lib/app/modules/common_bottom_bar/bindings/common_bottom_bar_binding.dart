import 'package:get/get.dart';

import '../controllers/common_bottom_bar_controller.dart';

class CommonBottomBarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CommonBottomBarController>(
      () => CommonBottomBarController(),
    );
  }
}
