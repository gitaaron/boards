import 'dart:convert';

import 'package:boards/constants.dart';
import 'package:boards/models/board_info.dart';
import 'package:boards/models/boards_map.dart';
import 'package:http/http.dart' as http;

class BoardInfoService {
  static Future<BoardsMap> loadBoards({String baseUrl}) async {
    baseUrl ??= BASE_URL;
    String boardUrl = '${baseUrl}/board_metadata/boards.json';
    final response = await http.get(boardUrl);
    if(response.statusCode == 200) {
      List<dynamic> boardObjs = jsonDecode(response.body.toString());
      List<BoardInfo> boards = boardObjs.map((boardObj) => BoardInfo.fromJson(boardObj));
      return BoardsMap(boards);
    } else {
      throw Exception('Failed to load boards.');
    }

  }
}