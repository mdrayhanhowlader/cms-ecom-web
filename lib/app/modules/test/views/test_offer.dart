import 'package:cmsecommerce/app/modules/test/controllers/test_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

class TestOffer extends GetView<TestController> {
  final TestController controller = Get.put(TestController());

  Widget _buildMenu(String menuTitle) {
    return InkWell(
      onTap: () {
        controller.selectedMenu.value = menuTitle;
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        child: Text(
          menuTitle,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildAllOffersLayout(String selectedMenu) {
    // Replace spaces with underscores or remove them
    String menuPath = selectedMenu.replaceAll(" ", "_");

    return StaggeredGrid.count(
      crossAxisCount: 4,
      mainAxisSpacing: 6,
      crossAxisSpacing: 6,
      children: List.generate(
        5, // Use 5 for "All Offers"
        (index) => StaggeredGridTile.count(
          crossAxisCellCount: index == 0 ? 2 : 1,
          mainAxisCellCount: index == 0 ? 2 : 1,
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
                    // Image.asset(
                    //   // '../../../../../assets/images/cms/offers/alloffer/alloffer.png',
                    //   '../../../../../assets/images/cms/offers/alloffer/$menuPath.png',
                    //   fit: BoxFit.fitWidth,
                    // ),
                    _buildImageWithOverlay(
                        assetPath:
                            '../../../../../assets/images/cms/offers/$selectedMenu/$selectedMenu.png',
                        overlayText: '$selectedMenu Image ${index + 1}',
                        overlayPrice: '200'),
                    Visibility(
                      visible: controller.hoveredIndex.value == index,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.7),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Center(
                          child: Text(
                            'Overlay Text',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
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
    );
  }

  Widget _buildOtherMenusLayout(String selectedMenu) {
    return StaggeredGrid.count(
      crossAxisCount: 3,
      crossAxisSpacing: 6,
      mainAxisSpacing: 6,
      children: List.generate(
        6,
        (index) => StaggeredGridTile.count(
          crossAxisCellCount: 1, // Set the crossAxisCellCount here
          mainAxisCellCount: 1,
          child: _buildImageWithOverlay(
              assetPath:
                  '../../../../../assets/images/cms/offers/$selectedMenu/$selectedMenu.png',
              overlayText: '$selectedMenu Image ${index + 1}',
              overlayPrice: '200'),
        ),
      ),
    );
  }

  Widget _buildImageWithOverlay({
    required String assetPath,
    required String overlayText,
    required String overlayPrice,
  }) {
    return GestureDetector(
      onTap: () {
        // Handle image click action
      },
      onTapDown: (_) {
        controller.updateHover(true);
      },
      onTapCancel: () {
        controller.updateHover(false);
      },
      child: Obx(
        () => MouseRegion(
          onEnter: (_) {
            controller.updateHover(true);
          },
          onExit: (_) {
            controller.updateHover(false);
          },
          child: Container(
            width: 200,
            height: 200,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  assetPath,
                  fit: BoxFit.cover,
                ),
                if (controller.isHovering.value)
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        overlayText,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: Get.width * 0.9,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Menu
              Container(
                width: Get.width * 0.5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildMenu('All Offers'),
                    _buildMenu('Mobile'),
                    _buildMenu('TV'),
                    _buildMenu('AC'),
                    _buildMenu('Monitor'),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              // Image container
              Obx(() {
                final selectedMenu = controller.selectedMenu.value;
                return selectedMenu.isEmpty
                    ? _buildAllOffersLayout(selectedMenu)
                    : selectedMenu == 'All Offers'
                        ? _buildAllOffersLayout(selectedMenu)
                        : _buildOtherMenusLayout(selectedMenu);
              }),
            ],
          ),
        ),
      ],
    );
  }
}
