import 'package:demo/logger.dart';
import 'package:get/get.dart';

import 'city.dart';
import 'city_provider.dart';

class CityController extends SuperController<List<CityModel>> {

  final CityProvider cityProvider;
  CityController({required this.cityProvider});

  @override
  void onInit() {
    findAllCities();
    super.onInit();
  }

  void findAllCities() {
    cityProvider.getCity().then((result) {
      // List<CityModel> data = CityModel.listFromJson(result);
      List<CityModel>? data = result.body;
      //logger.i(result);
      change(data, status: RxStatus.success());
    }, onError: (err) {
      change(null, status: RxStatus.error(err.toString()));
    });
  }

  // Mandatory
  @override
  void onDetached() {
    logger.i('CityController - onDetached called');
  }

  // Mandatory
  @override
  void onInactive() {
    logger.i('CityController - onInative called');
  }

  // Mandatory
  @override
  void onPaused() {
    logger.i('CityController - onPaused called');
  }

  // Mandatory
  @override
  void onResumed() {
    logger.i('CityController - onResumed called');
  }
}

