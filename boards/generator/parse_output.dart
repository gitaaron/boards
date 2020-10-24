import 'dart:convert';
import 'dart:io';

import 'package:boards/models/board_info.dart';

void readFileAsync() {
  File file = new File('../boards_metadata/boards.json'); // (1)
  Future<String> futureContent = file.readAsString(); // (2)
  futureContent.then((c) {

    List<dynamic> boardObjs = jsonDecode(c);
    List<BoardInfo> boards = boardObjs.map((boardObj) => BoardInfo.fromJson(boardObj)).toList();
    print(boards[0].type.uniqueName);
    boardObjs.forEach((boardObj) {
      BoardInfo boardInfo = BoardInfo.fromJson(boardObj);
      print(boardInfo.type.uniqueName);
    });

  }); // (3)
}

void main() {
  readFileAsync();
}

