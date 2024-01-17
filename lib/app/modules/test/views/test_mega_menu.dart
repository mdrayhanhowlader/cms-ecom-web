import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cmsecommerce/app/modules/common_appbar/views/shop/shop_nav.dart';
import 'package:cmsecommerce/app/modules/test/controllers/test_controller.dart';

class TestMegaMenu extends GetView<TestController> {
  const TestMegaMenu({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: Get.width,
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  // _buildMenuItem('Home'),
                  // _buildMenuItem('Shop'),
                  // Add other menu items here
                ],
              ),
              SizedBox(height: 20),
              // Other content or widgets
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Row(
                    children: [
                      _buildMenuItem('Home'),
                      _buildMenuItem('Shop'),
                      // Add other menu items here
                    ],
                  ),
                  Positioned(
                    child: Obx(() {
                      return controller.isHovering.value
                          ? _buildShopNavWidget()
                          : SizedBox.shrink();
                    }),
                  ),
                ],
              ),
              Text('hello bangladesh')
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuItem(String label) {
    return MouseRegion(
      onEnter: (_) {
        controller.updateHover(true);
      },
      onExit: (_) {
        controller.updateHover(true);
      },
      child: InkWell(
        onTap: () {
          controller.updateHover(!controller.isHovering.value);
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(label),
        ),
      ),
    );
  }

  Widget _buildShopNavWidget() {
    return MouseRegion(
      onExit: (_) {
        controller.updateHover(false);
      },
      child: ShopNav(), // Your ShopNav widget
    );
  }
}
