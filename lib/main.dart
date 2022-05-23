import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'city/city_binding.dart';
import 'city/city_page.dart';
import 'home/home_binding.dart';
import 'home/home_page.dart';

void main() {
  runApp(GetMaterialApp(
    initialRoute: '/home',
    getPages: [
      GetPage(
        name: '/home',
        page: () => const HomePage(),
        binding: HomeBinding(),
      ),
      GetPage(
        name: '/city',
        page: () => const CityPage(),
        binding: CityBinding(),
      ),
    ],
  ));
}










