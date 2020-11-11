library boards;

import 'package:boards/models/board_info.dart';
import 'package:boards/models/board_type.dart';
import 'package:boards/models/hold.dart';
import 'package:boards/types.dart';

List<BoardInfo> boards = [
  BoardInfo('Mönster', BoardType.fromEnum(UniqueBoardName.monster), 'https://holdemporium.com/collections/training/products/monster-board', [
    Hold(HoldType.EDGE, 1, 30, 1, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 2, 25, 2, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 3, 35, 5, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 4, 20, 6, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 5, 15, 7, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 6, 12, 12, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 7, 10, 13, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 8, 8, 14, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 9, 7, 19, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 10, 6, 20, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 11, 5, 21, HorizontalBoardLocation.LEFT),


    Hold(HoldType.EDGE, 12, 30, 3, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 13, 25, 4, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 14, 35, 9, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 15, 20, 10, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 16, 15, 11, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 17, 12, 16, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 18, 10, 17, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 19, 8, 18, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 20, 7, 23, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 21, 6, 24, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 22, 5, 25, HorizontalBoardLocation.RIGHT),

    Hold(HoldType.EDGE, 23, 23, 8, HorizontalBoardLocation.CENTER),
    Hold(HoldType.EDGE, 24, 16, 15, HorizontalBoardLocation.CENTER),
    Hold(HoldType.EDGE, 25, 9, 22, HorizontalBoardLocation.CENTER),

  ]),
  BoardInfo(
    'Beastmaker 1000', BoardType.fromEnum(UniqueBoardName.beastmaker_1000), 'https://www.beastmaker.co.uk/products/beastmaker-1000-series', [
    Hold(HoldType.EDGE, 1, 15, 1, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 2, 30, 2, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 3, 45, 3, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 4, 50, 4, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 5, 44, 5, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 6, 20, 7, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 7, 25, 8, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 8, 20, 9, HorizontalBoardLocation.LEFT),

    Hold(HoldType.EDGE, 9, 15, 11, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 10, 30, 10, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 11, 45, 14, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 12, 50, 13, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 13, 44, 12, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 14, 20, 17, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 15, 25, 16, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 16, 20, 15, HorizontalBoardLocation.RIGHT),

    Hold(HoldType.EDGE, 17, 52, 6, HorizontalBoardLocation.CENTER),
  ]
  ),
  BoardInfo(
    'Beastmaker 2000', BoardType.fromEnum(UniqueBoardName.beastmaker_2000), 'https://www.beastmaker.co.uk/products/beastmaker-2000-series', [
    Hold(HoldType.EDGE, 1, 40, 1, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 2, 33, 2, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 3, 55, 3, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 4, 35, 4, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 5, 30, 5, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 6, 15, 6, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 7, 27, 7, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 8, 20, 8, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 9, 22, 9, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 10, 50, 21, HorizontalBoardLocation.LEFT),


    Hold(HoldType.EDGE, 11, 20, 12, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 12, 33, 16, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 13, 55, 15, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 14, 35, 14, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 15, 30, 13, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 16, 15, 20, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 17, 27, 19, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 18, 20, 18, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 19, 22, 17, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 20, 50, 22, HorizontalBoardLocation.RIGHT),

    Hold(HoldType.EDGE, 21, 52, 10, HorizontalBoardLocation.CENTER),
    Hold(HoldType.EDGE, 22, 21, 11, HorizontalBoardLocation.CENTER),

  ]),
  BoardInfo(
    'Metolius Project', BoardType.fromEnum(UniqueBoardName.metolius_project), 'https://www.metoliusclimbing.com/project-board.html', [
      Hold(HoldType.JUG, 1, null, 13, HorizontalBoardLocation.LEFT),
      Hold(HoldType.SLOPER, 2, null, 14, HorizontalBoardLocation.LEFT),
      Hold(HoldType.EDGE, 3, 45, 1, HorizontalBoardLocation.LEFT),
      Hold(HoldType.EDGE, 4, 30, 2, HorizontalBoardLocation.LEFT),
      Hold(HoldType.EDGE, 5, 40, 3, HorizontalBoardLocation.LEFT),
      Hold(HoldType.EDGE, 6, 22, 4, HorizontalBoardLocation.LEFT),
      Hold(HoldType.EDGE, 7, 22, 5, HorizontalBoardLocation.LEFT),

      Hold(HoldType.JUG, 8, null, 17, HorizontalBoardLocation.RIGHT),
      Hold(HoldType.SLOPER, 9, null, 16, HorizontalBoardLocation.RIGHT),
      Hold(HoldType.EDGE, 10, 45, 8, HorizontalBoardLocation.RIGHT),
      Hold(HoldType.EDGE, 11, 30, 10, HorizontalBoardLocation.RIGHT),
      Hold(HoldType.EDGE, 12, 40, 9, HorizontalBoardLocation.RIGHT),
      Hold(HoldType.EDGE, 13, 22, 12, HorizontalBoardLocation.RIGHT),
      Hold(HoldType.EDGE, 14, 22, 11, HorizontalBoardLocation.RIGHT),

      Hold(HoldType.SLOPER, 15, null, 15, HorizontalBoardLocation.CENTER),
      Hold(HoldType.EDGE, 16, 39, 6, HorizontalBoardLocation.CENTER),
      Hold(HoldType.EDGE, 17, 16, 7, HorizontalBoardLocation.CENTER),



  ]
  ),
  BoardInfo(
    'Metolius Prime Rib', BoardType.fromEnum(UniqueBoardName.metolius_prime_rib), 'https://www.metoliusclimbing.com/prime-rib.html', [
    Hold(HoldType.EDGE, 1, 38, 1, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 2, 38, 2, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 3, 23, 3, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 4, 23, 4, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 5, 15, 5, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 6, 15, 6, HorizontalBoardLocation.RIGHT),
  ]
  ),
];