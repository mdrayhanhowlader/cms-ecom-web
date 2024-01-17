import 'package:get/get.dart';

import '../controllers/air_purifiers_controller.dart';

class AirPurifiersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AirPurifiersController>(
      () => AirPurifiersController(),
    );
  }
}
