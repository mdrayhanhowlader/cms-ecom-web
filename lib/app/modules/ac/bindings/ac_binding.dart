import 'package:get/get.dart';

import '../controllers/ac_controller.dart';

class AcBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AcController>(
      () => AcController(),
    );
  }
}
