import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app/src/core/utils/resources/app_strings.dart';
import 'package:furniture_app/src/core/utils/widgets/custom_button.dart';
import 'package:furniture_app/src/presentation/views/screen/LoginScreen.dart';
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
              padding: const EdgeInsets.all(18.0),
              child: Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                          ? Container(
                            width: 110.w,
                            height: 60.h,
                            child: CustomTextButton(
                                text: AppStrings.skip,
                                onPressed: () {
                                   controller.jumpToPage(2);
                                }, text_color_button: AppColors.blackFont,
                              ),
                          )
                          : Container(),
                      //spacer
                      const Spacer(),
                      //next Button
                      index != 2
                          ? Container(
                            width: 110.w,
                            height: 60.h,
                            child: CustomButton(
                                text: AppStrings.next,
                                onPressed: () {
                                  controller.nextPage(
                                      duration: const Duration(milliseconds: 1200),
                                      curve: Curves.easeOutQuad);
                                }, text_color_button: AppColors.white,
                              ),
                          )
                          : Container(
                            width: 327.w,
                            height: 56.h,
                            child: CustomButton(
                                text: AppStrings.getStarted,
                                onPressed: ()  {
                                  Navigator.push(
                                  context, MaterialPageRoute(builder: (_) => LoginScreen()));
                        }, text_color_button: AppColors.white,),
                      )
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
