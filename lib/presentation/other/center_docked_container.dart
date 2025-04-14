import 'dart:math' as math;


import 'package:flutter/material.dart';

class CenterDockedContainer extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint =
        Paint()
          ..color = Colors.white
          ..style = PaintingStyle.fill;

    final width = size.width;
    final height = size.height;

    final arcWidth = width * 0.17;
    final arcStart = (width - arcWidth) / 2;

    final path =
        Path()
          ..moveTo(0, 0)
          ..lineTo(arcStart, 0)
          ..arcTo(
            Rect.fromCenter(
              center: Offset(width / 2, 0),
              width: arcWidth,
              height: arcWidth,
            ),
            math.pi,
            -math.pi,
            false,
          )
          ..lineTo(width, 0)
          ..lineTo(width, height)
          ..lineTo(0, height)
          ..close();
    canvas.drawShadow(path, Colors.grey.withAlpha(100), -2, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}