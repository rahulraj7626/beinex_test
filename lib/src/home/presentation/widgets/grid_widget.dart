import 'package:beinex_test/config/constants/style_constants.dart';
import 'package:beinex_test/src/home/presentation/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:get/get.dart';
import '../../../../config/app_utils/date_utils.dart';
import '../../../../route_manager/route.dart';
import '../../data/datasources/constants.dart';
import '../../data/models/grid_item_model.dart';
import 'date_widget.dart';
import 'progress_bar.dart';
import 'text_bg_widget.dart';
import 'text_widget.dart';
import 'widget_utils.dart';

class GridWdget extends StatefulWidget {
  final List<GridItem> data;
  final HomeController controller;

  const GridWdget({super.key, required this.data, required this.controller});

  @override
  State<GridWdget> createState() => _GridWdgetState();
}

class _GridWdgetState extends State<GridWdget> {
  final transformationController = TransformationController();
  @override
  Widget build(BuildContext context) {
    final datas = widget.data;
    return Center(
        child: InteractiveViewer(
      transformationController: transformationController,
      onInteractionEnd: (details) {
        setState(() {
          // unzoom when interaction has ended
          transformationController.toScene(Offset.zero);
        });
      },

      // set the boundary margin for the image
      boundaryMargin: const EdgeInsets.all(20.0),
      // set min scale here
      minScale: 0.1,
      // set maximum scall here
      maxScale: 5.0,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Table(
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            columnWidths: cellSize,
            border: TableBorder.all(color: Colors.grey),
            children: datas
                .mapIndexed(
                  (di, de) => di == 0
                      ? TableRow(
                          children: titles.mapIndexed((ti, te) {
                            return titleWidget(te);
                          }).toList(),
                        )
                      : TableRow(
                          decoration: BoxDecoration(
                              color:
                                  de.active! ? Colors.white : Colors.black12),
                          children: titles.mapIndexed((ci, ce) {
                            return GestureDetector(
                              onTap: () {
                                if (de.active!) {
                                  Get.toNamed(Routes.getChart(), arguments: [
                                    datas[di].itemId,
                                    datas[di].title
                                  ]);
                                }
                              },
                              child: Padding(
                                padding: Ppadding.defualtPadding,
                                child: rowContent(
                                    ci, datas[di], widget.controller, di),
                              ),
                            );
                          }).toList(),
                        ),
                )
                .toList(),
          ),
        ),
      ),
    ));
  }
}

Widget rowContent(int index, GridItem item, HomeController c, int i) {
  switch (index) {
    case 0:
      return textWidget(item.id.toString());
    case 1:
      return textWidget(item.itemId);
    case 2:
      return progressText(item.title);
    case 3:
      return DateWidget(
          status: true,
          date: DateTimeUtils.formatDateHiphen(item.date.toString()),
          index: i,
          c: c);
    case 4:
      return progressBar(item.status!.totalCount, item.status!.currentCount);
    case 5:
      return levelWidget(item.itemType1 != null ? [item.itemType1!] : []);
    case 6:
      return levelWidget(item.itemType2 != null ? [item.itemType2!] : []);
    case 7:
      return levelWidget(item.level1 ?? []);
    default:
      return levelWidget(item.level2 ?? []);
  }
}
