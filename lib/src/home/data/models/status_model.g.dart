// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StatusModel _$StatusModelFromJson(Map<String, dynamic> json) => StatusModel(
      currentCount: json['current_count'] as int,
      totalCount: json['total_count'] as int,
    );

Map<String, dynamic> _$StatusModelToJson(StatusModel instance) =>
    <String, dynamic>{
      'current_count': instance.currentCount,
      'total_count': instance.totalCount,
    };
