import 'package:flutter/material.dart';

class CColors {
  static Color skyBlue = const Color(0xff41a6aa);
  static Color black = const Color(0xff0e1b1c);
  static Color red = const Color(0xffe43434);
}

Color hexToColor(String code) {
  return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
}
