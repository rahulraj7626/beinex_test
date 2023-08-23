import 'package:beinex_test/src/home/presentation/widgets/text_widget.dart';
import 'package:flutter/material.dart';

import 'package:collection/collection.dart';
import '../../../../config/constants/color_constants.dart';
import '../../data/models/level_model.dart';

Widget levelWidget(List<LevelModel> levels) {
  return SizedBox(
      width: 120,
      child: Wrap(
        children: levels.mapIndexed((i, e) {
          return bgContainer(hexToColor(e.color!), e.value);
        }).toList(),
      ));
}

Container bgContainer(Color color, txt) {
  return Container(
      margin: const EdgeInsets.all(4),
      padding: const EdgeInsets.all(6),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(8)),
      child: textWidget(txt));
}
