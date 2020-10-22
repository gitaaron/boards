import 'dart:convert';
import 'dart:io';

import 'package:boards/models/board_info.dart';

void readFileAsync() {
  File file = new File('./out.json'); // (1)
  Future<String> futureContent = file.readAsString(); // (2)
  futureContent.then((c) {

    List<dynamic> boardObjs = jsonDecode(c);
    boardObjs.forEach((boardObj) {
      BoardInfo boardInfo = BoardInfo.fromJson(boardObj);
      print(boardInfo.type.uniqueName);
    });

  }); // (3)
}

void main() {
  readFileAsync();
}

