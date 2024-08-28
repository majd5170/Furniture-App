import 'package:flutter/material.dart';
import 'package:furniture_app/src/core/utils/resources/app_color.dart';
import 'package:furniture_app/src/core/utils/widgets/Container_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../core/utils/resources/app_assets.dart';
import '../../../core/utils/resources/app_strings.dart';
import '../Auth/Sign_In/sign_in.dart';


class OnboardScreenThree extends StatelessWidget {
  OnboardScreenThree({super.key});
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
            Image.asset(AppAssets.welocme_three),
            // title
            Text(AppStrings.titleThreeScreen , style:  TextStyle(
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
           InkWell(
            onTap: () {
              Navigator.push(
          context, MaterialPageRoute(builder: (_) => SignInScreen()));
            },
             child: ContainerWidget(
              width: 327,
              height: 56,
              text: AppStrings.getStarted,
              color: AppColors.primary,
              radius: 14, text_color: AppColors.white,
              ),
           ),
          ],
        ),
      ),
    );
  }
}
