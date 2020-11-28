import 'package:flutter/material.dart';

class CustomShapeAppBar extends ContinuousRectangleBorder {
  @override
  Path getOuterPath(Rect rect, {TextDirection textDirection}) {

    final double innerCircleRadius = 150.0;

    Path path = Path();
    path.lineTo(0, rect.height*1.3);
    path.quadraticBezierTo(
        rect.width / 2, rect.height / 1.30, rect.width, rect.height * 1.3);
    path.lineTo(rect.width, 0.0);
    path.close();

    return path;
  }
}