import 'package:cmsecommerce/app/modules/test/views/hover_card.dart';
import 'package:cmsecommerce/app/modules/test/views/test_mega_menu.dart';
import 'package:cmsecommerce/app/modules/test/views/test_menu_dropdown.dart';
import 'package:cmsecommerce/app/modules/test/views/test_offer.dart';
import 'package:cmsecommerce/app/modules/test/views/test_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/test_controller.dart';

class TestView extends GetView<TestController> {
  const TestView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Container(width: Get.width, child: TestMenuDropdown())],
      ),
      body: Center(
          child: SingleChildScrollView(
        child: Container(
          width: Get.width * 0.8,
          child: Column(
            children: [
              Row(
                children: [
                  // Expanded(
                  //   child: HoverCard(
                  //       product: Product(
                  //           title: 'hello title',
                  //           imageUrl:
                  //               '../../../../../assets/images/cms/categories/laptop.png',
                  //           price: 200)),
                  // ),
                  // Expanded(
                  //   child: HoverCard(
                  //       product: Product(
                  //           title: 'hello title',
                  //           imageUrl:
                  //               '../../../../../assets/images/cms/categories/laptop.png',
                  //           price: 200)),
                  // ),
                  // Expanded(
                  //   child: HoverCard(
                  //       product: Product(
                  //           title: 'hello title',
                  //           imageUrl:
                  //               '../../../../../assets/images/cms/categories/laptop.png',
                  //           price: 200)),
                  // ),
                  // Expanded(
                  //   child: HoverCard(
                  //       product: Product(
                  //           title: 'hello title',
                  //           imageUrl:
                  //               '../../../../../assets/images/cms/categories/laptop.png',
                  //           price: 200)),
                  // ),
                ],
              ),
              // Container(
              //   child: TestSlider(),
              // ),
              // Container(
              //   child: TestOffer(),
              // ),

              // Container(
              //   width: Get.width,
              //   height: Get.height,
              //   child: TestMegaMenu(),
              // ),
              // Container(
              //   width: 300,
              //   height: 400,
              //   child: TestSlider(),
              // )
              // Container(
              //   child: Text('Test position text'),
              // )
            ],
          ),
        ),
      )),
    );
  }
}
