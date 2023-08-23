import 'package:flutter/material.dart';

Row dateWidget(bool status, date) {
  return Row(
    children: [
      Icon(Icons.calendar_month),
      Text(date),
    ],
  );
}
