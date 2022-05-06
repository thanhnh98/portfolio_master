import 'package:json_annotation/json_annotation.dart';
part 'condition.g.dart';

@JsonSerializable()
class Condition {
  String text;
  String icon;

  Condition(this.text, this.icon);

  factory Condition.fromJson(Map<String, dynamic> json) => _$ConditionFromJson(json);
  Map<String, dynamic> toJson() => _$ConditionToJson(this);
}