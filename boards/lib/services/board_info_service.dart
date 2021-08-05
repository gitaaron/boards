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

  static Future<BoardsMap> loadBoards({String? baseUrl, String? baseScheme, String? path}) async {
    DefaultCacheManager cacheManager = DefaultCacheManager();
    baseUrl ??= BASE_HOST;
    path ??= BASE_PATH;
    String boardUrlAsString = '${baseScheme ?? BASE_SCHEME}://${baseUrl}/${path}';
    final File file = await cacheManager.getSingleFile(boardUrlAsString);
    List<dynamic> boardObjs = jsonDecode(await file.readAsString());
    List<BoardInfo> boards = boardObjs.map((boardObj) => BoardInfo.fromJson(boardObj)).toList();
    cacheManager.store.retrieveCacheData(boardUrlAsString).then((CacheObject? cacheObj) {
      client.head(Uri.http(baseUrl!, path!, {})).then((http.Response resp) {
        if(cacheObj?.eTag!=resp.headers['etag']) {
          cacheManager.removeFile(boardUrlAsString).then((_) {
            cacheManager.getSingleFile(boardUrlAsString);
          });
        }
      });
    });
    return BoardsMap(boards);

  }
}
