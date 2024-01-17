import 'package:get/get.dart';

class SingleProductPageController extends GetxController {
  // Define the banks list here
  final List<Map<String, dynamic>> banks = [
    {
      'name': 'Bank A',
      'image': '../../../../../assets/images/cms/bank/maybank.png'
    },
    {
      'name': 'Bank B',
      'image': '../../../../../assets/images/cms/bank/hsbc.png'
    },
    {
      'name': 'Bank C',
      'image': '../../../../../assets/images/cms/bank/rhb.png'
    },
    {
      'name': 'Bank D',
      'image': '../../../../../assets/images/cms/bank/publicbank.png'
    },
    // Add more banks as needed
  ];

  // Track the selected bank index
  RxInt selectedBankIndex = RxInt(-1);

  // Observable boolean for receiving information
  RxBool receiveInformation = RxBool(false);

  // Observable boolean for agreeing to terms
  RxBool agreeToTerms = RxBool(false);

  void updateBankCheckboxState(int index, bool isChecked) {
    // Update the checkbox state in your data list
    banks[index]['isChecked'] = isChecked;
    // You might want to perform additional actions here based on the checkbox state change
  }

  void selectBank(int index) {
    // Update the selected bank index
    selectedBankIndex.value = index;
  }

  var activeIndex = 0.obs;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
