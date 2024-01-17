import 'package:carousel_slider/carousel_slider.dart';
import 'package:cmsecommerce/app/modules/test/controllers/test_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestSlider extends GetView<TestController> {
  const TestSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 400,
      child: Column(
        children: [
          Expanded(
            child: CarouselSlider.builder(
              itemCount: controller.products.length,
              itemBuilder: (BuildContext context, int index, int realIndex) {
                return Container(
                  child: Center(
                    child: Image.network(
                      controller.slides[index].imageUrl,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                );
              },
              options: CarouselOptions(
                aspectRatio: 16 / 9,
                autoPlay: false,
                enlargeCenterPage: true,
                onPageChanged: controller.onSlideChange,
              ),
            ),
          ),
          Obx(
            () => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: controller.slides.map((Slide slides) {
                int index = controller.slides.indexOf(slides);
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: EdgeInsets.symmetric(horizontal: 4.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: controller.currentIndex.value == index
                        ? Colors.blue
                        : Colors.grey,
                  ),
                );
              }).toList(),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: controller.currentIndex.value > 0
                    ? controller.onPrevious
                    : null,
                icon: Icon(Icons.arrow_back),
              ),
              IconButton(
                onPressed:
                    controller.currentIndex.value < controller.slides.length - 1
                        ? controller.onNext
                        : null,
                icon: Icon(Icons.arrow_forward),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
