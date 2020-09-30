import 'package:boards/types.dart';

class Hold {
  final int position;
  final int edge;
  final HorizontalBoardLocation location;
  Hold(this.position, this.edge, this.location);
}