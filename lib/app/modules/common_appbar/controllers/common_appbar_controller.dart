import 'package:get/get.dart';

class CommonAppbarController extends GetxController {
  RxBool isShopOpen = false.obs;
  RxBool isShopOverlayOpen = false.obs;
  //TODO: Implement CommonAppbarController
  RxBool isHomeNavHovered = false.obs;
  RxBool isShopNavHovered = false.obs;
  RxBool isMobileNavHovered = false.obs;
  RxBool isTvNavHovered = false.obs;
  RxBool isComputingNavHovered = false.obs;

  RxBool isHovered = false.obs;

  void openShopNav() {
    isShopOverlayOpen.toggle();
    isShopNavHovered.value = false;
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
