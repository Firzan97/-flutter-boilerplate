import 'package:flutter/material.dart';
import 'package:flutter_boiler/views/splash/viewmodel.dart';
import 'package:get/get.dart';

class Splash extends StatelessWidget {
  final vModel = Get.put(SplashViewModel());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: vModel.num1,
            ),
            TextField(
              controller: vModel.num2,
            ),
            TextButton(
              child: Text("Calculate"),
              onPressed: () {
                vModel.calculate(vModel.num1, vModel.num2);
              },
            ),
            TextButton(
              child: Text("Next page"),
              onPressed: () {
                Get.toNamed("/splash");
              },
            ),
          ],
        ),
      ),
    );
  }
}
