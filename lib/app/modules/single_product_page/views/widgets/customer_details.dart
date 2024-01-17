import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cmsecommerce/app/core/widgets/poppins_text.dart';
import 'package:cmsecommerce/app/modules/single_product_page/controllers/single_product_page_controller.dart';
import 'package:cmsecommerce/app/modules/single_product_page/views/widgets/city_dropdown.dart';
import 'package:cmsecommerce/app/modules/single_product_page/views/widgets/postcode_dropdown.dart';
import 'package:cmsecommerce/app/modules/single_product_page/views/widgets/state_dropdown.dart';

class CustomerDetails extends GetView<SingleProductPageController> {
  CustomerDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Enter your name',
              prefixIcon: Icon(Icons.person),
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Enter your email',
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(),
                        fillColor: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 16.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Enter your phone number',
                        prefixIcon: Icon(Icons.phone),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Enter your address',
              prefixIcon: Icon(Icons.home),
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 16.0),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: StateDropdown()),
              SizedBox(
                width: 10,
              ),
              Expanded(child: CityDropdown()),
              SizedBox(
                width: 10,
              ),
              Expanded(child: PostCodeDropdown()),
            ],
          ),
          const SizedBox(height: 16.0),
          Row(
            children: [
              Obx(() => Checkbox(
                    value: controller.receiveInformation.value,
                    onChanged: (value) {
                      controller.receiveInformation.value = value!;
                    },
                    activeColor: Colors.pink,
                    hoverColor: Colors.grey,
                  )),
              PoppinsText(
                title:
                    "I would like to receive information about product, services, promotions and marketing communication of Hudhud.my and/or its partner. (OPTIONAL)",
                size: 13,
                color: const Color(0XFF888888),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Obx(() => Checkbox(
                    value: controller.agreeToTerms.value,
                    onChanged: (value) {
                      controller.agreeToTerms.value = value!;
                    },
                    activeColor: Colors.pink,
                    hoverColor: Colors.grey,
                  )),
              PoppinsText(
                title:
                    "By submitting your order, you agree to the Terms & Conditions and the Privacy Policy of HudHud Technology Berhad. (COMPULSORY)",
                size: 14,
                color: const Color(0XFF888888),
              ),
            ],
          )
        ],
      ),
    );
  }
}
