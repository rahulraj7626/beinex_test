import 'package:flutter/material.dart';

import '../../../../config/constants/color_constants.dart';
import '../../../charts/domain/usecases/get_progress_value.dart';

///Progressbar widget
ClipRRect progressBar(int totalValue, int completedValue) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(6),
    child: LinearProgressIndicator(
        value: progressValue(totalValue, completedValue),
        minHeight: 28,
        backgroundColor: Colors.white,
        color: CColors.red),
  );
}
