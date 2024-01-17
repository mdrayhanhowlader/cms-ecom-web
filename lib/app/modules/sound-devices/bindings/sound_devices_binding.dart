import 'package:get/get.dart';

import '../controllers/sound_devices_controller.dart';

class SoundDevicesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SoundDevicesController>(
      () => SoundDevicesController(),
    );
  }
}
