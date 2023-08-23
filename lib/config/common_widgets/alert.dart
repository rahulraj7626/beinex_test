import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

///Toast widget
class AppAlert {
  static showToast(String txt) {
    Fluttertoast.showToast(
        msg: txt,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  static showSnackBar(String msg) {
    Get.snackbar(
      "Warning",
      msg,
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}
