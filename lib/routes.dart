import 'package:flutter_boiler/views/home/view.dart';
import 'package:flutter_boiler/views/splash/view.dart';
import 'package:get/get.dart';

class RouterR {
  static List<GetPage> routers() {
    return [
      GetPage(name: '/', page: () => Home(), transition: Transition.cupertino),
      GetPage(
          name: '/splash',
          page: () => Splash(),
          transition: Transition.cupertino),
    ];
  }
}
