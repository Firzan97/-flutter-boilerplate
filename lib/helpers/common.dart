import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

String safeString(dynamic text) {
  try {
    return text ?? "";
  } catch (e) {
    print(e);
  }
}

void toast(String message) {
  Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.TOP,
      timeInSecForIosWeb: 3,
      backgroundColor: Colors.white,
      textColor: Colors.green,
      fontSize: 16);
}
