import 'package:flutter/material.dart';

String safeString(dynamic text) {
  try {
    return text ?? "";
  } catch (e) {
    print(e);
  }
}
