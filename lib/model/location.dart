
import 'package:json_annotation/json_annotation.dart';
part 'location.g.dart';

@JsonSerializable()
class Location {
  String name;
  String country;
  Location(this.name, this.country);

  factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);
  Map<String, dynamic> toJson() => _$LocationToJson(this);
}
