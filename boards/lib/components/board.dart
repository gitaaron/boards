import 'package:boards/boards.dart';
import 'package:boards/components/board_provider.dart';
import 'package:boards/components/cross_platform_svg.dart';
import 'package:boards/models/board_info.dart';
import 'package:boards/models/board_overlay.dart';
import 'package:boards/types.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:loading/loading.dart';
import 'package:boards/models/board_content.dart';

final String BASE_URL = 'https://raw.githubusercontent.com/gitaaron/boards/main/boards';

class Board extends StatefulWidget {
  String name;
  int numPositions;
  BoardOverlay overlay;
  BoardType type;

  Board(this.name, this.numPositions, this.overlay, this.type);

  factory Board.fromType(BoardType boardType, {BoardOverlay overlay}) {
    BoardInfo boardInfo = boardsMap[boardType];
    if(boardInfo==null) {
      return Board('null', 0, null, null);
    } else {
      return Board(boardInfo.path, boardInfo.numPositions, overlay, boardType);
    }
  }

  @override
  BoardState createState() => BoardState();
}


class BoardState extends State<Board> {
  Map<String, List<BoardContent>> _cachedBoardContents = {};

  bool _isLoading = true;

  Widget _buildBody() {
    if(_isLoading) {
      return Loading(insideContainer: true);
    } else {
      return CrossPlatformStackedSvg.load(BASE_URL, widget.name, widget.numPositions, widget.overlay.positions, width:MediaQuery.of(context).size.width);
    }

  }

  @override
  Widget build(BuildContext context) {
    if(widget.type==null) {
      return Container();
    } else {
      return BoardProvider(
        cachedBoardContents:_cachedBoardContents,
        child:_buildBody(),
      );
    }
  }

  String _overlayPath(int index) {
    return '${BASE_URL}/board_svg/${widget.name}/overlays/${index}.svg';
  }

  @override
  void didChangeDependencies() async {
    super.didChangeDependencies();
    final String assetPath = '${BASE_URL}/board_svg/${widget.name}/board.svg';

    if(kIsWeb) {
      Future.wait([
        precacheImage(Image
          .network(assetPath)
          .image, context),
          ...List<Future>.generate(widget.numPositions, (i) => precacheImage(Image.network(_overlayPath(i+1)).image, context)),
      ]).then((_) {
        setState(() {
          _isLoading = false;
        });
      });
    } else {
      Future.wait([
        DefaultCacheManager().getSingleFile(assetPath),
        ...List<Future>.generate(widget.numPositions, (i) => DefaultCacheManager().getSingleFile(_overlayPath(i+1)))
      ]);
      setState(() {
        _isLoading = false;
      });
    }

  }

}