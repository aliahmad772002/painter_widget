import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.pink
      ..strokeWidth = 20.0;

    var paint1 = Paint()
      ..color = Color(0xff6D276D)
      ..strokeWidth = 20.0;
    var paint2 = Paint()
      ..color = Color(0xffB9297E)
      ..strokeWidth = 20.0;
    var paint3 = Paint()
      ..color = Color(0xff6D276D)
      ..strokeWidth = 20.0;

    var height = size.height;
    var width = size.width;

    Path path4 = Path();
    path4.moveTo(width, 0);
    path4.lineTo(width, -height);
    path4.quadraticBezierTo(-width * 0.25, height * 0.69, width, -height * 0.4);

    path4.close();
    canvas.drawPath(path4, paint3);

    Path path3 = Path();
    path3.moveTo(width, 0);
    path3.lineTo(width, -height * 0.1);
    path3.quadraticBezierTo(width * 0.3, height * 0.15, width, -height * 0.5);

    path3.close();
    canvas.drawPath(path3, paint2);

    Path path = Path();
    path.moveTo(0, -height * 0.95);
    path.quadraticBezierTo(width * 0.6, 0, width, 0);
    path.lineTo(width, height * 0.9);
    path.quadraticBezierTo(width * 0.4, height, 0, height * 0.7);
    path.close();
    canvas.drawPath(path, paint);

    Path path2 = Path();
    path2.moveTo(width, 0);
    path2.lineTo(width * 0.8, -height * 0.04);
    path2.quadraticBezierTo(width * 0.9, -height * 0.1, width, -height * 0.13);
    path2.close();
    canvas.drawPath(path2, paint1);

    // Path path2 = Path();
    // path2.moveTo(width, 0);
    // path2.lineTo(0, 0);
    // path2.quadraticBezierTo(width * 0.1, 0, width, -height * 0.7);

    // path2.close();
    // canvas.drawPath(path2, paint1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
