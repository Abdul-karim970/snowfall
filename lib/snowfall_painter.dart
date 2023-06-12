import 'dart:math';

import 'package:flutter/material.dart';

class SnowFallPainter extends CustomPainter {
  SnowFallPainter({this.noOfSnowBall = 200});
  final int noOfSnowBall;
  @override
  void paint(Canvas canvas, Size size) {
    Random random = Random();
    int max = 255;
    final width = size.width;
    final height = size.height;

    for (double j = 1.0; j <= noOfSnowBall; j++) {
      final offset = Offset(random.nextInt(width.toInt()).toDouble(),
          random.nextInt(height.toInt()).toDouble());
      final snowSize = random.nextInt(min(width, height).toInt()).toDouble();

      final snowMainArmSize = snowSize * 0.025;
      final snowSecondaryArmSize = snowSize * 0.012;
      final snowSecondaryArmSize2 = snowSize * 0.023;
      final snowSecondaryArmDistance = snowSize * 0.01;
      final paint = Paint()
        ..color = Color.fromARGB(random.nextInt(max), max, max, max)
        ..strokeCap = StrokeCap.round
        ..strokeWidth = 2;
      createSnowShape(
          paint: paint,
          offset: offset,
          canvas: canvas,
          snowMainArmSize: snowMainArmSize,
          snowSecondaryArmSize: snowSecondaryArmSize,
          snowSecondaryArmDistance: snowSecondaryArmDistance,
          snowSecondaryArmSize2: snowSecondaryArmSize2);
    }
  }

  @override
  bool shouldRepaint(SnowFallPainter oldDelegate) => true;

  @override
  bool shouldRebuildSemantics(SnowFallPainter oldDelegate) => true;
}

void createSnowShape({
  required Paint paint,
  required Offset offset,
  required Canvas canvas,
  required double snowMainArmSize,
  required double snowSecondaryArmSize,
  required double snowSecondaryArmDistance,
  required double snowSecondaryArmSize2,
}) {
  canvas.drawLine(
      offset, Offset(offset.dx, offset.dy + snowMainArmSize), paint);
  canvas.drawLine(
      offset, Offset(offset.dx, offset.dy - snowMainArmSize), paint);
  canvas.drawLine(
      offset, Offset(offset.dx - snowMainArmSize, offset.dy), paint);
  canvas.drawLine(
      offset, Offset(offset.dx + snowMainArmSize, offset.dy), paint);
  canvas.drawLine(
      Offset(offset.dx + snowSecondaryArmDistance, offset.dy),
      Offset(
          offset.dx + snowSecondaryArmSize2, offset.dy + snowSecondaryArmSize),
      paint);
  canvas.drawLine(
      Offset(offset.dx + snowSecondaryArmDistance, offset.dy),
      Offset(
          offset.dx + snowSecondaryArmSize2, offset.dy - snowSecondaryArmSize),
      paint);
  canvas.drawLine(
      Offset(offset.dx - snowSecondaryArmDistance, offset.dy),
      Offset(
          offset.dx - snowSecondaryArmSize2, offset.dy - snowSecondaryArmSize),
      paint);
  canvas.drawLine(
      Offset(offset.dx - snowSecondaryArmDistance, offset.dy),
      Offset(
          offset.dx - snowSecondaryArmSize2, offset.dy + snowSecondaryArmSize),
      paint);
  canvas.drawLine(
      Offset(offset.dx, offset.dy - snowSecondaryArmDistance),
      Offset(
          offset.dx + snowSecondaryArmSize, offset.dy - snowSecondaryArmSize2),
      paint);
  canvas.drawLine(
      Offset(offset.dx, offset.dy - snowSecondaryArmDistance),
      Offset(
          offset.dx - snowSecondaryArmSize, offset.dy - snowSecondaryArmSize2),
      paint);
  canvas.drawLine(
      Offset(offset.dx, offset.dy + snowSecondaryArmDistance),
      Offset(
          offset.dx - snowSecondaryArmSize, offset.dy + snowSecondaryArmSize2),
      paint);
  canvas.drawLine(
      Offset(offset.dx, offset.dy + snowSecondaryArmDistance),
      Offset(
          offset.dx + snowSecondaryArmSize, offset.dy + snowSecondaryArmSize2),
      paint);
}
