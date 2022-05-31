import 'package:flutter/material.dart';
import '../constants/app_colors/app_colors.dart';

class HomeContainer extends Decoration {
  const HomeContainer();

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) =>
      _HighlightContainerPainter();
}

class _HighlightContainerPainter extends BoxPainter {
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final Paint paint = Paint()..color = AppColors.accentColor;
    canvas.drawRRect(
        RRect.fromRectAndRadius(
            offset & configuration.size!, const Radius.circular(10.0)),
        paint);
  }
}
