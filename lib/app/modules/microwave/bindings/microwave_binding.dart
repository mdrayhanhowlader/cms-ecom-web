import 'package:get/get.dart';

import '../controllers/microwave_controller.dart';

class MicrowaveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MicrowaveController>(
      () => MicrowaveController(),
    );
  }
}
