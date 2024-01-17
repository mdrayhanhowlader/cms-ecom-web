import 'package:cmsecommerce/app/core/widgets/poppins_text.dart';
import 'package:cmsecommerce/app/modules/ac/views/ac_view.dart';
import 'package:cmsecommerce/app/modules/air-purifiers/views/air_purifiers_view.dart';
import 'package:cmsecommerce/app/modules/buds/views/buds_view.dart';
import 'package:cmsecommerce/app/modules/home/controllers/home_controller.dart';
import 'package:cmsecommerce/app/modules/laptop/views/laptop_view.dart';
import 'package:cmsecommerce/app/modules/laundry/views/laundry_view.dart';
import 'package:cmsecommerce/app/modules/microwave/views/microwave_view.dart';
import 'package:cmsecommerce/app/modules/mobile-tab/views/mobile_tab_view.dart';
import 'package:cmsecommerce/app/modules/monitor/views/monitor_view.dart';
import 'package:cmsecommerce/app/modules/refrigerators/views/refrigerators_view.dart';
import 'package:cmsecommerce/app/modules/sound-devices/views/sound_devices_view.dart';
import 'package:cmsecommerce/app/modules/tv/views/tv_view.dart';
import 'package:cmsecommerce/app/modules/watch/views/watch_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeCategories extends GetView<HomeController> {
  const HomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController homeController = Get.put(HomeController());
    return Container(
      width: Get.width * 0.9,
      // decoration: BoxDecoration(color: Colors.red),
      child: Column(
        children: [
          PoppinsText(
            title: 'OUR PRODUCT',
            size: 28,
            weight: FontWeight.bold,
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(MobileTabView());
                    },
                    focusColor: Colors.grey,
                    child: Card(
                      color: Colors.white,
                      elevation: 4.0,
                      clipBehavior: Clip.antiAlias,
                      shadowColor: Colors.white,
                      child: Container(
                          padding: EdgeInsets.all(40),
                          child: Image.asset(
                            '../../../../../../assets/images/cms/categories/mobile-tab.png',
                            width: Get.width * 0.2,
                            height: 160,
                            fit: BoxFit.cover,
                          )),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  PoppinsText(
                    title: 'Mobile & Tab',
                    size: 16,
                    weight: FontWeight.w400,
                    color: Colors.black,
                  )
                ],
              ),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(BudsView());
                    },
                    child: Card(
                      color: Colors.white,
                      elevation: 4.0,
                      clipBehavior: Clip.antiAlias,
                      shadowColor: Colors.white,
                      child: Container(
                        padding: EdgeInsets.all(40),
                        child: Image.asset(
                          '../../../../../../assets/images/cms/categories/buds.png',
                          width: Get.width * 0.2,
                          height: 160,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  PoppinsText(
                    title: 'Buds',
                    size: 16,
                    weight: FontWeight.w400,
                    color: Colors.black,
                  )
                ],
              ),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(WatchView());
                    },
                    child: Card(
                      color: Colors.white,
                      elevation: 4.0,
                      clipBehavior: Clip.antiAlias,
                      shadowColor: Colors.white,
                      child: Container(
                        padding: EdgeInsets.all(40),
                        child: Image.asset(
                          '../../../../../../assets/images/cms/categories/watch.png',
                          width: Get.width * 0.2,
                          height: 160,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  PoppinsText(
                    title: 'Watch',
                    size: 16,
                    weight: FontWeight.w400,
                    color: Colors.black,
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(TvView());
                    },
                    child: Card(
                      color: Colors.white,
                      elevation: 4.0,
                      clipBehavior: Clip.antiAlias,
                      shadowColor: Colors.white,
                      child: Container(
                          padding: EdgeInsets.all(40),
                          child: Image.asset(
                            '../../../../../../assets/images/cms/categories/tv.png',
                            width: Get.width * 0.2,
                            height: 160,
                            fit: BoxFit.cover,
                          )),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  PoppinsText(
                    title: 'TV',
                    size: 16,
                    weight: FontWeight.w400,
                    color: Colors.black,
                  )
                ],
              ),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(SoundDevicesView());
                    },
                    child: Card(
                      color: Colors.white,
                      elevation: 4.0,
                      clipBehavior: Clip.antiAlias,
                      shadowColor: Colors.white,
                      child: Image.asset(
                        '../../../../../../assets/images/cms/categories/sound-devices.png',
                        width: Get.width * 0.25,
                        height: 250,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  PoppinsText(
                    title: 'Sound Devices',
                    size: 16,
                    weight: FontWeight.w400,
                    color: Colors.black,
                  )
                ],
              ),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(MonitorView());
                    },
                    child: Card(
                      color: Colors.white,
                      elevation: 4.0,
                      clipBehavior: Clip.antiAlias,
                      shadowColor: Colors.white,
                      child: Image.asset(
                        '../../../../../../assets/images/cms/categories/monitor.png',
                        width: Get.width * 0.25,
                        height: 250,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  PoppinsText(
                    title: 'Monitor',
                    size: 16,
                    weight: FontWeight.w400,
                    color: Colors.black,
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(LaptopView());
                    },
                    child: Card(
                      color: Colors.white,
                      elevation: 4.0,
                      clipBehavior: Clip.antiAlias,
                      shadowColor: Colors.white,
                      child: Container(
                          // padding: EdgeInsets.all(40),
                          child: Image.asset(
                        '../../../../../../assets/images/cms/categories/laptop.png',
                        width: Get.width * 0.25,
                        height: 250,
                        fit: BoxFit.cover,
                      )),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  PoppinsText(
                    title: 'Laptop',
                    size: 16,
                    weight: FontWeight.w400,
                    color: Colors.black,
                  )
                ],
              ),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(AcView());
                    },
                    child: Card(
                      color: Colors.white,
                      elevation: 4.0,
                      clipBehavior: Clip.antiAlias,
                      shadowColor: Colors.white,
                      child: Image.asset(
                        '../../../../../../assets/images/cms/categories/ac.png',
                        width: Get.width * 0.25,
                        height: 250,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  PoppinsText(
                    title: 'AC',
                    size: 16,
                    weight: FontWeight.w400,
                    color: Colors.black,
                  )
                ],
              ),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(AirPurifiersView());
                    },
                    child: Card(
                      color: Colors.white,
                      elevation: 4.0,
                      clipBehavior: Clip.antiAlias,
                      shadowColor: Colors.white,
                      child: Image.asset(
                        '../../../../../../assets/images/cms/categories/purifers.png',
                        width: Get.width * 0.25,
                        height: 250,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  PoppinsText(
                    title: 'Air Purifiers',
                    size: 16,
                    weight: FontWeight.w400,
                    color: Colors.black,
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(RefrigeratorsView());
                    },
                    child: Card(
                      color: Colors.white,
                      elevation: 4.0,
                      clipBehavior: Clip.antiAlias,
                      shadowColor: Colors.white,
                      child: Container(
                          // padding: EdgeInsets.all(40),
                          child: Image.asset(
                        '../../../../../../assets/images/cms/categories/refrigerator.png',
                        width: Get.width * 0.25,
                        height: 250,
                        fit: BoxFit.fitHeight,
                      )),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  PoppinsText(
                    title: 'Refrigerators',
                    size: 16,
                    weight: FontWeight.w400,
                    color: Colors.black,
                  )
                ],
              ),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(MicrowaveView());
                    },
                    child: Card(
                      color: Colors.white,
                      elevation: 4.0,
                      clipBehavior: Clip.antiAlias,
                      shadowColor: Colors.white,
                      child: Image.asset(
                        '../../../../../../assets/images/cms/categories/microwave.png',
                        width: Get.width * 0.25,
                        height: 250,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  PoppinsText(
                    title: 'Microwave',
                    size: 16,
                    weight: FontWeight.w400,
                    color: Colors.black,
                  )
                ],
              ),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(LaundryView());
                    },
                    child: Card(
                      color: Colors.white,
                      elevation: 4.0,
                      clipBehavior: Clip.antiAlias,
                      shadowColor: Colors.white,
                      child: Image.asset(
                        '../../../../../../assets/images/cms/categories/laundry.png',
                        width: Get.width * 0.25,
                        height: 250,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  PoppinsText(
                    title: 'Laundry',
                    size: 16,
                    weight: FontWeight.w400,
                    color: Colors.black,
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
