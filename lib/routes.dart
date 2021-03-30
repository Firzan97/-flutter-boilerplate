import 'package:flutter_boiler/views/splash/view.dart';
import 'package:get/get.dart';

class RouterR {
  static List<GetPage> routers() {
    return [
      GetPage(
          name: '/', page: () => Splash(), transition: Transition.cupertino),
    ];
  }
}
