import 'package:cmsecommerce/app/core/widgets/poppins_text.dart';
import 'package:cmsecommerce/app/modules/common_appbar/controllers/common_appbar_controller.dart';
import 'package:cmsecommerce/app/modules/common_appbar/views/shop/shop_nav.dart';
import 'package:cmsecommerce/app/modules/home/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommonAppbarView extends GetView<CommonAppbarController>
    implements PreferredSizeWidget {
  const CommonAppbarView({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final CommonAppbarController commonAppbarController =
        Get.put(CommonAppbarController());

    List<Widget> buildAppBarActions() {
      return [
        _buildAppBarItem('Home', commonAppbarController.isHomeNavHovered,
            () => Get.to(HomeView())),
        _buildAppBarItem('Shop', commonAppbarController.isShopNavHovered, () {
          Get.dialog(ShopNav());
          commonAppbarController.isShopOpen.toggle();
          commonAppbarController.isShopNavHovered.value = false;
        }),
        _buildAppBarItem('Mobile', commonAppbarController.isMobileNavHovered,
            () => {}), // Replace this with the actual action for Mobile
        _buildAppBarItem('TV & AV', commonAppbarController.isTvNavHovered,
            () => {}), // Replace this with the actual action for TV & AV
        _buildAppBarItem(
            'Computing',
            commonAppbarController.isComputingNavHovered,
            () => {}), // Replace this with the actual action for Computing
      ];
    }

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: preferredSize,
        child: AppBar(
          centerTitle: true,
          leading: Container(
            padding: EdgeInsets.only(),
            alignment: Alignment.center,
            child: GestureDetector(
              onTap: () {
                Get.to(HomeView());
              },
              child: Title(
                color: Colors.black,
                child: PoppinsText(
                  title: 'SAMSUNG',
                  color: Colors.black,
                  size: 32,
                  weight: FontWeight.bold,
                ),
              ),
            ),
          ),
          leadingWidth: Get.width * 0.2,
          title: Container(
            width: Get.width * 0.5,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: buildAppBarActions(),
            ),
          ),
          actions: [
            SizedBox(
              width: Get.width * 0.2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _buildIconButton(() {}, Icons.search_outlined),
                  _buildIconButton(() {}, Icons.shopping_cart),
                  _buildIconButton(() {}, Icons.person),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildAppBarItem(String label, RxBool hovered, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      onHover: (value) {
        hovered.value = value;
      },
      borderRadius: BorderRadius.circular(30),
      hoverColor: Colors.black,
      splashColor: Colors.grey,
      radius: 70,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Obx(() {
          return PoppinsText(
            title: label,
            size: 18,
            weight: FontWeight.w400,
            color: hovered.value ? Colors.white : Colors.black,
          );
        }),
      ),
    );
  }

  Widget _buildIconButton(VoidCallback onPressed, IconData icon) {
    return InkWell(
      onTap: onPressed,
      child: IconButton(
        onPressed: () {},
        icon: Icon(icon),
      ),
    );
  }
}
