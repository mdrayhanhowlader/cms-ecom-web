import 'package:cmsecommerce/app/modules/common_appbar/controllers/common_appbar_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cmsecommerce/app/core/widgets/poppins_text.dart';

class ShopNav extends GetView<CommonAppbarController> {
  const ShopNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 76),
      child: Dialog(
        clipBehavior: Clip.antiAlias,
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.white,
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(40),
            width: Get.width * 0.8,
            height: 550,
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildColumn("Offers", [
                  "All Offers",
                  "Samsung shop app | 10% OFF \nWelcome Voucher",
                  "Product A",
                  "Product B",
                  // Add more product names as needed
                ]),
                _buildColumn("Smart Way to Buy", [
                  "0% Interest Installment",
                  "Youtube premium for Samsung \nGalaxy",
                  "Product C",
                  "Product D",
                  // Add more product names as needed
                ]),
                _buildColumn("Why Buy from Samsung", [
                  "Overview",
                  "Free Delivery",
                  "Samsung Review",
                  "Samsung Care+",
                  "Product E",
                  "Product F",
                  // Add more product names as needed
                ]),
                _buildColumn("Quick Links", [
                  "Order Status",
                  // Add more quick links as needed
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildColumn(String title, List<String> items) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: PoppinsText(
            title: title,
            size: 18,
            weight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        ...items.map((item) => InkWell(
              onTap: () {
                // Navigate to the product page with the selected product
                Get.to(() => ProductPage(productName: item));
              },
              child: Container(
                child: PoppinsText(
                  title: item,
                  size: item.contains("\n") ? 14 : 18,
                  weight: item.contains("\n")
                      ? FontWeight.normal
                      : FontWeight.normal,
                ),
              ),
            )),
      ],
    );
  }
}

class ProductPage extends StatelessWidget {
  final String productName;

  const ProductPage({Key? key, required this.productName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(productName),
      ),
      body: Center(
        child: Text('Details for $productName will go here.'),
      ),
    );
  }
}
