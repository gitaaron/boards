import 'package:boards/components/loading.dart';
import 'package:boards/models/board_content.dart';
import 'package:boards/services/svg_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:boards/components/board_provider.dart';

class NativeStackedSvg extends StatefulWidget {
  final String baseUrl;
  final String boardName;
  final int numPositions;
  final List<int> positionsToShow;
  final double? width;
  final double? height;
  final BoxFit fit;
  final Color? color;
  final Alignment alignment;

  NativeStackedSvg(
    this.baseUrl,
    this.boardName,
    this.numPositions,
    this.positionsToShow,
    {
    this.width,
    this.height,
    this.fit = BoxFit.contain,
    this.color,
    this.alignment = Alignment.center,
  });

  @override
  NativeStackedSvgState createState() => NativeStackedSvgState();

}

class NativeStackedSvgState extends State<NativeStackedSvg> {

  @override
  void initState() {
    super.initState();

  }


  Widget _buildBoardFromContents(List<BoardContent> boardContents) {
    return Stack(
      children:boardContents.map((BoardContent boardContent) {
        return Visibility(
          visible:boardContent.position==0 || widget.positionsToShow.indexOf(boardContent.position)!=-1,
          child:SvgPicture.string(
            boardContent.data,
            width: widget.width,
            height: widget.height,
            fit: widget.fit,
            color: widget.color,
            alignment: widget.alignment
          )
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {

    BoardProvider provider = BoardProvider.of(context);

    if(provider.cachedBoardContents[widget.boardName]!=null) {
      return _buildBoardFromContents(provider.cachedBoardContents[widget.boardName]!);
    } else {
      return FutureBuilder(
        future: SvgService.loadBoard(widget.baseUrl, widget.boardName, widget.numPositions, 1),
        builder: (BuildContext context, AsyncSnapshot<List<BoardContent>> snapshot) {
          if (snapshot.connectionState != ConnectionState.done ||
            !snapshot.hasData) {
            return Center(child: FittedBox(fit:BoxFit.scaleDown, child:Loading(insideContainer: true)));
          }

          if(snapshot.data==null || snapshot.data?.length==0 ) {
            return Column(
              children:[
                Icon(Icons.error, size:48.0),
                Text('There were issues loading the board.'),
              ],
            );
          }

          List<BoardContent> boardContents  = snapshot.data!;
          provider.cachedBoardContents[widget.boardName] = boardContents;
          return _buildBoardFromContents(boardContents);

        });
    }



  }

}