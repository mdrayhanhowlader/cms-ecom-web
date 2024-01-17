import 'package:cmsecommerce/app/core/widgets/dosis_text.dart';
import 'package:cmsecommerce/app/modules/buds/controllers/buds_controller.dart';
import 'package:cmsecommerce/app/modules/common_bottom_bar/views/common_bottom_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cmsecommerce/app/core/widgets/poppins_text.dart';
import 'package:cmsecommerce/app/modules/common_appbar/views/common_appbar_view.dart';
import 'package:cmsecommerce/app/modules/single_product_page/views/single_product_page_view.dart';

class BudsView extends GetView<BudsController> {
  BudsView({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> products = [
    {
      'imageUrl': '../../../../../assets/images/cms/categories/buds/buds1.png',
      'title': 'Samsung Galaxy Buds Live',
      'price': 'RM 699',
      'discount': '10%',
    },
    {
      'imageUrl': '../../../../../assets/images/cms/categories/buds/buds3.png',
      'title': 'Apple AirPods Pro',
      'price': 'RM 1099',
      'discount': '5%',
    },
    {
      'imageUrl': '../../../../../assets/images/cms/categories/buds/buds4.png',
      'title': 'Sony WF-1000XM4',
      'price': 'RM 1299',
      'discount': '15%',
    },
    {
      'imageUrl': '../../../../../assets/images/cms/categories/buds/buds5.png',
      'title': 'Jabra Elite 75t',
      'price': 'RM 899',
      'discount': '8%',
    },
    {
      'imageUrl': '../../../../../assets/images/cms/categories/buds/buds1.png',
      'title': 'Bose QuietComfort Earbuds',
      'price': 'RM 1349',
      'discount': '12%',
    },
    {
      'imageUrl': '../../../../../assets/images/cms/categories/buds/buds3.png',
      'title': 'Beats Studio Buds',
      'price': 'RM 799',
      'discount': '10%',
    },
    {
      'imageUrl': '../../../../../assets/images/cms/categories/buds/buds4.png',
      'title': 'Sennheiser Momentum True Wireless 2',
      'price': 'RM 1399',
      'discount': '18%',
    },
    {
      'imageUrl': '../../../../../assets/images/cms/categories/buds/buds5.png',
      'title': 'Skullcandy Indy Fuel',
      'price': 'RM 499',
      'discount': 'No discount',
    },
    {
      'imageUrl': '../../../../../assets/images/cms/categories/buds/buds1.png',
      'title': 'Panasonic RZ-S500W',
      'price': 'RM 999',
      'discount': '10%',
    },
    {
      'imageUrl': '../../../../../assets/images/cms/categories/buds/buds3.png',
      'title': '1MORE Stylish True Wireless',
      'price': 'RM 349',
      'discount': '5%',
    },
    {
      'imageUrl': '../../../../../assets/images/cms/categories/buds/buds4.png',
      'title': 'Sennheiser Momentum True Wireless 2',
      'price': 'RM 1399',
      'discount': '18%',
    },
    {
      'imageUrl': '../../../../../assets/images/cms/categories/buds/buds5.png',
      'title': 'Skullcandy Indy Fuel',
      'price': 'RM 499',
      'discount': 'No discount',
    },
    // Add more products with unique details here...
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppbarView(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                width: Get.width * 0.9,
                child: Column(
                  children: [
                    const SizedBox(height: 50),
                    Container(
                      alignment: Alignment.center,
                      child: DosisText(
                        title: 'Samsung Buds',
                        weight: FontWeight.bold,
                        size: 32,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 20),
                    GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        crossAxisSpacing: 8.0,
                        mainAxisSpacing: 8.0,
                      ),
                      itemCount: products.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            Get.to(SingleProductPageView());
                            print('Tapped on image at index $index');
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                                10), // Adjusted radius for a cleaner look
                            child: Container(
                              height: 300, // Adjusted card height
                              width: 120, // Adjusted card width
                              child: Card(
                                color: Colors.white,
                                elevation: 4.0,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      products[index % products.length]
                                          ['imageUrl'],
                                      fit: BoxFit.fitHeight,
                                      height: 150, // Adjusted image height
                                      width: double
                                          .infinity, // Adjusted image width
                                    ),
                                    const SizedBox(
                                        height:
                                            8), // Added spacing between elements
                                    PoppinsText(
                                      title: products[index % products.length]
                                          ['title'],
                                      size: 14, // Adjusted font size
                                      weight: FontWeight
                                          .bold, // Bold font for title
                                      align: TextAlign.center,
                                    ),

                                    PoppinsText(
                                      title: products[index % products.length]
                                          ['price'],
                                      color: const Color(0XFFB83EAC),
                                      size: 12,
                                    ),
                                    if ((products[index % products.length]
                                                ['discount'] ??
                                            '')
                                        .isNotEmpty) ...[
                                      PoppinsText(
                                        title:
                                            '${products[index % products.length]['discount']} OFF',
                                        color: Colors.green,
                                        size: 10, // Adjusted font size
                                      ),
                                    ],
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 200,
              ),
              const CommonBottomBarView()
            ],
          ),
        ),
      ),
    );
  }
}
