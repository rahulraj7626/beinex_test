import 'package:beinex_test/config/constants/style_constants.dart';
import 'package:beinex_test/src/home/presentation/widgets/text_widget.dart';
import 'package:flutter/material.dart';

import '../../../../config/constants/color_constants.dart';
import '../../domain/usecases/get_progress_value.dart';

class ProgressBar extends StatelessWidget {
  final String title;
  final int totalValue;
  final int completedValue;
  const ProgressBar({
    super.key,
    required this.title,
    required this.totalValue,
    required this.completedValue,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Ppadding.progressPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          progressText(title),
          Row(
            children: [
              Flexible(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: LinearProgressIndicator(
                      value: progressValue(totalValue, completedValue),
                      minHeight: 25,
                      backgroundColor: Colors.white,
                      color: CColors.red),
                ),
              ),
              progressValueText(completedValue.toString())
            ],
          ),
        ],
      ),
    );
  }
}
