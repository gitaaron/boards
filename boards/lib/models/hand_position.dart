
import 'package:boards/types.dart';
import 'package:json_annotation/json_annotation.dart';

part 'hand_position.g.dart';

@JsonSerializable(explicitToJson:true, anyMap:true)
class HandPosition {
  final Hand hand;
  final int position;

  HandPosition(this.hand, this.position);


}