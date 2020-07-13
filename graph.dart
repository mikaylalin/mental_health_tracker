import 'dart:ui' as ui;
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: HomeWidget(),
      ),
    );
  }
}

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomPaint( //                       <-- CustomPaint widget
        size: Size(300, 300),
        painter: MyPainter(),
      ),
    );
  }
}

class MyPainter extends CustomPainter { //         <-- CustomPainter class
  @override
void paint(Canvas canvas, Size size) {
  final scale = 2;
  final offset = 50;
  List data = [1, 5, 7, 3, 8, 6, 18, 10];
  final pointMode = ui.PointMode.polygon;
  final points = [Offset(0.0 - offset, 300)];
  for (var i = 0; i < data.length; i++) {
    points.add(Offset(((i * 30.0) + 30 - offset) * scale, 300 - (data[i] * 10.0)));
  }
  
  final paint = Paint()
    ..color = Colors.black
    ..strokeWidth = 4
    ..strokeCap = StrokeCap.round;
  canvas.drawPoints(pointMode, points, paint);
}

  @override
  bool shouldRepaint(CustomPainter old) {
    return false;
  }
}