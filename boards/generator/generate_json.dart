import 'dart:convert';
import 'dart:io';

import 'package:boards/metadata/boards.dart';
import 'package:boards/models/board_info.dart';

void main() {
  String dir = 'boards_metadata';
  Directory(dir).create().then((_) { print('Dir created ${dir}'); });

  String filename = '${dir}/boards_v2.json';
  File(filename).writeAsString(jsonEncode(boards)).then((File file) { print('finished writing to ${filename}');});
}
