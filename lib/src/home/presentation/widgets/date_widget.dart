import 'package:beinex_test/config/constants/style_constants.dart';
import 'package:beinex_test/src/home/presentation/widgets/text_widget.dart';
import 'package:flutter/material.dart';

Row dateWidget(
  bool status,
  date,
) {
  return Row(
    children: [
      Padding(
        padding: Ppadding.ver4Padding,
        child: Icon(
          Icons.calendar_month,
          color: status ? Colors.red : Colors.green,
        ),
      ),
      textWidget(date)
    ],
  );
}
