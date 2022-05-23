import 'package:get/get.dart';

import 'city_controller.dart';
import 'city_provider.dart';

class CityBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CityProvider());
    Get.put(CityController(cityProvider: Get.find()));
  }
}