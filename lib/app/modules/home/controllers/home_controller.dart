import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var isOfferHovered = false.obs;

  final CarouselController carouselController = CarouselController();

  final List<String> imageList = [
    '../../../../../assets/images/cms/slider/slide1.png',
    '../../../../../assets/images/cms/slider/slide2.webp',
    '../../../../../assets/images/cms/slider/slide3.jpg',
    '../../../../../assets/images/cms/slider/slide4.jpg',
    '../../../../../assets/images/cms/slider/slide5.jpg',
    '../../../../../assets/images/cms/slider/slide6.webp',
    // Add other image paths as needed
  ];

  void carouselNext() {
    carouselController.nextPage(
      duration: Duration(milliseconds: 300),
      curve: Curves.linear,
    );
  }

  void updateCurrentPage(int index) {
    // Implement your logic here to handle the current page index update
    // For example, you can print the index to verify it's working
    // print('Current page index updated to: $index');
  }

  void carouselBack() {
    carouselController.previousPage(
      duration: Duration(milliseconds: 300),
      curve: Curves.linear,
    );
  }

  var isHovered = false.obs;

  void updateHover(bool value) {
    isHovered.value = value;
  }

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

  final RxInt hoveredIndex = (-1).obs;
  final RxString selectedMenu = 'All Offers'.obs;
  final String assetPath = 'assets/images/cms/offers';

  void updateHoveredIndex(int index) {
    hoveredIndex.value = index;
  }

  final RxList<Map<String, dynamic>> selectedData =
      <Map<String, dynamic>>[].obs;

  final List<Map<String, dynamic>> allOfferData = [
    {
      'image': '../../../../../assets/images/cms/offers/alloffer/alloffer.png',
      'title': 'All Offer Product 1',
      'price': '\$100',
    },
    {
      'image': '../../../../../assets/images/cms/offers/alloffer/alloffer2.png',
      'title': 'All Offer Product 2',
      'price': '\$120',
    },
    {
      'image': '../../../../../assets/images/cms/offers/alloffer/alloffer3.png',
      'title': 'All Offer Product 3',
      'price': '\$90',
    },
    {
      'image': '../../../../../assets/images/cms/offers/alloffer/alloffer4.png',
      'title': 'All Offer Product 4',
      'price': '\$110',
    },
    {
      'image': '../../../../../assets/images/cms/offers/alloffer/alloffer5.png',
      'title': 'All Offer Product 5',
      'price': '\$130',
    },
  ];

  final List<Map<String, dynamic>> mobileData = [
    {
      'image': '../../../../../assets/images/cms/offers/mobile/mobile1.png',
      'title': 'Mobile Product 1',
      'price': '\$300',
    },
    {
      'image': '../../../../../assets/images/cms/offers/mobile/mobile2.png',
      'title': 'Mobile Product 2',
      'price': '\$250',
    },
    {
      'image': '../../../../../assets/images/cms/offers/mobile/mobile3.png',
      'title': 'Mobile Product 3',
      'price': '\$280',
    },
    {
      'image': '../../../../../assets/images/cms/offers/mobile/mobile4.png',
      'title': 'Mobile Product 4',
      'price': '\$320',
    },
    {
      'image': '../../../../../assets/images/cms/offers/mobile/mobile5.png',
      'title': 'Mobile Product 5',
      'price': '\$270',
    },
  ];

  final List<Map<String, dynamic>> tvData = [
    {
      'image': '../../../../../assets/images/cms/offers/tv/tv1.png',
      'title': 'TV Product 1',
      'price': '\$500',
    },
    {
      'image': '../../../../../assets/images/cms/offers/tv/tv2.png',
      'title': 'TV Product 2',
      'price': '\$450',
    },
    {
      'image': '../../../../../assets/images/cms/offers/tv/tv3.png',
      'title': 'TV Product 3',
      'price': '\$480',
    },
    {
      'image': '../../../../../assets/images/cms/offers/tv/tv4.png',
      'title': 'TV Product 4',
      'price': '\$520',
    },
    {
      'image': '../../../../../assets/images/cms/offers/tv/tv5.png',
      'title': 'TV Product 5',
      'price': '\$470',
    },
  ];

  final List<Map<String, dynamic>> acData = [
    {
      'image': '../../../../../assets/images/cms/offers/ac/ac1.png',
      'title': 'AC Product 1',
      'price': '\$200',
    },
    {
      'image': '../../../../../assets/images/cms/offers/ac/ac2.png',
      'title': 'AC Product 2',
      'price': '\$180',
    },
    {
      'image': '../../../../../assets/images/cms/offers/ac/ac3.png',
      'title': 'AC Product 3',
      'price': '\$220',
    },
    {
      'image': '../../../../../assets/images/cms/offers/ac/ac4.png',
      'title': 'AC Product 4',
      'price': '\$240',
    },
    {
      'image': '../../../../../assets/images/cms/offers/ac/ac5.png',
      'title': 'AC Product 5',
      'price': '\$210',
    },
  ];

  final List<Map<String, dynamic>> monitorData = [
    {
      'image': '../../../../../assets/images/cms/offers/monitor/monitor1.png',
      'title': 'Monitor Product 1',
      'price': '\$350',
    },
    {
      'image': '../../../../../assets/images/cms/offers/monitor/monitor2.png',
      'title': 'Monitor Product 2',
      'price': '\$300',
    },
    {
      'image': '../../../../../assets/images/cms/offers/monitor/monitor3.png',
      'title': 'Monitor Product 3',
      'price': '\$330',
    },
    {
      'image': '../../../../../assets/images/cms/offers/monitor/monitor4.png',
      'title': 'Monitor Product 4',
      'price': '\$370',
    },
    {
      'image': '../../../../../assets/images/cms/offers/monitor/monitor5.png',
      'title': 'Monitor Product 5',
      'price': '\$320',
    },
  ];

  void updateSelectedData() {
    switch (selectedMenu.value) {
      case 'All Offers':
        selectedData.value = allOfferData;
        break;
      case 'Mobile':
        selectedData.value = mobileData;
        break;
      case 'TV':
        selectedData.value = tvData;
        break;
      case 'AC':
        selectedData.value = acData;
        break;
      case 'Monitor':
        selectedData.value = monitorData;
        break;
    }
  }
}
