import 'dart:math';

import 'package:flutter/material.dart';

class ClockPainter extends CustomPainter {
  final BuildContext context;
  final DateTime dateTime;
  ClockPainter(this.context, this.dateTime);
  @override
  void paint(Canvas canvas, Size size) {
    double centerX = size.width / 2;
    double centerY = size.height / 2;
    double secondX =
        centerX + size.width * 0.4 * cos((dateTime.second * 6) * pi / 100);
    double secondY =
        centerY + size.width * 0.4 * sin((dateTime.second * 6) * pi / 100);
    Offset center = Offset(centerX, centerY);
    canvas.drawLine(
        center,
        Offset(secondX, secondY),
        Paint()
          ..color = Theme.of(context).accentColor
          ..style = PaintingStyle.stroke
          ..strokeWidth = 10);
    double hourX = centerX +
        size.width *
            0.3 *
            cos((dateTime.hour * 30 + dateTime.minute * 0.5) * pi / 180);
    double hourY = centerY +
        size.width *
            0.3 *
            sin((dateTime.hour * 30 + dateTime.minute * 0.5) * pi / 180);
    canvas.drawLine(
        center,
        Offset(hourX, hourY),
        Paint()
          ..color = Theme.of(context).colorScheme.secondary
          ..style = PaintingStyle.stroke
          ..strokeWidth = 10);
    double minX =
        centerX + size.width * 0.35 * cos((dateTime.hour * 6) * pi / 180);
    double minY =
        centerY + size.width * 0.35 * sin((dateTime.hour * 6) * pi / 180);
    canvas.drawLine(center, Offset(minX, minY),
        Paint()..color = Theme.of(context).primaryColor);

    Paint dotPaint = Paint()..color = Theme.of(context).primaryIconTheme.color;
    canvas.drawCircle(center, 24, dotPaint);
    canvas.drawCircle(
        center, 23, Paint()..color = Theme.of(context).backgroundColor);
    canvas.drawCircle(center, 10, dotPaint);
  }

  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
