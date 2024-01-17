import 'package:cmsecommerce/app/core/widgets/poppins_text.dart';
import 'package:cmsecommerce/app/modules/single_product_page/controllers/single_product_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetails extends GetView<SingleProductPageController> {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.9,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 5),
            alignment: Alignment.topLeft,
            child: PoppinsText(
              title: 'Customer Details',
              size: 18,
              weight: FontWeight.w500,
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: const Color(0XFFE4E4E4),
                borderRadius: BorderRadius.circular(3)),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(
                      bottom: 5, top: 20, right: 10, left: 10),
                  child: Row(
                    children: [
                      PoppinsText(
                        title: 'Cart',
                        size: 18,
                        weight: FontWeight.w300,
                      )
                    ],
                  ),
                ),
                Container(
                  width: Get.width,
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              width: 1,
                              style: BorderStyle.solid,
                              color: Color(0XFFC3C3C3)))),
                ),
                Container(
                  padding: const EdgeInsets.only(
                      top: 15, right: 10, bottom: 5, left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(child: PoppinsText(title: 'Total Price')),
                      Container(child: PoppinsText(title: 'RM 0.00')),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                      top: 5, right: 10, bottom: 10, left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PoppinsText(title: 'Total Save'),
                      PoppinsText(title: 'RM 0.00')
                    ],
                  ),
                ),
                Container(
                  width: Get.width,
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              width: 1,
                              style: BorderStyle.solid,
                              color: Color(0XFFC3C3C3)))),
                ),
                Container(
                  padding: const EdgeInsets.only(
                      top: 15, right: 10, bottom: 10, left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PoppinsText(
                        title: 'Total',
                        weight: FontWeight.w500,
                      ),
                      PoppinsText(
                        title: 'RM 0.00',
                        weight: FontWeight.w500,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
