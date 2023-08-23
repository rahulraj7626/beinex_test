import 'package:flutter/material.dart';

import '../../../../config/constants/style_constants.dart';

Text textWidget(txt) {
  return Text(
    txt,
    style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
  );
}

Padding titleWidget(txt) {
  return Padding(
    padding: Ppadding.titlePadding,
    child: Text(
      txt,
      style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
    ),
  );
}
