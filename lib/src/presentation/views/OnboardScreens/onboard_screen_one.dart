import 'package:flutter/material.dart';
import 'package:furniture_app/src/core/utils/resources/app_assets.dart';
import 'package:furniture_app/src/core/utils/resources/app_strings.dart';
import 'package:furniture_app/src/presentation/views/OnboardScreens/onboard_screen_three.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../core/utils/resources/app_color.dart';
import 'onboard_screen_two.dart';

class PagesWelcome extends StatefulWidget {
  PagesWelcome({super.key});

  @override
  State<PagesWelcome> createState() => _PagesWelcomeState();
}

class _PagesWelcomeState extends State<PagesWelcome> {
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller,
        itemCount: 3,
        itemBuilder: (context, index) {
          return PageView(
            children: [
              OnboardScreenOne(),
              OnboardScreenTwo(),
              OnboardScreenThree(),
            ],   
          );
        });
  }
}

class OnboardScreenOne extends StatelessWidget {
  OnboardScreenOne({super.key});
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // image
            Image.asset(AppAssets.welocme_one),
            // title
            Text(AppStrings.titleOneScreen , style:  TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
                ),
            // dots
            SmoothPageIndicator(
              controller: controller,
              count: 3,
              effect:
              SlideEffect(activeDotColor: AppColors.primary, dotHeight: 10),
            ),
            // buttons
            Row(
              children: [
                Text(AppStrings.skip , style: TextStyle(
                  color: AppColors.gray,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),),
                Spacer(),
                Text(AppStrings.Next),
              ],
            )
          ],
        ),
      ),
    );
  }
}
