import 'package:get/get.dart';

import '../controllers/buds_controller.dart';

class BudsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BudsController>(
      () => BudsController(),
    );
  }
}
