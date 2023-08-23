import 'package:json_annotation/json_annotation.dart';
part 'level_model.g.dart';

@JsonSerializable()
class LevelModel {
  @JsonKey(defaultValue: "")
  final String? value;
  @JsonKey(defaultValue: "#ffffff")
  final String? color;

  LevelModel({
    required this.value,
    required this.color,
  });
  factory LevelModel.fromJson(Map<String, dynamic> json) =>
      _$LevelModelFromJson(json);
  Map<String, dynamic> toJson() => _$LevelModelToJson(this);
}
