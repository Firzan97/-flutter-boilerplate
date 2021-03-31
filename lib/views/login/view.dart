import 'package:flutter/material.dart';
import 'package:flutter_boiler/views/splash/viewmodel.dart';
import 'package:get/get.dart';

class Splash extends StatelessWidget {
  final vModel = Get.put(SplashViewModel());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
    );
  }
}
