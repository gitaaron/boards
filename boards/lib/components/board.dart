import 'package:boards/models/board_overlay.dart';
import 'package:flutter/material.dart';
import 'package:loading/loading.dart';

class Board extends StatefulWidget {

  BoardOverlay overlay;

  Board(this.overlay);

  @override
  BoardState createState() => BoardState();
}


class BoardState extends State<Board> {

  bool _isLoading = true;

  Widget _buildBody() {
    if(_isLoading) {
      return Loading();
    } else {

      return Stack(
        children: [
          Image.network('assets/boards/monster/board.svg'),
          Image.network('assets/boards/monster/overlays/${widget.overlay.first}.svg'),
          Image.network('assets/boards/monster/overlays/${widget.overlay.second}.svg'),
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
    Future.wait([
      precacheImage(Image.network('assets/boards/monster/board.svg').image, context),
      precacheImage(Image.network('assets/boards/monster/overlays/1.svg').image, context),
      precacheImage(Image.network('assets/boards/monster/overlays/2.svg').image, context),
      precacheImage(Image.network('assets/boards/monster/overlays/3.svg').image, context),
      precacheImage(Image.network('assets/boards/monster/overlays/4.svg').image, context),
      precacheImage(Image.network('assets/boards/monster/overlays/5.svg').image, context),
      precacheImage(Image.network('assets/boards/monster/overlays/6.svg').image, context),
      precacheImage(Image.network('assets/boards/monster/overlays/7.svg').image, context),
      precacheImage(Image.network('assets/boards/monster/overlays/8.svg').image, context),
      precacheImage(Image.network('assets/boards/monster/overlays/9.svg').image, context),
      precacheImage(Image.network('assets/boards/monster/overlays/10.svg').image, context),
      precacheImage(Image.network('assets/boards/monster/overlays/11.svg').image, context),
      precacheImage(Image.network('assets/boards/monster/overlays/12.svg').image, context),
      precacheImage(Image.network('assets/boards/monster/overlays/13.svg').image, context),
      precacheImage(Image.network('assets/boards/monster/overlays/14.svg').image, context),
      precacheImage(Image.network('assets/boards/monster/overlays/15.svg').image, context),
      precacheImage(Image.network('assets/boards/monster/overlays/16.svg').image, context),
      precacheImage(Image.network('assets/boards/monster/overlays/17.svg').image, context),
      precacheImage(Image.network('assets/boards/monster/overlays/18.svg').image, context),
      precacheImage(Image.network('assets/boards/monster/overlays/19.svg').image, context),
      precacheImage(Image.network('assets/boards/monster/overlays/20.svg').image, context),
      precacheImage(Image.network('assets/boards/monster/overlays/21.svg').image, context),
      precacheImage(Image.network('assets/boards/monster/overlays/22.svg').image, context),
      precacheImage(Image.network('assets/boards/monster/overlays/23.svg').image, context),
      precacheImage(Image.network('assets/boards/monster/overlays/24.svg').image, context),
      precacheImage(Image.network('assets/boards/monster/overlays/25.svg').image, context),
    ]).then((_) {
      setState(() {
        _isLoading = false;
      });
    });

  }

}