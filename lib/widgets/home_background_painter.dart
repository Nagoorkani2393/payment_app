import 'package:flutter/material.dart';

class HomeBackgroundPainter extends CustomPainter{
  const HomeBackgroundPainter({required this.backgroundColor});
  final Color backgroundColor;

  @override
  void paint(Canvas canvas, Size size) {
    final Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height - 150);
    path.quadraticBezierTo(
        size.width, size.height - 60,
        size.width - 60, size.height - 60);
    path.lineTo(60, size.height - 60);
    path.quadraticBezierTo(
        0, size.height -40, 0, size.height);
    // path.lineTo(0, size.height);
    path.close();

    final Paint paint = Paint()..color = backgroundColor
      ..style = PaintingStyle.fill;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}