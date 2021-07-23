import 'package:boards/components/native_stacked_svg.dart';
import 'package:boards/constants.dart';
import 'package:boards/components/board_provider.dart';
import 'package:boards/models/board_info.dart';
import 'package:boards/models/board_overlay.dart';
import 'package:flutter/material.dart';
import 'package:boards/models/board_content.dart';

class Board extends StatefulWidget {
  String name;
  int numPositions;
  BoardOverlay? overlay;
  String? baseUrl;
  Map<String, List<BoardContent>>? cachedBoardContents;

  Board(this.name, this.numPositions, this.overlay, {this.cachedBoardContents, this.baseUrl}) {
    baseUrl ??= BASE_URL;
  }

  factory Board.fromInfo(BoardInfo boardInfo, {BoardOverlay? overlay, Map<String, List<BoardContent>>? cachedBoardContents, String? baseUrl}) {
    if(boardInfo==null) {
      return Board('null', 0, overlay);
    } else {
      return Board(boardInfo.type.uniqueName, boardInfo.numPositions, overlay, cachedBoardContents: cachedBoardContents, baseUrl:baseUrl);
    }
  }

  @override
  BoardState createState() => BoardState();
}


class BoardState extends State<Board> {

  Map<String, List<BoardContent>>? _cachedBoardContents;

  @override
  void initState() {
    super.initState();
    _cachedBoardContents = widget.cachedBoardContents ?? {};
  }

  Widget _buildBody() {
    return NativeStackedSvg(widget.baseUrl!, widget.name, widget.numPositions, widget.overlay?.positions??[], width:MediaQuery.of(context).size.width);
  }

  @override
  Widget build(BuildContext context) {
    if(widget.name==null) {
      return Container();
    } else {
      return BoardProvider(
        cachedBoardContents:_cachedBoardContents!,
        child:_buildBody(),
      );
    }
  }

}