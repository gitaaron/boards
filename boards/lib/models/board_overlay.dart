import 'package:boards/models/hand_positioning.dart';
import 'package:json_annotation/json_annotation.dart';

part 'board_overlay.g.dart';

@JsonSerializable(explicitToJson:true, anyMap:true)
class BoardOverlay {
  List<int> _positions = [];

  List<int> get positions {
    return _positions;
  }

  void addPosition(int position) {
    if(position!=null) {
      _positions.add(position);
    }
  }

  BoardOverlay(List<int> positions) {
    _positions = positions;
  }

  Map<String, dynamic> toJson() => _$BoardOverlayToJson(this);

  factory BoardOverlay.fromJson(Map<String, dynamic> json) {
    if(json['positions']!=null && json['positions'] is List<dynamic>) {
      for(var i=0; i < json['positions'].length; i++) {
        if(json['positions'][i] is String) {
          json['positions'][i] = int.parse(json['positions'][i]);
        }
      }
      
    }
    BoardOverlay boardOverlay = _$BoardOverlayFromJson(json);   
    return boardOverlay;
  }

  factory BoardOverlay.makeCopy(BoardOverlay from) {
    return BoardOverlay(from.positions);
  }

  factory BoardOverlay.fromHandPositioning(HandPositioning handPositioning) {
    BoardOverlay boardOverlay = BoardOverlay([]);

    if(handPositioning.leftHandPosition!=null) {
      boardOverlay.addPosition(handPositioning.leftHandPosition!);
    }

    if(handPositioning.rightHandPosition!=null) {
      boardOverlay.addPosition(handPositioning.rightHandPosition!);
    }
    return boardOverlay;
  }


}