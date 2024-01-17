import 'package:cmsecommerce/app/modules/test/controllers/test_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Product {
  final String title;
  final String imageUrl;
  final double price;

  Product({
    required this.title,
    required this.imageUrl,
    required this.price,
  });
}

class HoverCard extends GetView<TestController> {
  final Product product;
  final hovering = false.obs;

  HoverCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle tap actions here
      },
      onTapDown: (_) {
        hovering.value = true;
      },
      onTapCancel: () {
        hovering.value = false;
      },
      child: InkWell(
        onTap: () {
          // Handle tap actions here
        },
        onHover: (value) {
          hovering.value = value;
        },
        child: Card(
          elevation: 4,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.network(
                product.imageUrl,
                fit: BoxFit.cover,
                // width: double.infinity,
                // height: double.infinity,
              ),
              Obx(() {
                return hovering.value
                    ? Container(
                        color: Colors.black.withOpacity(0.7),
                        child: Center(
                          child: Column(
                            children: [
                              Text(
                                '\$${product.price.toStringAsFixed(2)}',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    : Container();
              }),
              Positioned(
                bottom: 8,
                left: 8,
                right: 8,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.transparent,
                  // child: Text(
                  //   product.title,
                  //   style: const TextStyle(
                  //     fontSize: 16,
                  //     fontWeight: FontWeight.bold,
                  //   ),
                  // ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
