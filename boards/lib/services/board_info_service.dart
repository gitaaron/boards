import 'dart:convert';
import 'dart:io';

import 'package:boards/constants.dart';
import 'package:boards/models/board_info.dart';
import 'package:boards/models/boards_map.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_cache_manager/src/storage/cache_object.dart';

http.Client client = http.Client();

class BoardInfoService {

  static Future<BoardsMap> loadBoards({String baseUrl}) async {
    DefaultCacheManager cacheManager = DefaultCacheManager();
    baseUrl ??= BASE_URL;
    String boardUrl = '${baseUrl}/boards_metadata/boards.json';
    final File file = await cacheManager.getSingleFile(boardUrl);
    List<dynamic> boardObjs = jsonDecode(await file.readAsString());
    List<BoardInfo> boards = boardObjs.map((boardObj) => BoardInfo.fromJson(boardObj)).toList();
    cacheManager.store.retrieveCacheData(boardUrl).then((CacheObject cacheObj) {
      client.head(boardUrl).then((http.Response resp) {
        if(cacheObj.eTag!=resp.headers['etag']) {
          cacheManager.removeFile(boardUrl).then((_) {
            cacheManager.getSingleFile(boardUrl);
          });

        }
      });
    });

    return BoardsMap(boards);

  }
}