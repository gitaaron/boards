import 'package:boards/models/board_content.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:file/file.dart';

class SvgService {
  static Future<List<BoardContent>> loadBoard(String baseUrl, String boardName, int numPositions, int timeout) async {

    try {
      final String boardUrl = '${baseUrl}/board_svg/${boardName}/board.svg';

      Future<BoardContent> loadContent(int position, String path) async {
        File file = await DefaultCacheManager().getSingleFile(path);
        return BoardContent(position, await file.readAsString());
      }

      List<BoardContent> boardContents = [
        await loadContent(0, boardUrl),
      ];

      for (int i = 1; i <= numPositions; i++) {
        String overlayUrl = '${baseUrl}/board_svg/${boardName}/overlays/${i}.svg';
        boardContents.add(await loadContent(i, overlayUrl));
      }
      return boardContents;
    } catch(e) {
      timeout = timeout*timeout*2;
      return Future.delayed(Duration(seconds:timeout), () {
        return SvgService.loadBoard(baseUrl, boardName, numPositions, timeout);
      });
    }


  }
}