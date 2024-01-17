import 'package:cmsecommerce/app/modules/single_product_page/controllers/single_product_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PostCodeDropdown extends GetView<SingleProductPageController> {
  const PostCodeDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'State',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8.0),
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
            // border: OutlineInputBorder(),
            hintText: 'Select PostCode',
            prefixIcon: Icon(Icons.location_city),
          ),
          items: <String>['47600', '47500', '47670']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (String? value) {
            // Logic when state is selected
          },
        ),
      ],
    );
  }
}
