import 'package:cmsecommerce/app/core/widgets/responsive/responsive_layout.dart';
import 'package:cmsecommerce/app/modules/home/views/responsive_home/desktop_home.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ResponsiveLayout(
      desktop: DesktopHome(),
    ));
  }
}
