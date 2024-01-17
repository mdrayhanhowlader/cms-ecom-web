import 'package:cmsecommerce/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeSubMenu extends GetView<HomeController> {
  const HomeSubMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.find<HomeController>();

    return SizedBox(
      width: Get.width * 0.5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildSubMenu('All Offers', controller),
          _buildSubMenu('Mobile', controller),
          _buildSubMenu('TV', controller),
          _buildSubMenu('AC', controller),
          _buildSubMenu('Monitor', controller),
        ],
      ),
    );
  }

  Widget _buildSubMenu(String title, HomeController controller) {
    return InkWell(
      focusColor: Colors.white,
      highlightColor: Colors.white,
      borderRadius: BorderRadius.circular(5),
      onTap: () {
        controller.selectedMenu.value = title; // Update selected menu
        controller.updateHoveredIndex(-1); // Reset hovered index
      },
      child: Obx(() {
        final isSelected = controller.selectedMenu.value == title;
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 6),
          decoration: BoxDecoration(
            border: isSelected
                ? Border(bottom: BorderSide(width: 1, color: Colors.black))
                : null,
          ),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: isSelected ? Colors.black : Colors.grey,
            ),
          ),
        );
      }),
    );
  }
}
