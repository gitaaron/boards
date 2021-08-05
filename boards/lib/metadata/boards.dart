library boards;

import 'package:boards/models/board_info.dart';
import 'package:boards/models/board_type.dart';
import 'package:boards/models/hold.dart';
import 'package:boards/types.dart';

List<BoardInfo> boards = [

  BoardInfo('Top Out Project', BoardType.fromEnum(UniqueBoardName.topout_project), 'https://www.etsy.com/uk/listing/876885040/project-board-by-top-out-climbing?ga_order=most_relevant&ga_search_type=all&ga_view_type=gallery&ga_search_query=Project+Board+by+Top+Out+Climbing', [
    Hold(HoldType.JUG, 1, null, 1, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 2, 40, 2, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 3, 20, 3, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 4, 20, 4, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 5, 25, 5, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 6, 25, 6, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 7, 28, 7, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 8, 25, 8, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 9, 15, 9, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 10, 12, 10, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 11, 10, 11, HorizontalBoardLocation.LEFT),


    Hold(HoldType.JUG, 12, null, 12, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 13, 40, 13, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 14, 20, 14, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 15, 20, 15, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 16, 25, 16, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 17, 25, 17, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 18, 28, 18, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 19, 25, 19, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 20, 15, 20, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 21, 12, 21, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 22, 10, 22, HorizontalBoardLocation.RIGHT),
  ]),

  BoardInfo('So Ill All Chalk No Action', BoardType.fromEnum(UniqueBoardName.so_ill_all_chalk_no_action), 'https://www.backcountry.com/backcountry-x-so-ill-all-chalk-no-action-hangboard', [
    Hold(HoldType.JUG, 1, null, 1, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 2, 50, 2, HorizontalBoardLocation.LEFT),
    Hold(HoldType.SLOPER, 3, null, 3, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 4, 20, 4, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 5, 15, 5, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 6, 40, 6, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 7, 35, 7, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 8, 10, 8, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 9, 25, 9, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 10, 15, 10, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 11, 25, 11, HorizontalBoardLocation.LEFT),

    Hold(HoldType.JUG, 12, null, 12, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 13, 50, 13, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.SLOPER, 14, null, 14, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 15, 20, 15, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 16, 15, 16, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 17, 40, 17, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 18, 35, 18, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 19, 10, 19, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 20, 25, 20, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 21, 15, 21, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 22, 25, 22, HorizontalBoardLocation.RIGHT),

    Hold(HoldType.SLOPER, 23, null, 23, HorizontalBoardLocation.CENTER),
    Hold(HoldType.EDGE, 24, 17, 24, HorizontalBoardLocation.CENTER),
    Hold(HoldType.EDGE, 27, 10, 27, HorizontalBoardLocation.CENTER),

    Hold(HoldType.PINCH, 25, null, 25, HorizontalBoardLocation.LEFT),
    Hold(HoldType.PINCH, 26, null, 26, HorizontalBoardLocation.RIGHT),

  ]),

  BoardInfo('Simond Ballsy', BoardType.fromEnum(UniqueBoardName.simond_ballsy_board), 'https://www.simond.com/climbing-training-beam-ballsy-board-black-id_8360021', [
    Hold(HoldType.SLOPER, 1, null, 1, HorizontalBoardLocation.LEFT),
    Hold(HoldType.SLOPER, 2, null, 2, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 3, 42, 3, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 4, 12, 4, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 5, 22, 5, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 6, 22, 6, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 7, 25, 7, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 8, 12, 18, HorizontalBoardLocation.LEFT),

    Hold(HoldType.SLOPER, 9, null, 11, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.SLOPER, 10, null, 12, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 11, 42, 13, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 12, 12, 14, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 13, 22, 15, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 14, 22, 16, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 15, 25, 17, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 16, 12, 19, HorizontalBoardLocation.RIGHT),

    Hold(HoldType.SLOPER, 17, null, 8, HorizontalBoardLocation.CENTER),
    Hold(HoldType.EDGE, 18, 27, 9, HorizontalBoardLocation.CENTER),
    Hold(HoldType.EDGE, 19, 35, 10, HorizontalBoardLocation.CENTER),
  ]),

  BoardInfo(
    'Roots Baseline', BoardType.fromEnum(UniqueBoardName.roots_baseline), 'https://www.roots-climbing.com/fingerboards-hangboards', [
    Hold(HoldType.SLOPER, 1, null, 1, HorizontalBoardLocation.LEFT),
    Hold(HoldType.SLOPER, 2, null, 2, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 3, 22, 3, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 4, 12, 4, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 5, 52, 5, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 6, 35, 6, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 7, 20, 7, HorizontalBoardLocation.LEFT),

    Hold(HoldType.SLOPER, 8, null, 8, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.SLOPER, 9, null, 9, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 10, 12, 10, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 11, 22, 11, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 12, 52, 12, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 13, 35, 13, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 14, 20, 14, HorizontalBoardLocation.RIGHT),

    Hold(HoldType.JUG, 15, null, 15, HorizontalBoardLocation.CENTER),
    Hold(HoldType.EDGE, 16, 25, 16, HorizontalBoardLocation.CENTER),
    Hold(HoldType.EDGE, 17, 15, 17, HorizontalBoardLocation.CENTER),
  ]
  ),

  BoardInfo(
    'Redge Port', BoardType.fromEnum(UniqueBoardName.redge_port), 'https://redgeclimbing.com/product/redge-port-portable-hangboard/', [
    Hold(HoldType.EDGE, 1, 40, 1, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 2, 40, 2, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 3, 25, 3, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 4, 25, 4, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 5, 20, 5, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 6, 20, 6, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 7, 15, 7, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 8, 15, 8, HorizontalBoardLocation.RIGHT),
  ]
  ),
  BoardInfo(
    'Rock Prodigy Training Center', BoardType.fromEnum(UniqueBoardName.rock_prodigy_training_center), 'https://trango.com/products/rock-prodigy-training-center', [
    Hold(HoldType.PINCH, 1, null, 1, HorizontalBoardLocation.LEFT),
    Hold(HoldType.SLOPER, 2, null, 2, HorizontalBoardLocation.LEFT),
    Hold(HoldType.JUG, 3, null, 3, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 4, 20, 4, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 5, 25, 5, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 6, 30, 6, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 7, 12, 7, HorizontalBoardLocation.LEFT,),
    Hold(HoldType.EDGE, 8, 17, 8, HorizontalBoardLocation.LEFT,),
    Hold(HoldType.EDGE, 9, 22, 9, HorizontalBoardLocation.LEFT,),
    Hold(HoldType.EDGE, 10, 8, 10, HorizontalBoardLocation.LEFT,),
    Hold(HoldType.EDGE, 11, 38, 11, HorizontalBoardLocation.LEFT,),
    Hold(HoldType.EDGE, 12, 36, 12, HorizontalBoardLocation.LEFT,),
    Hold(HoldType.EDGE, 13, 26, 13, HorizontalBoardLocation.LEFT,),
    Hold(HoldType.EDGE, 14, 29, 14, HorizontalBoardLocation.LEFT,),
    Hold(HoldType.EDGE, 15, 24, 15, HorizontalBoardLocation.LEFT,),
    Hold(HoldType.EDGE, 16, 19, 16, HorizontalBoardLocation.LEFT,),
    Hold(HoldType.EDGE, 17, 19, 17, HorizontalBoardLocation.LEFT,),

    Hold(HoldType.PINCH, 18, null, 18, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.SLOPER, 19, null, 19, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.JUG, 20, null, 20, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 21, 20, 21, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 22, 25, 22, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 23, 30, 23, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 24, 12, 24, HorizontalBoardLocation.RIGHT,),
    Hold(HoldType.EDGE, 25, 17, 25, HorizontalBoardLocation.RIGHT,),
    Hold(HoldType.EDGE, 26, 22, 26, HorizontalBoardLocation.RIGHT,),
    Hold(HoldType.EDGE, 27, 8, 27, HorizontalBoardLocation.RIGHT,),
    Hold(HoldType.EDGE, 28, 38, 28, HorizontalBoardLocation.RIGHT,),
    Hold(HoldType.EDGE, 29, 36, 29, HorizontalBoardLocation.RIGHT,),
    Hold(HoldType.EDGE, 30, 26, 30, HorizontalBoardLocation.RIGHT,),
    Hold(HoldType.EDGE, 31, 29, 31, HorizontalBoardLocation.RIGHT,),
    Hold(HoldType.EDGE, 32, 24, 32, HorizontalBoardLocation.RIGHT,),
    Hold(HoldType.EDGE, 33, 19, 33, HorizontalBoardLocation.RIGHT,),
    Hold(HoldType.EDGE, 34, 19, 34, HorizontalBoardLocation.RIGHT,),
  ]
  ),
  BoardInfo('Mountain Rocks', BoardType.fromEnum(UniqueBoardName.mountain_rocks), 'http://mountainrocks.online/index.html#products', [
    Hold(HoldType.SLOPER, 1, null, 1, HorizontalBoardLocation.LEFT),
    Hold(HoldType.SLOPER, 2, null, 2, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 3, 40, 3, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 4, 40, 4, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 5, 40, 5, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 6, 25, 6, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 7, 25, 7, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 8, 25, 8, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 9, 15, 9, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 10, 15, 10, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 11, 15, 11, HorizontalBoardLocation.LEFT),
    Hold(HoldType.SLOPER, 12, null, 12, HorizontalBoardLocation.LEFT),
    Hold(HoldType.SLOPER, 13, null, 13, HorizontalBoardLocation.LEFT),

    Hold(HoldType.SLOPER, 14, null, 14, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.SLOPER, 15, null, 15, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 16, 40, 16, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 17, 40, 17, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 18, 40, 18, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 19, 25, 19, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 20, 25, 20, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 21, 25, 21, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 22, 15, 22, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 23, 15, 23, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 24, 15, 24, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.SLOPER, 25, null, 25, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.SLOPER, 26, null, 26, HorizontalBoardLocation.RIGHT),

  ]),
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
    'Metolius Wood Grips II Compact', BoardType.fromEnum(UniqueBoardName.metolius_wood_grips_2_compact), 'https://www.metoliusclimbing.com/wood-grips_training_boards.html', [
    Hold(HoldType.JUG, 1, null, 1, HorizontalBoardLocation.LEFT),
    Hold(HoldType.SLOPER, 2, null, 2, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 3, 29, 3, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 4, 29, 4, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 5, 29, 5, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 6, 19, 6, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 7, 19, 7, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 8, 19, 8, HorizontalBoardLocation.LEFT),


    Hold(HoldType.JUG, 9, null, 12, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.SLOPER, 10, null, 13, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 11, 29, 14, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 12, 29, 15, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 13, 29, 16, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 14, 19, 17, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 15, 19, 18, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 16, 19, 19, HorizontalBoardLocation.RIGHT),

    Hold(HoldType.SLOPER, 17, null, 9, HorizontalBoardLocation.CENTER),
    Hold(HoldType.EDGE, 18, 29, 10, HorizontalBoardLocation.CENTER),
    Hold(HoldType.EDGE, 19, 19, 11, HorizontalBoardLocation.CENTER),
  ]
  ),
  BoardInfo(
    'Metolius Simulator 3D', BoardType.fromEnum(UniqueBoardName.metolius_simulator_3d), 'https://www.metoliusclimbing.com/simulator.html', [
    Hold(HoldType.JUG, 1, null, 1, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 2, 25, 2, HorizontalBoardLocation.LEFT),
    Hold(HoldType.SLOPER, 3, null, 3, HorizontalBoardLocation.LEFT),
    Hold(HoldType.SLOPER, 4, null, 4, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 5, 19, 5, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 6, 13, 6, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 7, 38, 7, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 8, 13, 8, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 9, 32, 9, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 10, 13, 10, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 11, 13, 11, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 12, 32, 12, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 13, 13, 13, HorizontalBoardLocation.LEFT),

    Hold(HoldType.JUG, 14, null, 14, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 15, 25, 15, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.SLOPER, 16, null, 16, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.SLOPER, 17, null, 17, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 18, 19, 18, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 19, 13, 19, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 20, 38, 20, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 21, 13, 21, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 22, 32, 22, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 23, 13, 23, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 24, 13, 24, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 25, 32, 25, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 26, 13, 26, HorizontalBoardLocation.RIGHT),

    Hold(HoldType.JUG, 27, null, 27, HorizontalBoardLocation.CENTER),
    Hold(HoldType.EDGE, 28, 44, 28, HorizontalBoardLocation.CENTER),
    Hold(HoldType.EDGE, 29, 32, 29, HorizontalBoardLocation.CENTER),
    Hold(HoldType.EDGE, 30, 25, 30, HorizontalBoardLocation.CENTER),
    Hold(HoldType.EDGE, 31, 29, 31, HorizontalBoardLocation.CENTER),
  ]
  ),
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
  BoardInfo(
      'Level 7 Chalkboard', BoardType.fromEnum(UniqueBoardName.level_7_chalkboard), 'https://level7plastics.com/c-chalkboard', [
      Hold(HoldType.JUG, 1, null, 1, HorizontalBoardLocation.LEFT),
      Hold(HoldType.EDGE, 2, 21, 2, HorizontalBoardLocation.LEFT),
      Hold(HoldType.EDGE, 3, 25, 3, HorizontalBoardLocation.LEFT),
      Hold(HoldType.EDGE, 4, 38, 4, HorizontalBoardLocation.LEFT),
      Hold(HoldType.EDGE, 5, 38, 5, HorizontalBoardLocation.LEFT),
      Hold(HoldType.EDGE, 6, 38, 6, HorizontalBoardLocation.LEFT),
      Hold(HoldType.EDGE, 7, 16, 7, HorizontalBoardLocation.LEFT),
      Hold(HoldType.EDGE, 8, 16, 8, HorizontalBoardLocation.LEFT),
      Hold(HoldType.EDGE, 9, 16, 9, HorizontalBoardLocation.LEFT),

      Hold(HoldType.JUG, 10, null, 10, HorizontalBoardLocation.RIGHT),
      Hold(HoldType.EDGE, 11, 21, 11, HorizontalBoardLocation.RIGHT),
      Hold(HoldType.EDGE, 12, 25, 12, HorizontalBoardLocation.RIGHT),
      Hold(HoldType.EDGE, 13, 38, 13, HorizontalBoardLocation.RIGHT),
      Hold(HoldType.EDGE, 14, 38, 14, HorizontalBoardLocation.RIGHT),
      Hold(HoldType.EDGE, 15, 38, 15, HorizontalBoardLocation.RIGHT),
      Hold(HoldType.EDGE, 16, 16, 16, HorizontalBoardLocation.RIGHT),
      Hold(HoldType.EDGE, 17, 16, 17, HorizontalBoardLocation.RIGHT),
      Hold(HoldType.EDGE, 18, 16, 18, HorizontalBoardLocation.RIGHT),

      Hold(HoldType.EDGE, 19, 51, 19, HorizontalBoardLocation.CENTER),

    ]
  ),





  BoardInfo(
    'Crusher 3', BoardType.fromEnum(UniqueBoardName.crusher_3), 'http://crusherholds.co.uk/fingerboards/crusher-3-climbing-fingerboard-hangboard', [
    Hold(HoldType.JUG, 1, null, 1, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 2, 40, 2, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 3, 40, 3, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 4, 30, 4, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 5, 25, 5, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 6, 25, 6, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 7, 20, 7, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 8, 35, 8, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 9, 30, 9, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 10, 25, 10, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 11, 20, 11, HorizontalBoardLocation.LEFT),

    Hold(HoldType.JUG, 12, null, 12, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 13, 40, 13, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 14, 40, 14, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 15, 30, 15, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 16, 25, 16, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 17, 25, 17, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 18, 20, 18, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 19, 35, 19, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 20, 30, 20, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 21, 25, 21, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 22, 20, 22, HorizontalBoardLocation.RIGHT),

    Hold(HoldType.SLOPER, 23, null, 23, HorizontalBoardLocation.CENTER),
    Hold(HoldType.EDGE, 24, 35, 24, HorizontalBoardLocation.CENTER),
    Hold(HoldType.EDGE, 25, 25, 25, HorizontalBoardLocation.CENTER),

  ]),

  BoardInfo('Cliffboard Mini (front)', BoardType.fromEnum(UniqueBoardName.cliffboard_mini_front), 'https://awesomewoodys.com/products/cliffboard-mini', [
    Hold(HoldType.EDGE, 1, 30, 1, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 2, 18, 2, HorizontalBoardLocation.LEFT),
    Hold(HoldType.JUG, 3, null, 3, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 4, 15, 4, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 5, 30, 5, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 6, 18, 6, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.JUG, 7, null, 7, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 8, 15, 8, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.JUG, 9, null, 9, HorizontalBoardLocation.CENTER),
  ]),

  BoardInfo('Cliffboard Mini (back)', BoardType.fromEnum(UniqueBoardName.cliffboard_mini_back), 'https://awesomewoodys.com/products/cliffboard-mini', [
    Hold(HoldType.EDGE, 1, 25, 1, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 2, 30, 2, HorizontalBoardLocation.LEFT),
    Hold(HoldType.JUG, 3, null, 3, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 4, 12, 4, HorizontalBoardLocation.LEFT),

    Hold(HoldType.EDGE, 5, 25, 5, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 6, 30, 6, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.JUG, 7, null, 7, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 8, 12, 8, HorizontalBoardLocation.RIGHT),

    Hold(HoldType.EDGE, 9, 25, 9, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.JUG, 10, null, 10, HorizontalBoardLocation.CENTER),
  ]
  ),
  BoardInfo(
    'Beastmaker 2000', BoardType.fromEnum(UniqueBoardName.beastmaker_2000), 'https://www.beastmaker.co.uk/products/beastmaker-2000-series', [
    Hold(HoldType.SLOPER, 1, null, 23, HorizontalBoardLocation.LEFT),
    Hold(HoldType.SLOPER, 2, null, 24, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 3, 40, 1, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 4, 33, 2, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 5, 55, 3, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 6, 35, 4, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 7, 30, 5, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 8, 15, 6, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 9, 27, 7, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 10, 20, 8, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 11, 22, 9, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 12, 50, 21, HorizontalBoardLocation.LEFT),


    Hold(HoldType.SLOPER, 13, null, 27, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.SLOPER, 14, null, 26, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 15, 20, 12, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 16, 33, 16, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 17, 55, 15, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 18, 35, 14, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 19, 30, 13, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 20, 15, 20, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 21, 27, 19, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 22, 20, 18, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 23, 22, 17, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 24, 50, 22, HorizontalBoardLocation.RIGHT),

    Hold(HoldType.SLOPER, 25, null, 25, HorizontalBoardLocation.CENTER),
    Hold(HoldType.EDGE, 26, 52, 10, HorizontalBoardLocation.CENTER),
    Hold(HoldType.EDGE, 27, 21, 11, HorizontalBoardLocation.CENTER),

  ]),
  BoardInfo(
    'Beastmaker 1000', BoardType.fromEnum(UniqueBoardName.beastmaker_1000), 'https://www.beastmaker.co.uk/products/beastmaker-1000-series', [
    Hold(HoldType.JUG, 1, null, 18, HorizontalBoardLocation.LEFT),
    Hold(HoldType.SLOPER, 2, null, 19, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 3, 15, 1, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 4, 30, 2, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 5, 45, 3, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 6, 50, 4, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 7, 44, 5, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 8, 20, 7, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 9, 25, 8, HorizontalBoardLocation.LEFT),
    Hold(HoldType.EDGE, 10, 20, 9, HorizontalBoardLocation.LEFT),

    Hold(HoldType.JUG, 11, null, 22, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.SLOPER, 12, null, 21, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 13, 15, 11, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 14, 30, 10, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 15, 45, 14, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 16, 50, 13, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 17, 44, 12, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 18, 20, 17, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 19, 25, 16, HorizontalBoardLocation.RIGHT),
    Hold(HoldType.EDGE, 20, 20, 15, HorizontalBoardLocation.RIGHT),

    Hold(HoldType.SLOPER, 21, null, 20, HorizontalBoardLocation.CENTER),
    Hold(HoldType.EDGE, 22, 52, 6, HorizontalBoardLocation.CENTER),
  ]
  ),


];