import 'package:flutter/material.dart';
import 'package:furniture_app/src/core/utils/resources/app_color.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../core/utils/resources/app_assets.dart';
import '../../../core/utils/resources/app_strings.dart';


class OnboardScreenTwo extends StatelessWidget {
  OnboardScreenTwo({super.key});
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
            Text(AppStrings.titleTwoScreen , style:  TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
                ),
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
