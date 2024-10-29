import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app/src/core/utils/resources/app_color.dart';
import 'package:furniture_app/src/core/utils/resources/app_strings.dart';
import 'package:furniture_app/src/core/utils/widgets/Container_widget.dart';
import 'package:furniture_app/src/core/utils/widgets/textField_widget.dart';
import 'package:go_router/go_router.dart';

class SiginScreen extends StatelessWidget {
  SiginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(AppStrings.createAccount,
                    style:
                        TextStyle(fontSize: 32.sp, fontWeight: FontWeight.w600),
                  ),
                  Text(AppStrings.LetCreateAccount,
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.gray),
                  ),
                  TextFieldWidgets(
                    labeltext: AppStrings.FullName,
                    hinttext: AppStrings.EnterYourName,
                    controller: TextEditingController(),
                  ),
                  TextFieldWidgets(
                    hinttext: AppStrings.EnterYourEmail,
                    labeltext: AppStrings.email,
                    controller: TextEditingController(),
                  ),
                  TextFieldWidgets(
                    hinttext: AppStrings.pleasEnterPassword,
                    labeltext: AppStrings.password,
                    obscure: true,
                    controller: TextEditingController(),
                  ),
                  CustomContainer(
                    width: 327.w,
                    height: 56.h,
                    text: AppStrings.SignIn,
                    color: AppColors.primary,
                    radius: 14,
                    text_color: AppColors.white,
                  ),
                  CustomContainer(
                    width: 327.w,
                    height: 56.h,
                    text: AppStrings.SignInWithGoogle,
                    color: AppColors.white,
                    radius: 14,
                    text_color: AppColors.white,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(AppStrings.AlreadyHaveAnAccount,
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.gray),
                      ),
                      InkWell(
                        onTap: () {
                              GoRouter.of(context).go("/LoginScreen");

                        },
                        child: Text(AppStrings.SignIn,
                          style: TextStyle(
                              fontSize: 14.sp, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
      ),
    );
  }
}
