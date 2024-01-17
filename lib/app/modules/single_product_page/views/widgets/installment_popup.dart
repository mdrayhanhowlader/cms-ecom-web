import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cmsecommerce/app/modules/single_product_page/controllers/single_product_page_controller.dart';
import 'package:cmsecommerce/app/core/widgets/poppins_text.dart';

class InstallmentPopup extends GetView<SingleProductPageController> {
  InstallmentPopup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0), // Adjust the value as needed
      ),
      child: SingleChildScrollView(
        child: Container(
          width: Get.width * 0.3,
          height: Get.height * 0.5, // Adjust the value as needed
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  border: BorderDirectional(
                    bottom: BorderSide(
                      width: 1,
                      color: Color.fromARGB(112, 114, 112, 112),
                    ),
                  ),
                ),
                child: PoppinsText(
                  title: 'Installment Simulation',
                  size: 18,
                  weight: FontWeight.w400,
                ),
              ),
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 4,
                  mainAxisSpacing: 5.0,
                  crossAxisSpacing: 5.0,
                ),
                itemCount: controller.banks.length,
                itemBuilder: (context, index) {
                  return _buildGridItem(context, index);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGridItem(BuildContext context, int index) {
    // Access the banks list using the controller
    Map<String, dynamic> bank = controller.banks[index];

    return InkWell(
      onTap: () {
        // Handle radio button state change
        controller.selectBank(index);
      },
      child: Obx(() {
        return Container(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Radio(
                value: index,
                groupValue: controller.selectedBankIndex.value,
                onChanged: (value) {
                  // Handle radio button state change
                  controller.selectBank(value as int);
                },
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                activeColor: const Color(0XFFB83EAC),
              ),
              const SizedBox(width: 2.0),
              Image.asset(
                bank['image'],
                width: 39,
                height: 39,
              ),
              const SizedBox(width: 2.0),
              PoppinsText(title: bank['name']),
            ],
          ),
        );
      }),
    );
  }
}
