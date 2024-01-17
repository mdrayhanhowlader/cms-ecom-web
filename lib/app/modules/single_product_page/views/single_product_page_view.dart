import 'package:carousel_slider/carousel_slider.dart';
import 'package:cmsecommerce/app/core/widgets/common_button.dart';
import 'package:cmsecommerce/app/core/widgets/poppins_text.dart';
import 'package:cmsecommerce/app/modules/common_appbar/views/common_appbar_view.dart';
import 'package:cmsecommerce/app/modules/common_appbar/views/shop/shop_nav.dart';
import 'package:cmsecommerce/app/modules/single_product_page/views/widgets/customer_details.dart';
import 'package:cmsecommerce/app/modules/single_product_page/views/widgets/installment_popup.dart';
import 'package:cmsecommerce/app/modules/single_product_page/views/widgets/product_details.dart';
import 'package:cmsecommerce/app/modules/single_product_page/views/widgets/rating_bar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../controllers/single_product_page_controller.dart';

class SingleProductPageView extends GetView<SingleProductPageController> {
  SingleProductPageView({
    Key? key,
  }) : super(key: key);

  final SingleProductPageController controller =
      Get.put(SingleProductPageController());

  final sliderController = CarouselController();

  final urlImages = [
    'assets/images/cms/categories/buds.png',
    'assets/images/cms/categories/ac.png',
    'assets/images/cms/categories/tv.png',
    'assets/images/cms/categories/laptop.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppbarView(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: Get.width * 0.5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            CarouselSlider.builder(
                                carouselController: sliderController,
                                itemCount: urlImages.length,
                                itemBuilder: (context, index, realIndex) {
                                  final urlImage = urlImages[index];
                                  return buildImage(urlImage, index);
                                },
                                options: CarouselOptions(
                                  initialPage: 0,
                                  height: 400,
                                  viewportFraction: 1,
                                  enlargeCenterPage: true,
                                  enlargeStrategy:
                                      CenterPageEnlargeStrategy.zoom,
                                  // autoPlay: true,
                                  enableInfiniteScroll: false,
                                  pageSnapping: false,
                                  // reverse: true,
                                  autoPlayInterval: const Duration(seconds: 3),
                                  onPageChanged: (index, reason) =>
                                      controller.activeIndex.value = index,
                                )),
                            const SizedBox(
                              height: 16,
                            ),
                            Positioned(
                                top: 0,
                                right: 0,
                                left: 0,
                                bottom: 50,
                                child: buildButtons())
                          ],
                        ),
                        buildIndicator(),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 20),
                    width: Get.width * 0.5,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            PoppinsText(
                              title: 'SAMSUNG BUDS BCM 43015',
                              weight: FontWeight.w500,
                              size: 28,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            PoppinsText(
                              title: 'RM 1600',
                              size: 16,
                              weight: FontWeight.w500,
                              color: const Color(0XFFB83EAC),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.only(bottom: 8),
                          width: Get.width,
                          decoration: const BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      width: 2,
                                      style: BorderStyle.solid,
                                      color: Color(0XFFE4E4E4)))),
                          child: Row(
                            children: [
                              PoppinsText(
                                title: 'From MYR160 / month',
                                size: 16,
                                weight: FontWeight.w500,
                                color: const Color(0XFFB83EAC),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Get.dialog(InstallmentPopup());
                                },
                                child: const Icon(
                                  Icons.info_rounded,
                                  color: Color.fromARGB(255, 7, 10, 212),
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.only(bottom: 8),
                          width: Get.width,
                          decoration: const BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      width: 2,
                                      style: BorderStyle.solid,
                                      color: Color(0XFFE4E4E4)))),
                          child: const Text(
                            'In Stock',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      width: 1,
                                      style: BorderStyle.solid,
                                      color: Colors.grey.shade400))),
                          child: Row(
                            children: [
                              RatingBarWithText(
                                rating:
                                    4.5, // Set your dynamic rating value here
                                fillColor: const Color(
                                    0XFFB83EAC), // Set your dynamic color here
                                reviewsText:
                                    '120 reviews', // Set your reviews text here
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Row(
                            children: [
                              PoppinsText(
                                title: 'Specification',
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            PoppinsText(
                              title:
                                  'Dimensions: 16.5 x 27.3 x 14.9mmWeight: 5.6g',
                              size: 16,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            PoppinsText(
                              title: 'Technology:',
                              size: 16,
                              weight: FontWeight.w500,
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.only(left: 15),
                              alignment: Alignment.topLeft,
                              child: PoppinsText(
                                title: '• Active Noise Cancellation',
                                size: 16,
                                weight: FontWeight.w500,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(left: 15),
                              child: PoppinsText(
                                title: '• Bixby voice wake-up',
                                size: 16,
                                weight: FontWeight.w500,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(left: 15),
                              child: PoppinsText(
                                title:
                                    '• *Bixby service availability may vary by country, carrier, and device.',
                                size: 16,
                                weight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Container(
                          child: Row(
                            children: [
                              CommonButton(
                                title: 'Buy Now',
                                callBack: () {},
                                buttonColor: const Color(0XFFB83EAC),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            const ProductDetails(),
            const SizedBox(
              height: 50,
            ),
            CustomerDetails(),
            const SizedBox(
              height: 200,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildImage(String urlImae, int index) => Container(
        // margin: EdgeInsets.symmetric(horizontal: 44),
        // width: Get.width,

        color: Colors.transparent,
        child: Image.asset(
          urlImae,
          fit: BoxFit.cover,
        ),
      );
  Widget buildIndicator() => Obx(() {
        return AnimatedSmoothIndicator(
          activeIndex: controller.activeIndex.value,
          count: urlImages.length,
          effect: const JumpingDotEffect(
            dotColor: Color(0XFF4A3636),
            activeDotColor: Color(0XFFB83EAC),
          ),
          // effect: ColorTransitionEffect(
          //   dotColor: Color(0XFF4A3636),
          //   activeDotColor: Color(0XFFB83EAC),
          //   paintStyle: PaintingStyle.fill,
          // ),
        );
      });

  Widget buildButtons({bool stretch = false}) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only()),
                backgroundColor: Colors.transparent,
                foregroundColor: const Color(0XFFB83EAC),
                // padding:
                //     const EdgeInsets.symmetric(horizontal: 32, vertical: 10)
              ),
              onPressed: previous,
              child: const Icon(
                Icons.arrow_back,
                size: 32,
              )),
          stretch
              ? Spacer()
              : const SizedBox(
                  width: 32,
                ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only()),
                backgroundColor: Colors.transparent,
                foregroundColor: const Color(0XFFB83EAC),
                // padding:
                //     const EdgeInsets.symmetric(horizontal: 32, vertical: 10)
              ),
              onPressed: next,
              child: const Icon(
                Icons.arrow_forward,
                size: 32,
              ))
        ],
      );

  void next() =>
      sliderController.nextPage(duration: const Duration(milliseconds: 500));

  void previous() => sliderController.previousPage(
      duration: const Duration(milliseconds: 500));
}
