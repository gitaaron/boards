import 'package:flutter/material.dart';

class WebStackedSvg extends StatefulWidget {

  final String baseUrl;
  final String boardName;
  final int numPositions;
  final List<int> positionsToShow;
  final double width;
  final double height;
  final BoxFit fit;
  final Color color;
  final Alignment alignment;

  WebStackedSvg(this.baseUrl,
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
  WebStackedSvgState createState() => WebStackedSvgState();
}

class WebStackedSvgState extends State<WebStackedSvg> {


  @override
  Widget build(BuildContext context) {
    final String boardUrl = '${widget.baseUrl}/board_svg/${widget.boardName}/board.svg';

    return Stack(
      children:<Widget>[
        Image.network(
          boardUrl,
          width: widget.width,
          height: widget.height,
          fit: widget.fit,
          color: widget.color,
          alignment: widget.alignment,
        ),
        ...List<Widget>.generate(widget.numPositions, (i) {
          return Visibility(
            visible:widget.positionsToShow.indexOf(i)!=-1,
            child: Image.network(
              '${widget.baseUrl}/board_svg/${widget.boardName}/overlays/${i}.svg',
              width:widget.width,
              height:widget.height,
              fit:widget.fit,
              color:widget.color,
              alignment:widget.alignment
            )
          );
        })
      ],
    );

  }

}