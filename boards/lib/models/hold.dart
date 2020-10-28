import 'package:boards/types.dart';
import 'package:json_annotation/json_annotation.dart';

part 'hold.g.dart';

@JsonSerializable(explicitToJson: true, anyMap: true)
class Hold {
  final int position;
  final int edge;
  final int order;
  final HorizontalBoardLocation location;
  Hold(this.order, this.edge, this.position, this.location);

  Map<String, dynamic> toJson() => _$HoldToJson(this);
  factory Hold.fromJson(Map<String, dynamic> json) => _$HoldFromJson(json);
}