import 'dart:async';

import 'package:flutter/material.dart';

import 'snowfall_painter.dart';

class SnowFall extends StatefulWidget {
  const SnowFall({
    this.width = 200,
    this.height = 200,
    super.key,
    this.backgroundColor = Colors.black,
    this.noOfSnowBall = 200,
  });
  final double width;
  final double height;

  final Color backgroundColor;
  final int noOfSnowBall;

  @override
  State<SnowFall> createState() => _SnowFallState();
}

class _SnowFallState extends State<SnowFall> {
  late final double width;
  late final double height;

  @override
  void didChangeDependencies() {
    width = widget.width;
    height = widget.height;
    Timer.periodic(const Duration(milliseconds: 1), (timer) {
      setState(() {});
    });

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.backgroundColor,
      width: widget.width,
      height: widget.height,
      child: CustomPaint(
        painter: SnowFallPainter(noOfSnowBall: widget.noOfSnowBall),
      ),
    );
  }
}
