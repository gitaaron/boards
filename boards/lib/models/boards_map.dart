import 'package:boards/models/board_info.dart';
import 'package:boards/models/board_type.dart';

class BoardsMap {
  final List<BoardInfo> boards;
  BoardsMap(this.boards);

  BoardInfo getInfo(BoardType type) {
    return boards.firstWhere((BoardInfo boardInfo) {
      return boardInfo.type.uniqueName==type.uniqueName;
    }, orElse:() { throw Exception('Board of type ${type.uniqueName} not found.');}
    );
  }
}