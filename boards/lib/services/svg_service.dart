import 'package:boards/helpers.dart';
import 'package:boards/models/board_content.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:file/file.dart';
import 'package:flutter_cache_manager_firebase/flutter_cache_manager_firebase.dart';

class SvgService {
  static Future<List<BoardContent>> loadBoard(String baseUrl, String boardName, int numPositions, int timeout) async {

    try {
      final String boardUrl = '${baseUrl}/board_svg/${boardName}/board.svg';

      Future<BoardContent> loadContent(int position, String path) async {
        if(getProtocol(baseUrl)=='gs') {
          path = firebasePath(path);
          File file = await FirebaseCacheManager().getSingleFile(path);
          return BoardContent(position, await file.readAsString());
        } else {
          File file = await DefaultCacheManager().getSingleFile(path);
          return BoardContent(position, await file.readAsString());
        }

      }

      List<Future<BoardContent>> boardContents = [
        loadContent(0, boardUrl),
      ];

      for (int i = 1; i <= numPositions; i++) {
        String overlayUrl = '${baseUrl}/board_svg/${boardName}/overlays/${i}.svg';
        boardContents.add(loadContent(i, overlayUrl));
      }

      return Future.wait(boardContents);
    } catch(e) {
      print(e);
      timeout = timeout*timeout*2;
      return Future.delayed(Duration(seconds:timeout), () {
        return SvgService.loadBoard(baseUrl, boardName, numPositions, timeout);
      });
    }


  }
}