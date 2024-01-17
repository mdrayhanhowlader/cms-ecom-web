import 'package:get/get.dart';

import '../controllers/single_product_page_controller.dart';

class SingleProductPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SingleProductPageController>(
      () => SingleProductPageController(),
    );
  }
}
