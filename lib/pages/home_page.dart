import 'package:flutter/material.dart';
import '../constants/app_colors/app_colors.dart';
import '../widgets/home_background_painter.dart';
import '../widgets/home_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              children: [
                const SizedBox(
                  width: double.infinity,
                  height: 400.0,
                  child: CustomPaint(
                    painter: HomeBackgroundPainter(
                        backgroundColor: AppColors.primaryColor),
                  ),
                ),
                const Text("Sample",),
                Positioned(
                  top: 330.0,
                  left: 50.0,
                  right: 50.0,
                  child: Container(
                    height: 70.0,
                    decoration: const HomeContainer(),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 150,
            ),
            Container(
              height: 450,
            ),
          ],
        ),
      ),
    );
  }
}