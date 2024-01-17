import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

class Product {
  final String title;
  final String imageUrl;

  Product({required this.title, required this.imageUrl});
}

class Slide {
  final String imageUrl;
  final String name;

  Slide({required this.imageUrl, required this.name});
}

class TestController extends GetxController {
  final List<Slide> slides = [
    Slide(
        imageUrl: '../../../../../assets/images/cms/categories/buds.png',
        name: 'Slide 1'),
    Slide(
        imageUrl: '../../../../../assets/images/cms/categories/buds.png',
        name: 'Slide 2'),
    Slide(
        imageUrl: '../../../../../assets/images/cms/categories/buds.png',
        name: 'Slide 3'),
    // Add more products as needed
  ];

  RxInt currentIndex = 0.obs;

  void onSlideChange(int index, CarouselPageChangedReason reason) {
    if (reason == CarouselPageChangedReason.manual) {
      currentIndex.value = index;
    }
  }

  void onNext() {
    currentIndex.value++;
  }

  void onPrevious() {
    currentIndex.value--;
  }
  //TODO: Implement TestController

  var selectedMenuIndex = 0.obs;

  final List<List<Product>> products = [
    [
      Product(
          title: 'offer 1',
          imageUrl: '../../../../../assets/images/cms/categories/laptop.png'),
      Product(
          title: 'offer 2',
          imageUrl: '../../../../../assets/images/cms/categories/laptop.png'),
      Product(
          title: 'offer 3',
          imageUrl: '../../../../../assets/images/cms/categories/laptop.png'),
    ],
    [
      Product(
          title: 'TV 1',
          imageUrl: '../../../../../assets/images/cms/categories/laptop.png'),
      Product(
          title: 'TV 2',
          imageUrl: '../../../../../assets/images/cms/categories/laptop.png'),
      Product(
          title: 'TV 3',
          imageUrl: '../../../../../assets/images/cms/categories/laptop.png'),
    ],
    [
      Product(
          title: 'AC 1',
          imageUrl: '../../../../../assets/images/cms/categories/buds.png'),
      Product(
          title: 'AC 2',
          imageUrl: '../../../../../assets/images/cms/categories/buds.png'),
      Product(
          title: 'AC 3',
          imageUrl: '../../../../../assets/images/cms/categories/buds.png'),
    ],
    [
      Product(
          title: 'Mobile 1',
          imageUrl: '../../../../../assets/images/cms/categories/laundry.png'),
      Product(
          title: 'Mobile 2',
          imageUrl: '../../../../../assets/images/cms/categories/laundry.png'),
      Product(
          title: 'Mobile 3',
          imageUrl: '../../../../../assets/images/cms/categories/laundry.png'),
    ],
    [
      Product(
          title: 'Monitor 1',
          imageUrl: '../../../../../assets/images/cms/categories/tv.png'),
      Product(
          title: 'Monitor 2',
          imageUrl: '../../../../../assets/images/cms/categories/tv.png'),
      Product(
          title: 'Monitor 3',
          imageUrl: '../../../../../assets/images/cms/categories/tv.png'),
      Product(
          title: 'Monitor 1',
          imageUrl: '../../../../../assets/images/cms/categories/tv.png'),
      Product(
          title: 'Monitor 2',
          imageUrl: '../../../../../assets/images/cms/categories/tv.png'),
      Product(
          title: 'Monitor 3',
          imageUrl: '../../../../../assets/images/cms/categories/tv.png'),
    ],
  ];

  void selectMenu(int index) {
    selectedMenuIndex.value = index;
  }

  // var isHovering = false.obs;

  // void updateHover(bool value) {
  //   isHovering.value = value;
  // }
  // var hoveredIndex = RxInt(-1); // Observed variable to track the hovered index

  // void updateHoveredIndex(int index) {
  //   hoveredIndex.value = index;
  // }

  var hoveredIndex = RxInt(-1); // Observed variable to track the hovered index

  void updateHoveredIndex(int index) {
    hoveredIndex.value = index;
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

  void increment() => count.value++;

  RxBool isShopDropdownOpen = false.obs;

  void toggleShopDropdown() {
    isShopDropdownOpen.value = !isShopDropdownOpen.value;
  }

  final RxBool isHovering = false.obs;

  // Observe the selected menu
  final RxString selectedMenu = ''.obs;

  // Method to update the hover state
  void updateHover(bool hover) {
    isHovering.value = hover;
  }
}
