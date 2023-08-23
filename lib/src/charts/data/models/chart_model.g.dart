// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChartModel _$ChartModelFromJson(Map<String, dynamic> json) => ChartModel(
      total: json['total'] as int,
      completed: json['completed'] as int,
      title: json['title'] as String,
    );

Map<String, dynamic> _$ChartModelToJson(ChartModel instance) =>
    <String, dynamic>{
      'total': instance.total,
      'completed': instance.completed,
      'title': instance.title,
    };
