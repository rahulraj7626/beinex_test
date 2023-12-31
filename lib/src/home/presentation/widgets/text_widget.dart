import 'package:flutter/material.dart';

import '../../../../config/constants/style_constants.dart';

Text textWidget(txt) {
  return Text(
    txt,
    style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
  );
}

Padding titleWidget(txt, bool isTitle) {
  return Padding(
    padding: Ppadding.titlePadding,
    child: Text(
      txt,
      style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 16,
          color: isTitle ? Colors.blue : Colors.black87),
    ),
  );
}

Padding progressText(txt) {
  return Padding(
    padding: Ppadding.ver4Padding,
    child: Text(
      txt,
      style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
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

Padding headWidget(txt, size) {
  return Padding(
    padding: Ppadding.defualtPadding,
    child: Text(
      txt,
      style: TextStyle(
          color: Colors.white,
          fontWeight: size == 18 ? FontWeight.w600 : FontWeight.w500,
          fontSize: double.parse(size.toString())),
    ),
  );
}
