import 'package:json_annotation/json_annotation.dart';
part 'chart_model.g.dart';

@JsonSerializable()
class ChartModel {
  final int total;

  final int completed;
  final String title;

  ChartModel({
    required this.total,
    required this.completed,
    required this.title,
  });
  factory ChartModel.fromJson(Map<String, dynamic> json) =>
      _$ChartModelFromJson(json);
  Map<String, dynamic> toJson() => _$ChartModelToJson(this);
}
