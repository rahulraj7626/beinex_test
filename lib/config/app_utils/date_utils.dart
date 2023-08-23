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

  static String formatTime(DateTime date) {
    return DateFormat('hh:mm a').format(date);
  }

  static String formatDateHiphen(String date) {
    DateTime nDate = DateFormat("yyyy-MM-dd").parse(date);
    return format(nDate);
  }

  static String formatDate(DateTime date) {
    return DateFormat('dd MMMM yyyy').format(date);
  }

  static String format(DateTime date) {
    var suffix = "th";
    var digit = date.day % 10;
    if ((digit > 0 && digit < 4) && (date.day < 11 || date.day > 13)) {
      suffix = ["st", "nd", "rd"][digit - 1];
    }
    return DateFormat("d'$suffix' MMMM yyyy").format(date);
  }
}
