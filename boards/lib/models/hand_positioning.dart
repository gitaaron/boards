import 'package:json_annotation/json_annotation.dart';

part 'hand_positioning.g.dart';

@JsonSerializable(explicitToJson:true, anyMap:true)
class HandPositioning {
  final int leftHandPosition;
  final int rightHandPosition;

  HandPositioning({this.leftHandPosition, this.rightHandPosition}) :
    assert(leftHandPosition!=null || rightHandPosition!=null);

  factory HandPositioning.fromJson(Map<String, dynamic> json) => _$HandPositioningFromJson(json);

  Map<String, dynamic> toJson() => _$HandPositioningToJson(this);

}