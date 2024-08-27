import 'package:flutter/material.dart';
import 'package:furniture_app/src/core/utils/resources/app_assets.dart';
import 'package:furniture_app/src/core/utils/resources/app_strings.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../core/utils/resources/app_color.dart';
import 'welcome_screen_two.dart';

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
              WelocmeScreenOne(),
              WelocmeScreenTwo(),
            ],
          );
        });
  }
}

class WelocmeScreenOne extends StatelessWidget {
  WelocmeScreenOne({super.key});
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // image
            Image.asset(AppAssets.welocme_one),
            // title
            Text(AppStrings.titleOneScreen),
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
                Text(AppStrings.skip),
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

class WelocmeScreenTwo extends StatelessWidget {
  WelocmeScreenTwo({super.key});
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // image
            Image.asset(AppAssets.welocme_two),
            // title
            Text(AppStrings.titleTwoScreen),
            // dots
            SmoothPageIndicator(
              controller: controller,
              count: 3,
              effect: SlideEffect(
                dotHeight: 10,
                activeDotColor: AppColors.primary,
              ),
            ),
            // buttons
            Row(
              children: [
                Text(AppStrings.skip),
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
