import 'package:json_annotation/json_annotation.dart';

import 'current.dart';
import 'location.dart';
part 'weather.g.dart';

@JsonSerializable()
class WeatherModel {
  Location location;
  Current current;

  WeatherModel(this.location, this.current);

  factory WeatherModel.fromJson(Map<String, dynamic> json) => _$WeatherModelFromJson(json);
  Map<String, dynamic> toJson() => _$WeatherModelToJson(this);
}