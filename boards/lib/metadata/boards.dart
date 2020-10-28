library boards;

import 'package:boards/models/board_info.dart';
import 'package:boards/models/board_type.dart';
import 'package:boards/models/hold.dart';
import 'package:boards/types.dart';

List<BoardInfo> boards = [
  BoardInfo('Mönster', BoardType.fromEnum(UniqueBoardName.monster), 'https://holdemporium.com/collections/training/products/monster-board', [
    Hold(1, 30, 1, HorizontalBoardLocation.LEFT),
    Hold(2, 25, 2, HorizontalBoardLocation.LEFT),
    Hold(3, 30, 3, HorizontalBoardLocation.RIGHT),
    Hold(4, 25, 4, HorizontalBoardLocation.RIGHT),
    Hold(5, 35, 5, HorizontalBoardLocation.LEFT),
    Hold(6, 20, 6, HorizontalBoardLocation.LEFT),
    Hold(7, 15, 7, HorizontalBoardLocation.LEFT),
    Hold(8, 23, 8, HorizontalBoardLocation.CENTER),
    Hold(9, 35, 9, HorizontalBoardLocation.RIGHT),
    Hold(10, 20, 10, HorizontalBoardLocation.RIGHT),
    Hold(11, 15, 11, HorizontalBoardLocation.RIGHT),
    Hold(12, 12, 12, HorizontalBoardLocation.LEFT),
    Hold(13, 10, 13, HorizontalBoardLocation.LEFT),
    Hold(14, 8, 14, HorizontalBoardLocation.LEFT),
    Hold(15, 16, 15, HorizontalBoardLocation.CENTER),
    Hold(16, 12, 16, HorizontalBoardLocation.RIGHT),
    Hold(17, 10, 17, HorizontalBoardLocation.RIGHT),
    Hold(18, 8, 18, HorizontalBoardLocation.RIGHT),
    Hold(19, 7, 19, HorizontalBoardLocation.LEFT),
    Hold(20, 6, 20, HorizontalBoardLocation.LEFT),
    Hold(21, 5, 21, HorizontalBoardLocation.LEFT),
    Hold(22, 9, 22, HorizontalBoardLocation.CENTER),
    Hold(23, 7, 23, HorizontalBoardLocation.RIGHT),
    Hold(24, 6, 24, HorizontalBoardLocation.RIGHT),
    Hold(25, 5, 25, HorizontalBoardLocation.RIGHT),
  ]),
  BoardInfo(
    'Beastmaker 2000', BoardType.fromEnum(UniqueBoardName.beastmaker_2000), 'https://www.beastmaker.co.uk/products/beastmaker-2000-series', [
    Hold(1, 40, 1, HorizontalBoardLocation.LEFT),
    Hold(2, 33, 2, HorizontalBoardLocation.LEFT),
    Hold(3, 55, 3, HorizontalBoardLocation.LEFT),
    Hold(4, 35, 4, HorizontalBoardLocation.LEFT),
    Hold(5, 30, 5, HorizontalBoardLocation.LEFT),
    Hold(6, 15, 6, HorizontalBoardLocation.LEFT),
    Hold(7, 27, 7, HorizontalBoardLocation.LEFT),
    Hold(8, 20, 8, HorizontalBoardLocation.LEFT),
    Hold(9, 22, 9, HorizontalBoardLocation.LEFT),
    Hold(10, 52, 10, HorizontalBoardLocation.CENTER),
    Hold(11, 21, 11, HorizontalBoardLocation.CENTER),
    Hold(12, 20, 12, HorizontalBoardLocation.RIGHT),
    Hold(13, 30, 13, HorizontalBoardLocation.RIGHT),
    Hold(14, 35, 14, HorizontalBoardLocation.RIGHT),
    Hold(15, 55, 15, HorizontalBoardLocation.RIGHT),
    Hold(16, 33, 16, HorizontalBoardLocation.RIGHT),
    Hold(17, 22, 17, HorizontalBoardLocation.RIGHT),
    Hold(18, 20, 18, HorizontalBoardLocation.RIGHT),
    Hold(19, 27, 19, HorizontalBoardLocation.RIGHT),
    Hold(20, 15, 20, HorizontalBoardLocation.RIGHT),
    Hold(21, 50, 21, HorizontalBoardLocation.LEFT),
    Hold(22, 50, 22, HorizontalBoardLocation.RIGHT),
  ]),
  BoardInfo(
    'Beastmaker 1000', BoardType.fromEnum(UniqueBoardName.beastmaker_1000), 'https://www.beastmaker.co.uk/products/beastmaker-1000-series', [
      Hold(1, 15, 1, HorizontalBoardLocation.LEFT),
      Hold(2, 30, 2, HorizontalBoardLocation.LEFT),
      Hold(3, 45, 3, HorizontalBoardLocation.LEFT),
      Hold(4, 50, 4, HorizontalBoardLocation.LEFT),
      Hold(5, 44, 5, HorizontalBoardLocation.LEFT),
      Hold(6, 52, 6, HorizontalBoardLocation.CENTER),
      Hold(7, 20, 7, HorizontalBoardLocation.LEFT),
      Hold(8, 25, 8, HorizontalBoardLocation.LEFT),
      Hold(9, 20, 9, HorizontalBoardLocation.LEFT),
      Hold(10, 30, 10, HorizontalBoardLocation.RIGHT),
      Hold(11, 15, 11, HorizontalBoardLocation.RIGHT),
      Hold(12, 44, 12, HorizontalBoardLocation.RIGHT),
      Hold(13, 50, 13, HorizontalBoardLocation.RIGHT),
      Hold(14, 45, 14, HorizontalBoardLocation.RIGHT),
      Hold(15, 20, 15, HorizontalBoardLocation.RIGHT),
      Hold(16, 25, 16, HorizontalBoardLocation.RIGHT),
      Hold(17, 20, 17, HorizontalBoardLocation.RIGHT),
  ]
  ),
  BoardInfo(
    'Metolius Project', BoardType.fromEnum(UniqueBoardName.metolius_project), 'https://www.metoliusclimbing.com/project-board.html', [
      Hold(1, 45, 1, HorizontalBoardLocation.LEFT),
      Hold(2, 30, 2, HorizontalBoardLocation.LEFT),
      Hold(3, 40, 3, HorizontalBoardLocation.LEFT),
      Hold(4, 22, 4, HorizontalBoardLocation.LEFT),
      Hold(5, 22, 5, HorizontalBoardLocation.LEFT),
      Hold(6, 45, 8, HorizontalBoardLocation.RIGHT),
      Hold(7, 30, 10, HorizontalBoardLocation.RIGHT),
      Hold(8, 40, 9, HorizontalBoardLocation.RIGHT),
      Hold(9, 22, 12, HorizontalBoardLocation.RIGHT),
      Hold(10, 22, 11, HorizontalBoardLocation.RIGHT),
      Hold(11, 39, 6, HorizontalBoardLocation.CENTER),
      Hold(12, 16, 7, HorizontalBoardLocation.CENTER),
  ]
  )

];

