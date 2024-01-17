import 'package:cmsecommerce/app/core/widgets/dosis_text.dart';
import 'package:cmsecommerce/app/core/widgets/poppins_text.dart';
import 'package:cmsecommerce/app/modules/common_appbar/views/common_appbar_view.dart';
import 'package:cmsecommerce/app/modules/common_bottom_bar/views/common_bottom_bar_view.dart';
import 'package:cmsecommerce/app/modules/single_product_page/views/single_product_page_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/monitor_controller.dart';

class MonitorView extends GetView<MonitorController> {
  MonitorView({Key? key}) : super(key: key);
  final List<Map<String, dynamic>> products = [
    {
      'imageUrl':
          '../../../../../assets/images/cms/categories/monitor/monitor1.png',
      'title': 'Macbook Pro',
      'specification': '(256GB/8GB & 512GB/12GB)',
      'price': 'RM 7900',
      'discount': '20%', // Discount for 'Macbook Pro'
    },
    {
      'imageUrl':
          '../../../../../assets/images/cms/categories/monitor/monitor2.png',
      'title': 'iPhone 12',
      'specification': '(256GB/8GB & 512GB/12GB)',
      'price': 'RM 4500',
      'discount': '', // No discount for 'iPhone 12'
    },
    {
      'imageUrl':
          '../../../../../assets/images/cms/categories/monitor/monitor3.png',
      'title': 'Samsung Galaxy S21',
      'specification': '(256GB/8GB & 512GB/12GB)',
      'price': 'RM 5500',
      'discount': '10%', // Discount for 'Samsung Galaxy S21'
    },
    {
      'imageUrl':
          '../../../../../assets/images/cms/categories/monitor/monitor4.png',
      'title': 'Google Pixel 6',
      'specification': '(256GB/8GB & 512GB/12GB)',
      'price': 'RM 4800',
      'discount': '', // No discount for 'Google Pixel 6'
    },
    {
      'imageUrl':
          '../../../../../assets/images/cms/categories/monitor/monitor1.png',
      'title': 'iPad Air',
      'specification': '(256GB/8GB & 512GB/12GB)',
      'price': 'RM 3200',
      'discount': '15%', // Discount for 'iPad Air'
    },
    {
      'imageUrl':
          '../../../../../assets/images/cms/categories/monitor/monitor2.png',
      'title': 'iPad 10th Generation',
      'specification': '(256GB/8GB & 512GB/12GB)',
      'price': 'RM 2200',
      'discount': '', // No discount for 'iPad 10th Generation'
    },
    {
      'imageUrl':
          '../../../../../assets/images/cms/categories/monitor/monitor3.png',
      'title': 'Google Pixel 6',
      'specification': '(256GB/8GB & 512GB/12GB)',
      'price': 'RM 6200',
      'discount': '', // Discount for 'Google Pixel 6'
    },
    {
      'imageUrl':
          '../../../../../assets/images/cms/categories/monitor/monitor4.png',
      'title': 'iPhone 12',
      'specification': '(256GB/8GB & 512GB/12GB)',
      'price': 'RM 4500',
      'discount': '', // No discount for 'iPhone 12'
    },
    {
      'imageUrl':
          '../../../../../assets/images/cms/categories/monitor/monitor1.png',
      'title': 'Macbook Pro',
      'specification': '(256GB/8GB & 512GB/12GB)',
      'price': 'RM 7900',
      'discount': '20%', // Discount for 'Macbook Pro'
    },
    {
      'imageUrl':
          '../../../../../assets/images/cms/categories/monitor/monitor2.png',
      'title': 'iPhone 12',
      'specification': '(256GB/8GB & 512GB/12GB)',
      'price': 'RM 4500',
      'discount': '', // No discount for 'iPhone 12'
    },
    {
      'imageUrl':
          '../../../../../assets/images/cms/categories/monitor/monitor3.png',
      'title': 'Samsung Galaxy S21',
      'specification': '(256GB/8GB & 512GB/12GB)',
      'price': 'RM 5500',
      'discount': '10%', // Discount for 'Samsung Galaxy S21'
    },
    {
      'imageUrl':
          '../../../../../assets/images/cms/categories/monitor/monitor4.png',
      'title': 'Google Pixel 6',
      'specification': '(256GB/8GB & 512GB/12GB)',
      'price': 'RM 4800',
      'discount': '', // No discount for 'Google Pixel 6'
    },
    {
      'imageUrl':
          '../../../../../assets/images/cms/categories/monitor/monitor1.png',
      'title': 'iPad Air',
      'specification': '(256GB/8GB & 512GB/12GB)',
      'price': 'RM 3200',
      'discount': '15%', // Discount for 'iPad Air'
    },
    {
      'imageUrl':
          '../../../../../assets/images/cms/categories/monitor/monitor2.png',
      'title': 'iPad 10th Generation',
      'specification': '(256GB/8GB & 512GB/12GB)',
      'price': 'RM 2200',
      'discount': '', // No discount for 'iPad 10th Generation'
    },
    {
      'imageUrl':
          '../../../../../assets/images/cms/categories/monitor/monitor3.png',
      'title': 'Google Pixel 6',
      'specification': '(256GB/8GB & 512GB/12GB)',
      'price': 'RM 6200',
      'discount': '', // Discount for 'Google Pixel 6'
    },
    {
      'imageUrl':
          '../../../../../assets/images/cms/categories/monitor/monitor4.png',
      'title': 'iPhone 12',
      'specification': '(256GB/8GB & 512GB/12GB)',
      'price': 'RM 4500',
      'discount': '', // No discount for 'iPhone 12'
    },
    // Add other products here...
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
                        title: 'Monitors',
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
                                    ),
                                    PoppinsText(
                                      title: products[index % products.length]
                                          ['specification'],
                                      size: 10, // Adjusted font size
                                      color: Colors.grey, // Specification color
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
