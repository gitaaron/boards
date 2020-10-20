import 'package:boards/components/native_stacked_svg.dart';
import 'package:boards/components/web_stacked_svg.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CrossPlatformStackedSvg {


  static Widget load(
    String baseUrl,
    String boardName,
    int numPositions,
    List<int> positionsToShow,
  {
    double width,
    double height,
    BoxFit fit = BoxFit.contain,
    Color color,
    Alignment alignment = Alignment.center,
  }) {

    // `kIsWeb` is a special Flutter variable that just exists
    // Returns true if we're on web, false for mobile



    if (kIsWeb) {
      return WebStackedSvg(
        baseUrl,
        boardName,
        numPositions,
        positionsToShow,
        width:width,
        height:height,
        fit:fit,
        color:color,
        alignment:alignment,
      );
    } else {
      return NativeStackedSvg(
        baseUrl,
        boardName,
        numPositions,
        positionsToShow,
        width: width,
        height: height,
        fit: fit,
        color: color,
        alignment: alignment,
      );
    }

  }
}