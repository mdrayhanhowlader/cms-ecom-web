import 'package:cmsecommerce/app/modules/single_product_page/views/single_product_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:cmsecommerce/app/core/widgets/poppins_text.dart';
import 'package:cmsecommerce/app/modules/home/controllers/home_controller.dart';
import 'package:cmsecommerce/app/modules/home/views/home_widgets/home_sub_menu.dart';

class HomeOffers extends GetView<HomeController> {
  const HomeOffers({Key? key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      controller
          .updateSelectedData(); // Update selected data when the menu changes

      int crossAxisCount = controller.selectedData.length == 5 ? 4 : 3;
      int itemCount = controller.selectedData.length;

      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: Get.width * 0.9,
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PoppinsText(
                  title: "Special product for this year",
                  color: Colors.black,
                  size: 32,
                  weight: FontWeight.bold,
                ),
                const SizedBox(height: 20),
                const HomeSubMenu(),
                const SizedBox(height: 30),
                Container(
                  child: StaggeredGrid.count(
                    crossAxisCount: crossAxisCount,
                    mainAxisSpacing: 6,
                    crossAxisSpacing: 6,
                    children: List.generate(
                      itemCount,
                      (index) => StaggeredGridTile.count(
                        crossAxisCellCount: index == 0 ? 2 : 1,
                        mainAxisCellCount: index == 0 ? 2 : 1,
                        child: MouseRegion(
                          onEnter: (_) => controller.updateHoveredIndex(index),
                          onExit: (_) => controller.updateHoveredIndex(-1),
                          child: GestureDetector(
                            onTap: () {
                              // Handle image tap
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color(0XFFD8D2DA),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Stack(
                                  fit: StackFit.expand,
                                  children: [
                                    Image.asset(
                                      'assets/images/cms/offers/${controller.selectedData[index]['image']}',
                                      fit: BoxFit.fitWidth,
                                    ),
                                    Visibility(
                                      visible: controller.hoveredIndex.value ==
                                          index,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.black.withOpacity(0.4),
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            PoppinsText(
                                              title: controller
                                                  .selectedData[index]['title'],
                                              color: Colors.white,
                                              size: 18,
                                              weight: FontWeight.bold,
                                            ),
                                            PoppinsText(
                                              title:
                                                  'Price: ${controller.selectedData[index]['price']}',
                                              color: Colors.white,
                                              size: 16,
                                            ),
                                            ElevatedButton(
                                              onPressed: () {
                                                Get.to(
                                                    () => SingleProductPageView(
                                                        // title: controller
                                                        //         .selectedData[
                                                        //     index]['title'],
                                                        // price: controller
                                                        //         .selectedData[
                                                        //     index]['price'],
                                                        ));
                                              },
                                              child: Text('View Details'),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    });
  }
}
