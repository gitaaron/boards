library boards;

import 'package:boards/models/board_info.dart';
import 'package:boards/models/board_type.dart';
import 'package:boards/models/hold.dart';
import 'package:boards/types.dart';

List<BoardInfo> boards = [
  BoardInfo('Mönster', BoardType.fromEnum(UniqueBoardName.monster), 'https://holdemporium.com/collections/training/products/monster-board', [
    Hold(1, 30, HorizontalBoardLocation.LEFT),
    Hold(2, 25, HorizontalBoardLocation.LEFT),
    Hold(3, 30, HorizontalBoardLocation.RIGHT),
    Hold(4, 25, HorizontalBoardLocation.RIGHT),
    Hold(5, 35, HorizontalBoardLocation.LEFT),
    Hold(6, 20, HorizontalBoardLocation.LEFT),
    Hold(7, 15, HorizontalBoardLocation.LEFT),
    Hold(8, 23, HorizontalBoardLocation.CENTER),
    Hold(9, 35, HorizontalBoardLocation.RIGHT),
    Hold(10, 20, HorizontalBoardLocation.RIGHT),
    Hold(11, 15, HorizontalBoardLocation.RIGHT),
    Hold(12, 12, HorizontalBoardLocation.LEFT),
    Hold(13, 10, HorizontalBoardLocation.LEFT),
    Hold(14, 8, HorizontalBoardLocation.LEFT),
    Hold(15, 16, HorizontalBoardLocation.CENTER),
    Hold(16, 12, HorizontalBoardLocation.RIGHT),
    Hold(17, 10, HorizontalBoardLocation.RIGHT),
    Hold(18, 8, HorizontalBoardLocation.RIGHT),
    Hold(19, 7, HorizontalBoardLocation.LEFT),
    Hold(20, 6, HorizontalBoardLocation.LEFT),
    Hold(21, 5, HorizontalBoardLocation.LEFT),
    Hold(22, 9, HorizontalBoardLocation.CENTER),
    Hold(23, 7, HorizontalBoardLocation.RIGHT),
    Hold(24, 6, HorizontalBoardLocation.RIGHT),
    Hold(25, 5, HorizontalBoardLocation.RIGHT),
  ]),
  BoardInfo(
    'Beastmaker 2000', BoardType.fromEnum(UniqueBoardName.beastmaker_2000), 'https://www.beastmaker.co.uk/products/beastmaker-2000-series', [
    Hold(1, 40, HorizontalBoardLocation.LEFT),
    Hold(2, 33, HorizontalBoardLocation.LEFT),
    Hold(3, 55, HorizontalBoardLocation.LEFT),
    Hold(4, 35, HorizontalBoardLocation.LEFT),
    Hold(5, 30, HorizontalBoardLocation.LEFT),
    Hold(6, 15, HorizontalBoardLocation.LEFT),
    Hold(7, 27, HorizontalBoardLocation.LEFT),
    Hold(8, 20, HorizontalBoardLocation.LEFT),
    Hold(9, 22, HorizontalBoardLocation.LEFT),
    Hold(10, 52, HorizontalBoardLocation.CENTER),
    Hold(11, 21, HorizontalBoardLocation.CENTER),
    Hold(12, 20, HorizontalBoardLocation.RIGHT),
    Hold(13, 30, HorizontalBoardLocation.RIGHT),
    Hold(14, 35, HorizontalBoardLocation.RIGHT),
    Hold(15, 55, HorizontalBoardLocation.RIGHT),
    Hold(16, 33, HorizontalBoardLocation.RIGHT),
    Hold(17, 22, HorizontalBoardLocation.RIGHT),
    Hold(18, 20, HorizontalBoardLocation.RIGHT),
    Hold(19, 27, HorizontalBoardLocation.RIGHT),
    Hold(20, 15, HorizontalBoardLocation.RIGHT),
    Hold(21, 50, HorizontalBoardLocation.LEFT),
    Hold(22, 50, HorizontalBoardLocation.RIGHT),
  ]),
];

