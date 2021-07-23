import 'package:boards/models/board_content.dart';
import 'package:flutter/material.dart';

class BoardProvider extends InheritedWidget {

  final Map<String, List<BoardContent>> cachedBoardContents;


  const BoardProvider({Key? key, required Widget child, required this.cachedBoardContents}) : super(key:key, child:child);

  static BoardProvider of(BuildContext context) {
    final BoardProvider? result = context.dependOnInheritedWidgetOfExactType<BoardProvider>();
    assert(result != null, 'No BoardProvider found in context');
    return result!;
  }


  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;

}