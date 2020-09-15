import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loading/loading.dart';

class CrossPlatformSvg {
  static Widget asset(
    String assetPath, {
    double width,
    double height,
    BoxFit fit = BoxFit.contain,
    Color color,
    alignment = Alignment.center,
    String semanticsLabel,
  }) {
    // `kIsWeb` is a special Flutter variable that just exists
    // Returns true if we're on web, false for mobile
    if (kIsWeb) {
      return Image.network(
        assetPath,
        width: width,
        height: height,
        fit: fit,
        color: color,
        alignment: alignment,
      );
    } else {
      return SvgPicture.asset(
        assetPath,
        width: width,
        height: height,
        fit: fit,
        color: color,
        alignment: alignment,
        placeholderBuilder: (_) => Container(
          width: 30,
          height: 30,
          padding: EdgeInsets.all(30),
          child: Loading(insideContainer:true),
        ),
      );
    }
  }
}