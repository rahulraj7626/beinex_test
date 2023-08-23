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

Padding progressText(txt) {
  return Padding(
    padding: Ppadding.ver4Padding,
    child: Text(
      txt,
      style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
    ),
  );
}

Padding progressValueText(txt) {
  return Padding(
    padding: Ppadding.ver4Padding,
    child: Text(
      txt,
      style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
    ),
  );
}
