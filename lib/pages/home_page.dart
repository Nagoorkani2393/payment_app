import 'package:flutter/material.dart';
import 'package:payment_app/constants/app_text.dart';

import '../constants/app_colors/app_colors.dart';
import '../constants/style.dart';
import '../widgets/home_background_painter.dart';
import '../widgets/home_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.secondaryColor,
      width: double.infinity,
      height: double.infinity,
      child: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  top: 80.0,
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
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Account Balance",
                                  style: Style.subText,),
                                const SizedBox(height: 8.0,)
,                                Text("\$4000.0",
                                  style: Style.headingText.copyWith(
                                    fontSize: AppFont.size_38
                                  ),),
                                ],
                            ),
                            const Icon(Icons.add_chart, color: Colors.white,),
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Text("Send Money", style: Style.headingText.copyWith(
                    color: AppColors.primaryColor
                  ),),
                ),
                const SizedBox(height: 8.0,),
                SizedBox(
                  width: double.infinity,
                  height: 80.0,
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 14.0),
                    scrollDirection: Axis.horizontal,
                      itemCount: 10, itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Container(
                            width: 80.0,
                            height: 80.0,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.primaryColor,
                            ),
                          ),
                        );
                  }),
                )
              ],
            ),
            const SizedBox(height: 24.0,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Text("Quick Payment", style: Style.headingText.copyWith(
                      color: AppColors.primaryColor
                  ),),
                ),
                const SizedBox(height: 8.0,),
                SizedBox(
                  width: double.infinity,
                  height: 200.0,
                  child: ListView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 14.0),
                      scrollDirection: Axis.horizontal,
                      itemCount: 10, itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        width: 150.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          color: AppColors.primaryColor,
                        ),
                      ),
                    );
                  }),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}