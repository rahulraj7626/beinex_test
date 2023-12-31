import 'package:beinex_test/config/constants/style_constants.dart';
import 'package:beinex_test/src/home/presentation/controller/home_controller.dart';
import 'package:beinex_test/src/home/presentation/widgets/text_widget.dart';
import 'package:flutter/material.dart';

import '../../../../config/app_utils/date_utils.dart';
import '../../../../config/common_widgets/alert.dart';

///Date widget of grid view
class DateWidget extends StatelessWidget {
  final bool status;
  final String date;
  final int index;
  final HomeController c;
  const DateWidget({
    super.key,
    required this.status,
    required this.date,
    required this.index,
    required this.c,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        ///Check whether the status
        if (!status) {
          await DateTimeUtils.pickDate(context)
              .then((value) => c.changeDate(index, value));
        } else {
          AppAlert.showSnackBar("Not Overdue");
        }
      },
      child: Row(
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
      ),
    );
  }
}
