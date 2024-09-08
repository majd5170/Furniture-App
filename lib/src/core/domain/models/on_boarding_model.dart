
import '../../utils/resources/app_assets.dart';
import '../../utils/resources/app_strings.dart';

class OnBoardingModel {
   String imgPath;
   String title;


  OnBoardingModel({
    required this.imgPath,
    required this.title,
  
  });
  static List<OnBoardingModel> onBoardingScreens = [
    OnBoardingModel(
        imgPath: AppAssets.welocme_one,
        title: AppStrings.titleOneScreen,
    ),
    OnBoardingModel(
        imgPath: AppAssets.welocme_two,
        title: AppStrings.titleTwoScreen,
       ),
    OnBoardingModel(
        imgPath: AppAssets.welocme_three,
        title: AppStrings.titleThreeScreen,
        ),
  
  ];
}