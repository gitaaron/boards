import 'package:boards/models/board_content.dart';
import 'package:flutter/material.dart';

class BoardProvider extends InheritedWidget {

  final Map<String, List<BoardContent>> cachedBoardContents;


  const BoardProvider({Key key, @required Widget child, this.cachedBoardContents}) : super(key:key, child:child);

  static BoardProvider of (BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<BoardProvider>();
  }


  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;

}