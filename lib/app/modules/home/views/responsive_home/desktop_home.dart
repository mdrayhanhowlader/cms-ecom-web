import 'package:cmsecommerce/app/modules/common_appbar/views/common_appbar_view.dart';
import 'package:cmsecommerce/app/modules/common_appbar/views/shop/shop_nav.dart';
import 'package:cmsecommerce/app/modules/common_bottom_bar/views/common_bottom_bar_view.dart';
import 'package:cmsecommerce/app/modules/home/controllers/home_controller.dart';
import 'package:cmsecommerce/app/modules/home/views/home_widgets/home_categories.dart';
import 'package:cmsecommerce/app/modules/home/views/home_widgets/home_offers.dart';
import 'package:cmsecommerce/app/modules/home/views/home_widgets/home_slider.dart';
import 'package:cmsecommerce/app/modules/test/views/test_offer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DesktopHome extends GetView<HomeController> {
  const DesktopHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppbarView(),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            HomeSlider(),
            const SizedBox(
              height: 80,
            ),
            const HomeOffers(),
            // const SizedBox(
            //   height: 100,
            // ),
            // TestOffer(),
            const SizedBox(
              height: 100,
            ),
            const HomeCategories(),
            const SizedBox(
              height: 100,
            ),
            const CommonBottomBarView()
          ],
        ),
      ),
    );
  }
}
