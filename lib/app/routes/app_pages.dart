import 'package:get/get.dart';

import '../modules/ac/bindings/ac_binding.dart';
import '../modules/ac/views/ac_view.dart';
import '../modules/air-purifiers/bindings/air_purifiers_binding.dart';
import '../modules/air-purifiers/views/air_purifiers_view.dart';
import '../modules/buds/bindings/buds_binding.dart';
import '../modules/buds/views/buds_view.dart';
import '../modules/common_appbar/bindings/common_appbar_binding.dart';
import '../modules/common_appbar/views/common_appbar_view.dart';
import '../modules/common_bottom_bar/bindings/common_bottom_bar_binding.dart';
import '../modules/common_bottom_bar/views/common_bottom_bar_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/laptop/bindings/laptop_binding.dart';
import '../modules/laptop/views/laptop_view.dart';
import '../modules/laundry/bindings/laundry_binding.dart';
import '../modules/laundry/views/laundry_view.dart';
import '../modules/microwave/bindings/microwave_binding.dart';
import '../modules/microwave/views/microwave_view.dart';
import '../modules/mobile-tab/bindings/mobile_tab_binding.dart';
import '../modules/mobile-tab/views/mobile_tab_view.dart';
import '../modules/monitor/bindings/monitor_binding.dart';
import '../modules/monitor/views/monitor_view.dart';
import '../modules/refrigerators/bindings/refrigerators_binding.dart';
import '../modules/refrigerators/views/refrigerators_view.dart';
import '../modules/single_product_page/bindings/single_product_page_binding.dart';
import '../modules/single_product_page/views/single_product_page_view.dart';
import '../modules/sound-devices/bindings/sound_devices_binding.dart';
import '../modules/sound-devices/views/sound_devices_view.dart';
import '../modules/test/bindings/test_binding.dart';
import '../modules/test/views/test_view.dart';
import '../modules/tv/bindings/tv_binding.dart';
import '../modules/tv/views/tv_view.dart';
import '../modules/watch/bindings/watch_binding.dart';
import '../modules/watch/views/watch_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.COMMON_APPBAR,
      page: () => const CommonAppbarView(),
      binding: CommonAppbarBinding(),
    ),
    GetPage(
      name: _Paths.COMMON_BOTTOM_BAR,
      page: () => const CommonBottomBarView(),
      binding: CommonBottomBarBinding(),
    ),
    GetPage(
      name: _Paths.SINGLE_PRODUCT_PAGE,
      page: () => SingleProductPageView(),
      binding: SingleProductPageBinding(),
    ),
    GetPage(
      name: _Paths.MOBILE_TAB,
      page: () => MobileTabView(),
      binding: MobileTabBinding(),
    ),
    GetPage(
      name: _Paths.BUDS,
      page: () => BudsView(),
      binding: BudsBinding(),
    ),
    GetPage(
      name: _Paths.WATCH,
      page: () => WatchView(),
      binding: WatchBinding(),
    ),
    GetPage(
      name: _Paths.TV,
      page: () => TvView(),
      binding: TvBinding(),
    ),
    GetPage(
      name: _Paths.SOUND_DEVICES,
      page: () => SoundDevicesView(),
      binding: SoundDevicesBinding(),
    ),
    GetPage(
      name: _Paths.MONITOR,
      page: () => MonitorView(),
      binding: MonitorBinding(),
    ),
    GetPage(
      name: _Paths.LAPTOP,
      page: () => LaptopView(),
      binding: LaptopBinding(),
    ),
    GetPage(
      name: _Paths.AC,
      page: () => AcView(),
      binding: AcBinding(),
    ),
    GetPage(
      name: _Paths.AIR_PURIFIERS,
      page: () => AirPurifiersView(),
      binding: AirPurifiersBinding(),
    ),
    GetPage(
      name: _Paths.REFRIGERATORS,
      page: () => RefrigeratorsView(),
      binding: RefrigeratorsBinding(),
    ),
    GetPage(
      name: _Paths.MICROWAVE,
      page: () => MicrowaveView(),
      binding: MicrowaveBinding(),
    ),
    GetPage(
      name: _Paths.LAUNDRY,
      page: () => LaundryView(),
      binding: LaundryBinding(),
    ),
    GetPage(
      name: _Paths.TEST,
      page: () => const TestView(),
      binding: TestBinding(),
    ),
  ];
}
