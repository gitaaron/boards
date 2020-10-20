import 'package:boards/models/board_overlay.dart';
import 'package:boards/models/hold.dart';
import 'package:boards/types.dart';

class BoardInfo {
  final String displayName;
  final BoardType type;
  final String path;
  final List<Hold> holds;
  List<int> _edgesAvailable;
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

  int edgeFromPosition(int position) {
    int edge;
    holds.forEach((Hold hold) {
      if(hold.position==position) edge = hold.edge;
    });
    return edge;
  }

  int positionFromEdge(int edge, HorizontalBoardLocation location) {
    int position;
    int centerPosition;

    holds.forEach((Hold hold) {
      if(hold.edge==edge && hold.location==location) {
        position = hold.position;
      }

      if(hold.edge==edge && hold.location==HorizontalBoardLocation.CENTER) {
        centerPosition = hold.position;
      }

    });

    return position ?? centerPosition;

  }

  Map<int, BoardOverlay> get edgeOverlayMap { return _edgeOverlayMap; }

  BoardInfo(this.displayName, this.type, this.path, this.holds) {
    _edgeOverlayMap = {};
    _edgesAvailable = [];

    holds.forEach((Hold hold) {
      if(!(_positions[hold.position] ?? false)) {
        _positionCount += 1;
        _positions[hold.position] = true;
      }
      if(!_edgesAvailable.contains(hold.edge)) _edgesAvailable.add(hold.edge);
      if(_edgeOverlayMap[hold.edge]==null) {
        _edgeOverlayMap[hold.edge] = BoardOverlay([hold.position]);
      } else {
        _edgeOverlayMap[hold.edge].addPosition(hold.position);
      }

    });

    _edgesAvailable.sort();

  }
}
