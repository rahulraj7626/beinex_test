import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

class DateTimeUtils {
  static Future<String> pickDate(
    context,
  ) async {
    DateTime pickedDate = DateTime.now();
    // showCupertinoModalPopup is a built-in function of the cupertino library
    await showCupertinoModalPopup(
        context: context,
        builder: (_) => GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                height: 300,
                color: const Color.fromARGB(255, 255, 255, 255),
                child: CupertinoDatePicker(
                    mode: CupertinoDatePickerMode.date,
                    initialDateTime: pickedDate,
                    onDateTimeChanged: (val) {
                      pickedDate = val;
                    }),
              ),
            ));
    return formatDate(pickedDate).toString();
  }

  static Future<String> pickTime(
    context,
  ) async {
    DateTime pickedDate = DateTime.now();
    // showCupertinoModalPopup is a built-in function of the cupertino library
    await showCupertinoModalPopup(
        context: context,
        builder: (_) => GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                height: 300,
                color: const Color.fromARGB(255, 255, 255, 255),
                child: CupertinoDatePicker(
                    mode: CupertinoDatePickerMode.time,
                    initialDateTime: pickedDate,
                    onDateTimeChanged: (val) {
                      pickedDate = val;
                    }),
              ),
            ));
    return formatTime(pickedDate).toString();
  }

  static String formatDate(DateTime date) {
    return DateFormat('dd/MMMM/yyyy').format(date);
  }

  static String formatTime(DateTime date) {
    return DateFormat('hh:mm a').format(date);
  }
}
