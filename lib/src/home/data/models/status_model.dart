import 'package:json_annotation/json_annotation.dart';
part 'status_model.g.dart';

@JsonSerializable()
class StatusModel {
  @JsonKey(name: 'current_count')
  final int currentCount;
  @JsonKey(name: 'total_count')
  final int totalCount;

  StatusModel({
    required this.currentCount,
    required this.totalCount,
  });
  factory StatusModel.fromJson(Map<String, dynamic> json) =>
      _$StatusModelFromJson(json);
  Map<String, dynamic> toJson() => _$StatusModelToJson(this);
}
