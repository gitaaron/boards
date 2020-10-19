import 'package:boards/boards.dart';
import 'package:boards/components/cross_platform_svg.dart';
import 'package:boards/models/board_info.dart';
import 'package:boards/models/board_overlay.dart';
import 'package:boards/types.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:loading/loading.dart';

final String BASE_URL = 'https://raw.githubusercontent.com/gitaaron/boards/main/boards';

class Board extends StatefulWidget {
  String name;
  int numHolds;
  BoardOverlay overlay;
  BoardType type;

  Board(this.name, this.numHolds, this.overlay, this.type);

  factory Board.fromType(BoardType boardType, {BoardOverlay overlay}) {
    BoardInfo boardInfo = boardsMap[boardType];
    if(boardInfo==null) {
      return Board('null', 0, null, null);
    } else {
      return Board(boardInfo.path, boardInfo.numHolds, overlay, boardType);
    }
  }

  @override
  BoardState createState() => BoardState();
}


class BoardState extends State<Board> {

  bool _isLoading = true;

  List<Widget> _buildOverlays() {

    return widget.overlay!=null?widget.overlay.positions.map((int position) {
      return CrossPlatformSvg.asset('${BASE_URL}/board_svg/${widget.name}/overlays/${position}.svg', width:MediaQuery.of(context).size.width );
    }).toList():[];
  }

  Widget _buildBody() {
    if(_isLoading) {
      return Loading(insideContainer: true);
    } else {
      return Stack(
        children: [
          CrossPlatformSvg.asset('${BASE_URL}/board_svg/${widget.name}/board.svg', width:MediaQuery.of(context).size.width ),
          ..._buildOverlays()
        ],
      );
    }

  }

  @override
  Widget build(BuildContext context) {
    if(widget.type==null) {
      return Container();
    } else {
      return _buildBody();
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if(kIsWeb) {
      Future.wait([
        precacheImage(Image
          .network('${BASE_URL}/board_svg/${widget.name}/board.svg')
          .image, context),
          ...List<Future>.generate(widget.numHolds, (i) => precacheImage(Image.network('$BASE_URL}/board_svg/${widget.name}/overlays/${i}.svg').image, context)),
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