import 'package:cmsecommerce/app/core/widgets/poppins_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';

import '../controllers/common_bottom_bar_controller.dart';

class CommonBottomBarView extends GetView<CommonBottomBarController> {
  const CommonBottomBarView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            child: Column(
      children: [
        Container(
          width: Get.width,
          height: 80,
          decoration: const BoxDecoration(color: Colors.black),
          // padding: const EdgeInsets.symmetric(vertical: 10),
          margin: const EdgeInsets.only(bottom: 80),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Image.asset(
                      '../../../../../assets/images/cms/footer/hours.png',
                      color: Colors.white,
                      height: 50,
                      width: 50,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    PoppinsText(
                      title: 'SERVICES',
                      size: 18,
                      weight: FontWeight.w600,
                      color: Colors.white,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      '../../../../../assets/images/cms/footer/wrench.png',
                      color: Colors.white,
                      width: 50,
                      height: 50,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    // FaIcon(
                    //   FontAwesomeIcons.wrench,
                    //   color: Colors.white,
                    // ),
                    PoppinsText(
                      title: 'FREE\nINSTALLATION',
                      size: 18,
                      weight: FontWeight.w600,
                      color: Colors.white,
                    )
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      '../../../../../assets/images/cms/footer/delivery.png',
                      color: Colors.white,
                      height: 50,
                      width: 50,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    PoppinsText(
                      title: 'FREE\nDELEVERY',
                      size: 18,
                      weight: FontWeight.w600,
                      color: Colors.white,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PoppinsText(
                  title: 'ADDRESS',
                  size: 18,
                  weight: FontWeight.bold,
                ),
                PoppinsText(
                    title:
                        'No 5, 1, Jalan USJ 1/1a, \nRegalia Business \nCenter, 47620 \nSelangor, \nMalaysia')
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PoppinsText(
                  title: 'CONTACT',
                  size: 18,
                  weight: FontWeight.bold,
                ),
                InkWell(
                  child: PoppinsText(title: 'Support@awfatech.com'),
                ),
                InkWell(
                  child: PoppinsText(title: '(+603) 8023 423'),
                )
              ],
            ),
            Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PoppinsText(
                  title: 'SUPPORT',
                  size: 18,
                  weight: FontWeight.bold,
                ),
                InkWell(
                  child: PoppinsText(
                    title: 'FAQ & Guiline',
                    size: 14,
                    weight: FontWeight.normal,
                  ),
                )
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 100,
        ),
        Container(
          child: PoppinsText(
            title: 'SAMSUNG',
            size: 24,
            weight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              child: IconButton(
                  onPressed: () {},
                  icon: const FaIcon(
                    FontAwesomeIcons.instagram,
                    color: Colors.red,
                  )),
            ),
            InkWell(
              child: IconButton(
                  onPressed: () {},
                  icon: const FaIcon(
                    FontAwesomeIcons.xTwitter,
                    color: Colors.black,
                  )),
            ),
            InkWell(
              child: IconButton(
                  onPressed: () {},
                  icon: const FaIcon(
                    FontAwesomeIcons.youtube,
                    color: Colors.red,
                  )),
            ),
            InkWell(
              child: IconButton(
                  onPressed: () {},
                  icon: const FaIcon(
                    FontAwesomeIcons.linkedin,
                    color: Colors.blue,
                  )),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          child: const Text(
              '© 2023 DEVELOPMENT/UPGRADING CMS MODULE Copyright. Powered by: AWFATECH'),
        ),
        const SizedBox(
          height: 10,
        )
      ],
    )));
  }
}
