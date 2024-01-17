import 'package:cmsecommerce/app/core/widgets/poppins_text.dart';
import 'package:cmsecommerce/app/modules/common_appbar/views/common_appbar_view.dart';
import 'package:cmsecommerce/app/modules/common_bottom_bar/views/common_bottom_bar_view.dart';
import 'package:cmsecommerce/app/modules/single_product_page/views/single_product_page_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/ac_controller.dart';

class AcView extends GetView<AcController> {
  AcView({Key? key}) : super(key: key);
  final List<String> imageUrls = [
    'https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=600',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppbarView(),
      body: Center(
        child: Container(
          width: Get.width * 0.9,
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Container(
                alignment: Alignment.center,
                child: PoppinsText(
                  title: 'AC',
                  weight: FontWeight.bold,
                  size: 22,
                  spacing: 4,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 8.0,
                      mainAxisSpacing: 8.0,
                    ),
                    itemCount: imageUrls.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          // Handle tap on the image
                          Get.to(SingleProductPageView());
                          print('Tapped on image at index $index');
                        },
                        child: Card(
                            color: Colors.white,
                            elevation: 4.0,
                            child: Column(
                              children: [
                                Image.network(
                                  imageUrls[index],
                                  fit: BoxFit.cover,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                PoppinsText(title: 'Macbook Pro'),
                                const SizedBox(
                                  height: 5,
                                ),
                                PoppinsText(
                                  title: 'RM 7900',
                                  color: Colors.red.shade400,
                                  size: 12,
                                )
                              ],
                            )),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
