// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grid_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GridItem _$GridItemFromJson(Map<String, dynamic> json) => GridItem(
      id: json['id'] as int?,
      title: json['title'] as String?,
      itemId: json['item_id'] as String?,
      active: json['active'] as bool?,
      date: json['date'] as String?,
      overdue: json['overdue'] as bool?,
      itemType1: json['item_type1'] == null
          ? null
          : LevelModel.fromJson(json['item_type1'] as Map<String, dynamic>),
      itemType2: json['item_type2'] == null
          ? null
          : LevelModel.fromJson(json['item_type2'] as Map<String, dynamic>),
      level1: (json['level1'] as List<dynamic>?)
              ?.map((e) => LevelModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      level2: (json['level2'] as List<dynamic>?)
              ?.map((e) => LevelModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      status: json['status'] == null
          ? null
          : StatusModel.fromJson(json['status'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GridItemToJson(GridItem instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'item_id': instance.itemId,
      'active': instance.active,
      'date': instance.date,
      'overdue': instance.overdue,
      'item_type1': instance.itemType1,
      'item_type2': instance.itemType2,
      'level1': instance.level1,
      'level2': instance.level2,
      'status': instance.status,
    };
