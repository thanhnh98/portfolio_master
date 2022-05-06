import 'package:json_annotation/json_annotation.dart';
import 'package:portfolio_master/model/condition.dart';
part 'current.g.dart';

@JsonSerializable()
class Current {
  Condition condition;
  Current(this.condition);

  factory Current.fromJson(Map<String, dynamic> json) => _$CurrentFromJson(json);
  Map<String, dynamic> toJson() => _$CurrentToJson(this);
}