library boards;

import 'package:boards/models/board_info.dart';
import 'package:boards/models/hold.dart';
import 'package:boards/types.dart';


List<BoardInfo> boards = [

  BoardInfo('Mönster', BoardType.MONSTER, 'monster', [
    Hold(1, 30),
    Hold(2, 25),
    Hold(3, 30),
    Hold(4, 25),
    Hold(5, 35),
    Hold(6, 20),
    Hold(7, 15),
    Hold(8, 23),
    Hold(9, 35),
    Hold(10, 20),
    Hold(11, 15),
    Hold(12, 12),
    Hold(13, 10),
    Hold(14, 8),
    Hold(15, 16),
    Hold(16, 12),
    Hold(17, 10),
    Hold(18, 8),
    Hold(19, 7),
    Hold(20, 6),
    Hold(21, 5),
    Hold(22, 9),
    Hold(23, 7),
    Hold(24, 6),
    Hold(25, 5),
  ]),
  BoardInfo('Beastmaker 2000', BoardType.BEASTMAKER_2000, 'beastmaker_2000', [
    Hold(1, 40),
    Hold(2, 33),
    Hold(3, 55),
    Hold(4, 35),
    Hold(4, 50),
    Hold(5, 30),
    Hold(6, 15),
    Hold(7, 27),
    Hold(8, 20),
    Hold(9, 22),
    Hold(10, 52),
    Hold(11, 21),
    Hold(12, 20),
    Hold(13, 30),
    Hold(14, 35),
    Hold(14, 50),
    Hold(15, 55),
    Hold(16, 33),
    Hold(17, 22),
    Hold(18, 20),
    Hold(19, 27),
    Hold(20, 15),
  ]),
];

Map<BoardType, BoardInfo> boardsMap = {
  BoardType.MONSTER:boards[0],
  BoardType.BEASTMAKER_2000:boards[1],
};
