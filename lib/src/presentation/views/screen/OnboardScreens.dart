import 'package:flutter/material.dart';
import 'package:furniture_app/src/core/utils/resources/app_strings.dart';
import 'package:furniture_app/src/core/utils/widgets/custom_button.dart';
import 'package:furniture_app/src/presentation/views/screen/loginScreen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../core/domain/models/on_boarding_model.dart';
import '../../../core/utils/resources/app_color.dart';
import '../../../core/utils/widgets/custom_text_button.dart';


// ignore: must_be_immutable
class OnBoarding extends StatelessWidget {
  OnBoarding({super.key});

  PageController controller = PageController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          physics: NeverScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          controller: controller,
          itemCount: OnBoardingModel.onBoardingScreens.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(24.0),
              child: Expanded(
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
                      effect: const SlideEffect(
                          activeDotColor: AppColors.primary, dotHeight: 10),
                    ),
                    // buttons
                    Row(
                      children: [
                       index != 2
                          ? CustomTextButton(
                              text: AppStrings.skip,
                              onPressed: () {
                                 controller.jumpToPage(2);
                              }, text_color_button: AppColors.blackFont,
                            )
                          : Container(),
                      //spacer
                      const Spacer(),
                      //next Button
                      index != 2
                          ? CustomButton(
                              text: AppStrings.next,
                              onPressed: () {
                                controller.nextPage(
                                    duration: const Duration(seconds: 4),
                                    curve: Curves.easeOutBack);
                              }, text_color_button: AppColors.white,
                            )
                          : CustomButton(
                              text: AppStrings.getStarted,
                              onPressed: ()  {
                                Navigator.push(
                                context, MaterialPageRoute(builder: (_) => LoginScreen()));
                      }, text_color_button: AppColors.white,)
                    ],
                  )
                ],
                
              ),
            ),
          );
        }
      ),
    );
  }
}
