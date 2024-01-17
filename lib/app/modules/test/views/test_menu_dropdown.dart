import 'package:cmsecommerce/app/modules/common_appbar/views/shop/shop_nav.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestMenuDropdown extends StatelessWidget {
  const TestMenuDropdown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test Menu Dropdown'),
        actions: [
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: ListTile(
                    title: Text('Shop'),
                    onTap: () {
                      Get.to(() => ShopNav()); // Navigate to ShopNav on click
                    },
                  ),
                ),
                // Other menu items can be added here
              ];
            },
          ),
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text('Content of the page goes here'),
      ),
    );
  }
}
