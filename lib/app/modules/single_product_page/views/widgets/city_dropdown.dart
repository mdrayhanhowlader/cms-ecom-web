import 'package:cmsecommerce/app/modules/single_product_page/controllers/single_product_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CityDropdown extends GetView<SingleProductPageController> {
  const CityDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'City',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8.0),
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
            // border: OutlineInputBorder(),
            hintText: 'Select City',
            prefixIcon: Icon(Icons.location_city),
          ),
          items: <String>['City 1', 'City 2', 'City 3']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (String? value) {
            // Logic when city is selected
          },
        ),
      ],
    );
  }
}
