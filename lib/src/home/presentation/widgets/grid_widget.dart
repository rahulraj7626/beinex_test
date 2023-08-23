import 'package:beinex_test/config/constants/style_constants.dart';
import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import '../../data/datasources/constants.dart';
import '../../data/models/grid_item_model.dart';
import 'date_widget.dart';
import 'text_bg_widget.dart';
import 'text_widget.dart';
import 'widget_utils.dart';

class GridWdget extends StatefulWidget {
  final List<GridItem> data;
  const GridWdget({super.key, required this.data});

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
      boundaryMargin: EdgeInsets.all(20.0),
      // set min scale here
      minScale: 0.1,
      // set maximum scall here
      maxScale: 5.0,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: SingleChildScrollView(
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
                              children: titles.mapIndexed((ci, ce) {
                                return Padding(
                                  padding: Ppadding.defualtPadding,
                                  child: rowContent(ci, datas[di]),
                                );
                              }).toList(),
                            ),
                    )
                    .toList(),
              ),
            ),
          ),
        ),
      ),
    ));
  }
}

Widget rowContent(int index, GridItem item) {
  switch (index) {
    case 0:
      return textWidget("hhh");
    case 1:
      return textWidget("hhh");
    case 2:
      return textWidget("hhh");
    case 3:
      return dateWidget(true, "678869");
    case 4:
      return Text("bar diagram");
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
