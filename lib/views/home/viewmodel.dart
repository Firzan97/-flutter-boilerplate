import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';

class HomeController extends GetxController {
  TextEditingController num1 = TextEditingController();
  TextEditingController num2 = TextEditingController();

  @override
  void onInit() async {
    super.onInit();
  }

  void calculate(n1, n2) {
    Fluttertoast.showToast(
        msg: n1.text + n2,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 3,
        backgroundColor: Colors.white70.withOpacity(1),
        textColor: Colors.black,
        fontSize: 16);
  }
}
