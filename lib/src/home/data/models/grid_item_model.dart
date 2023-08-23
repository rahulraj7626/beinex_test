import 'package:beinex_test/src/home/data/models/level_model.dart';
import 'package:json_annotation/json_annotation.dart';

import 'status_model.dart';
part 'grid_item_model.g.dart';

@JsonSerializable()
class GridItem {
  final int? id;
  final String? title;
  @JsonKey(name: 'item_id')
  final String? itemId;
  final bool? active;
  String? date;
  final bool? overdue;
  @JsonKey(name: 'item_type1')
  final LevelModel? itemType1;
  @JsonKey(name: 'item_type2')
  final LevelModel? itemType2;
  @JsonKey(defaultValue: [])
  final List<LevelModel>? level1;
  @JsonKey(defaultValue: [])
  final List<LevelModel>? level2;
  final StatusModel? status;

  GridItem({
    this.id,
    this.title,
    this.itemId,
    this.active,
    this.date,
    this.overdue,
    this.itemType1,
    this.itemType2,
    this.level1,
    this.level2,
    this.status,
  });
  factory GridItem.fromJson(Map<String, dynamic> json) =>
      _$GridItemFromJson(json);
  Map<String, dynamic> toJson() => _$GridItemToJson(this);
}
