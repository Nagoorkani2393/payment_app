import 'package:flutter/material.dart';
import '../constants/app_colors/app_colors.dart';
import '../constants/style.dart';
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
                Positioned(
                  top: 50.0,
                    left: 20.0,
                    right: 20.0,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("Nagoor kani.S",
                            style: Style.headingText,),
                            Icon(Icons.notifications_none, color: Colors.white,),
                          ],
                        ),
                        const SizedBox(height: 50.0,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("\$4000.0",
                              style: Style.headingText,),
                            Icon(Icons.add_chart, color: Colors.white,),
                          ],
                        ),
                      ],
                    )),
                Positioned(
                  top: 300.0,
                  left: 50.0,
                  right: 50.0,
                  child: Container(
                    height: 70.0,
                    decoration: const HomeContainer(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RichText(
                              text: const TextSpan(
                                  text: "\$4000.0",
                                  style: Style.headingText),),
                            RichText(
                              text: const TextSpan(
                                  text: "Avg Spending",
                                  style: Style.bodyText),),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          child: VerticalDivider(
                            color: Colors.white,
                            thickness: 2.0,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RichText(
                              text: const TextSpan(
                                  text: "+4.0",
                                  style: Style.headingText),),
                            RichText(
                              text: const TextSpan(
                                  text: "Avg Swift",
                                  style: Style.bodyText),),
                          ],
                        ),
                      ],
                    )
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