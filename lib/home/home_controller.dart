import 'package:demo/logger.dart';
import 'package:get/get.dart';

class HomeController extends FullLifeCycleController with FullLifeCycleMixin {
  // Mandatory
  @override
  void onDetached() {
    logger.i('HomeController - onDetached called');
  }

  // Mandatory
  @override
  void onInactive() {
    logger.i('HomeController - onInative called');
  }

  // Mandatory
  @override
  void onPaused() {
    logger.i('HomeController - onPaused called');
  }

  // Mandatory
  @override
  void onResumed() {
    logger.i('HomeController - onResumed called');
  }

  // Optional
  @override
  Future<bool> didPushRoute(String route) {
    logger.i('HomeController - the route $route will be open');
    return super.didPushRoute(route);
  }

  // Optional
  @override
  Future<bool> didPopRoute() {
    logger.i('HomeController - the current route will be closed');
    return super.didPopRoute();
  }

  // Optional
  @override
  void didChangeMetrics() {
    logger.i('HomeController - the window size did change');
    super.didChangeMetrics();
  }

  // Optional
  @override
  void didChangePlatformBrightness() {
    logger.i('HomeController - platform change ThemeMode');
    super.didChangePlatformBrightness();
  }
}