import 'package:boards/components/cross_platform_svg.dart';
import 'package:boards/models/board_overlay.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:loading/loading.dart';


enum BoardType { MONSTER, BEASTMAKER_2000 }

class BoardInfo {
  final String name;
  final int numHolds;
  BoardInfo(this.name, this.numHolds);
}

Map<BoardType, BoardInfo> boardsMap = {
  BoardType.MONSTER:BoardInfo('monster', 25),
  BoardType.BEASTMAKER_2000:BoardInfo('beastmaker_2000', 20),
};


class Board extends StatefulWidget {
  String name;
  int numHolds;
  BoardOverlay overlay;

  Board(this.name, this.numHolds, this.overlay);

  factory Board.fromType(BoardType boardType, BoardOverlay overlay) {
    BoardInfo boardInfo = boardsMap[boardType];
    return Board(boardInfo.name, boardInfo.numHolds, overlay);
  }

  @override
  BoardState createState() => BoardState();
}


class BoardState extends State<Board> {

  bool _isLoading = true;

  Widget _buildBody() {
    if(_isLoading) {
      return Loading(insideContainer: true);
    } else {
      return Stack(
        children: [
          CrossPlatformSvg.asset('packages/boards/board_svg/${widget.name}/board.svg', width:MediaQuery.of(context).size.width ),
          CrossPlatformSvg.asset('packages/boards/board_svg/${widget.name}/overlays/${widget.overlay.first}.svg', width:MediaQuery.of(context).size.width ),
          CrossPlatformSvg.asset('packages/boards/board_svg/${widget.name}/overlays/${widget.overlay.second}.svg', width:MediaQuery.of(context).size.width ),
        ],
      );
    }

  }

  @override
  Widget build(BuildContext context) {
    return _buildBody();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if(kIsWeb) {
      Future.wait([
        precacheImage(Image
          .network('packages/boards/board_svg/monster/board.svg')
          .image, context),
        precacheImage(Image
          .network('packages/boards/board_svg/monster/overlays/1.svg')
          .image, context),
        precacheImage(Image
          .network('packages/boards/board_svg/monster/overlays/2.svg')
          .image, context),
        precacheImage(Image
          .network('packages/boards/board_svg/monster/overlays/3.svg')
          .image, context),
        precacheImage(Image
          .network('packages/boards/board_svg/monster/overlays/4.svg')
          .image, context),
        precacheImage(Image
          .network('packages/boards/board_svg/monster/overlays/5.svg')
          .image, context),
        precacheImage(Image
          .network('packages/boards/board_svg/monster/overlays/6.svg')
          .image, context),
        precacheImage(Image
          .network('packages/boards/board_svg/monster/overlays/7.svg')
          .image, context),
        precacheImage(Image
          .network('packages/boards/board_svg/monster/overlays/8.svg')
          .image, context),
        precacheImage(Image
          .network('packages/boards/board_svg/monster/overlays/9.svg')
          .image, context),
        precacheImage(Image
          .network('packages/boards/board_svg/monster/overlays/10.svg')
          .image, context),
        precacheImage(Image
          .network('packages/boards/board_svg/monster/overlays/11.svg')
          .image, context),
        precacheImage(Image
          .network('packages/boards/board_svg/monster/overlays/12.svg')
          .image, context),
        precacheImage(Image
          .network('packages/boards/board_svg/monster/overlays/13.svg')
          .image, context),
        precacheImage(Image
          .network('packages/boards/board_svg/monster/overlays/14.svg')
          .image, context),
        precacheImage(Image
          .network('packages/boards/board_svg/monster/overlays/15.svg')
          .image, context),
        precacheImage(Image
          .network('packages/boards/board_svg/monster/overlays/16.svg')
          .image, context),
        precacheImage(Image
          .network('packages/boards/board_svg/monster/overlays/17.svg')
          .image, context),
        precacheImage(Image
          .network('packages/boards/board_svg/monster/overlays/18.svg')
          .image, context),
        precacheImage(Image
          .network('packages/boards/board_svg/monster/overlays/19.svg')
          .image, context),
        precacheImage(Image
          .network('packages/boards/board_svg/monster/overlays/20.svg')
          .image, context),
        precacheImage(Image
          .network('packages/boards/board_svg/monster/overlays/21.svg')
          .image, context),
        precacheImage(Image
          .network('packages/boards/board_svg/monster/overlays/22.svg')
          .image, context),
        precacheImage(Image
          .network('packages/boards/board_svg/monster/overlays/23.svg')
          .image, context),
        precacheImage(Image
          .network('packages/boards/board_svg/monster/overlays/24.svg')
          .image, context),
        precacheImage(Image
          .network('packages/boards/board_svg/monster/overlays/25.svg')
          .image, context),
      ]).then((_) {
        setState(() {
          _isLoading = false;
        });
      });
    } else {
      setState(() {
        _isLoading = false;
      });
    }

  }

}