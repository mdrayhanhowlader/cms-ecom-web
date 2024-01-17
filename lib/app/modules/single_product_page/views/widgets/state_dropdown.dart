import 'package:cmsecommerce/app/modules/single_product_page/controllers/single_product_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StateDropdown extends GetView<SingleProductPageController> {
  const StateDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'State',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8.0),
        DropdownButtonFormField<String>(
          decoration: const InputDecoration(
            // border: OutlineInputBorder(),
            hintText: 'Select State',
            prefixIcon: Icon(Icons.location_city),
          ),
          items: <String>['State 1', 'State 2', 'State 3']
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
