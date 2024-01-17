import 'package:get/get.dart';

import '../controllers/mobile_tab_controller.dart';

class MobileTabBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MobileTabController>(
      () => MobileTabController(),
    );
  }
}
