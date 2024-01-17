import 'package:get/get.dart';

import '../controllers/refrigerators_controller.dart';

class RefrigeratorsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RefrigeratorsController>(
      () => RefrigeratorsController(),
    );
  }
}
