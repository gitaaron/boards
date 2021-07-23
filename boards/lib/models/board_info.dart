import 'package:boards/constants.dart';
import 'package:boards/models/board_overlay.dart';
import 'package:boards/models/board_type.dart';
import 'package:boards/models/hold.dart';
import 'package:boards/types.dart';
import 'package:json_annotation/json_annotation.dart';

part 'board_info.g.dart';

@JsonSerializable(explicitToJson: true, anyMap: true)
class BoardInfo {
  int version = CURRENT_VERSION;
  final String displayName;
  final BoardType type;
  final List<Hold> holds;
  final String homePage;
  List<int> _edgesAvailable;
  List<Hold> _holdsAvailableForLeft;
  List<Hold> _holdsAvailableForRight;
  Map<int, BoardOverlay> _edgeOverlayMap;
  int _positionCount = 0;
  Map _positions = {};

  int get numHolds {
    return holds.length;
  }

  int get numPositions {
    return _positionCount;
  }

  List<int> get edgesAvailable {
    return _edgesAvailable;
  }

  List<Hold> holdsAvailableForSide(HorizontalBoardLocation side) {
    switch(side) {
      case(HorizontalBoardLocation.LEFT) : {
        return _holdsAvailableForLeft;
      }
      break;
      case(HorizontalBoardLocation.RIGHT) : {
        return _holdsAvailableForRight;
      }
      break;
      default : {
        throw UnimplementedError('edges available not calculated for side ${side}');
      }
      break;
    }
  }

  int get easiestEdge {
    return _edgesAvailable.last;
  }

  bool containsEdge(int edge) {
    return _edgesAvailable.contains(edge);
  }

  int nearestEdge(int edge) {
    for(int edgeToFind in _edgesAvailable) {
      if(edgeToFind >= edge) {
        return edgeToFind;
      }
    }
    return _edgesAvailable.last;
  }

  int? edgeFromPosition(int position) {
    int? edge;
    holds.forEach((Hold hold) {
      if(hold.position==position) edge = hold.depth;
    });
    return edge;
  }


  Hold? holdFromEdge(int edge, HorizontalBoardLocation location) {
    Hold? hold;
    Hold? centerHold;
    holds.forEach((Hold holdToTest) {
      if(holdToTest.depth==edge && holdToTest.location==location) {
        hold = holdToTest;
      }

      if(holdToTest.depth==edge && holdToTest.location==HorizontalBoardLocation.CENTER) {
        centerHold = holdToTest;
      }

    });

    if(hold==null) {
      return centerHold;
    } else {
      return hold;
    }

  }

  int? positionFromEdge(int edge, HorizontalBoardLocation location) {
    return holdFromEdge(edge, location)?.position;
  }

  Map<int, BoardOverlay> get edgeOverlayMap { return _edgeOverlayMap; }

  int compareHold(Hold a, Hold b) {
    if(a.order<b.order) return -1;
    return 1;
  }

  BoardInfo(this.displayName, this.type, this.homePage, this.holds) :
    _edgeOverlayMap = {},
    _edgesAvailable = [],
    _holdsAvailableForLeft = [],
    _holdsAvailableForRight = []
  {

    holds.forEach((Hold hold) {
      if(!(_positions[hold.position] ?? false)) {
        _positionCount += 1;
        _positions[hold.position] = true;
      }
      if(hold.depth!=null && hold.type==HoldType.EDGE && !_edgesAvailable.contains(hold.depth)) _edgesAvailable.add(hold.depth!);
      if(!_holdsAvailableForLeft.contains(hold) && (hold.location==HorizontalBoardLocation.CENTER || hold.location==HorizontalBoardLocation.LEFT)) _holdsAvailableForLeft.add(hold);
      if(!_holdsAvailableForRight.contains(hold) && (hold.location==HorizontalBoardLocation.CENTER || hold.location==HorizontalBoardLocation.RIGHT)) _holdsAvailableForRight.add(hold);

      if(hold.depth!=null && _edgeOverlayMap[hold.depth]==null) {
        _edgeOverlayMap[hold.depth!] = BoardOverlay([hold.position]);
      } else {
        _edgeOverlayMap[hold.depth]?.addPosition(hold.position);
      }

    });

    _edgesAvailable.sort();
    _holdsAvailableForLeft.sort(compareHold);
    _holdsAvailableForRight.sort(compareHold);

  }

  Map<String, dynamic> toJson() => _$BoardInfoToJson(this);
  factory BoardInfo.fromJson(Map<String, dynamic> json) => _$BoardInfoFromJson(json);
}
