import 'package:flutter/material.dart';
import 'package:furniture_app/src/core/utils/resources/app_strings.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../core/domain/models/on_boarding_model.dart';
import '../../../core/utils/resources/app_color.dart';

// ignore: must_be_immutable
class OnBoarding extends StatelessWidget {
  OnBoarding({super.key});

  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          controller: controller,
          itemCount: OnBoardingModel.onBoardingScreens.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // image
                  Image.asset(OnBoardingModel.onBoardingScreens[index].imgPath),
                  // title
                  Text(
                    OnBoardingModel.onBoardingScreens[index].title,
                    style: Theme.of(context).textTheme.displayMedium,
                    textAlign: TextAlign.center,
                  ),
                  // dots
                  SmoothPageIndicator(
                    controller: controller,
                    count: 3,
                    effect: SlideEffect(
                        activeDotColor: AppColors.primary, dotHeight: 10),
                  ),
                  // buttons
                  Row(
                    children: [
                      Text(AppStrings.skip,
                          style: Theme.of(context).textTheme.displaySmall),
                      Spacer(),
                      Text(AppStrings.Next,
                          style: Theme.of(context).textTheme.displaySmall),
                    ],
                  )
                ],
              ),
            );
          }),
    );
  }
}
