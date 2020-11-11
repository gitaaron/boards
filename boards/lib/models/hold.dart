import 'package:boards/types.dart';
import 'package:json_annotation/json_annotation.dart';

part 'hold.g.dart';

@JsonSerializable(explicitToJson: true, anyMap: true)
class Hold {
  final int position;
  final int depth;
  final int order;
  final HorizontalBoardLocation location;
  final HoldType type;

  Hold(this.type, this.order, this.depth, this.position, this.location, ) : assert(
    type!=HoldType.EDGE || depth!=null
  );

  String get typeAsString {
    return type.toString().split('.')[1];
  }

  String get descriptor {
    if(type==HoldType.EDGE) {
      return '${depth} mm';
    } else {
      return '${location.toString().split('.')[1]}';
    }
  }

  Map<String, dynamic> toJson() => _$HoldToJson(this);
  factory Hold.fromJson(Map<String, dynamic> json) => _$HoldFromJson(json);
}