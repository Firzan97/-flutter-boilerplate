import 'package:flutter/material.dart';
import 'package:flutter_boiler/views/home/viewmodel.dart';
import 'package:get/get.dart';
import 'package:catcher/catcher.dart';

class Home extends StatelessWidget {
  final HomeController vModel = Get.put(HomeController());
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
              child: Text(null),
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
