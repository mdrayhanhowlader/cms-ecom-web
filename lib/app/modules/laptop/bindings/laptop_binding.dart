import 'package:get/get.dart';

import '../controllers/laptop_controller.dart';

class LaptopBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LaptopController>(
      () => LaptopController(),
    );
  }
}
