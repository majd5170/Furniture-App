import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app/src/core/utils/resources/app_assets.dart';
import 'package:furniture_app/src/core/utils/resources/app_color.dart';
import 'package:furniture_app/src/core/utils/resources/app_strings.dart';
import 'package:furniture_app/src/core/utils/widgets/Container_widget.dart';
import 'package:furniture_app/src/core/utils/widgets/textField_widget.dart';
import 'package:furniture_app/src/presentation/cubits/cubit_login/login_cubit.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: BlocConsumer<LoginCubit, LoginState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            return Form(
              key: BlocProvider.of<LoginCubit>(context).loginKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    AppStrings.welcomeBack,
                    style:Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontSize: 32.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(AppStrings.WelcomeBackPlease,
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.gray,
                    )
                  ),
                  TextFieldWidgets(
                     inputType: TextInputType.emailAddress,
                    hinttext: AppStrings.pleasEnterEmail,
                    labeltext: AppStrings.email,
                    controller:
                        BlocProvider.of<LoginCubit>(context).emailController,
                    validate: (data) {
                      if (data!.isEmpty || !data.contains('@gmail.com')) {
                        return AppStrings.pleasEnterEmail;
                      }
                      return null;
                    }, 
                  ),
                  TextFieldWidgets(
                    inputType: TextInputType.visiblePassword,
                    hinttext: AppStrings.pleasEnterPassword,
                    labeltext: AppStrings.password,
                    icon: BlocProvider.of<LoginCubit>(context).suffixIcon,
                    sufiicIconOnpressed: () {
                      BlocProvider.of<LoginCubit>(context)
                          .changLoginPasswordSuffixIcon();
                    },
                    validate: (data) {
                      if (data!.isEmpty || !data.contains('5170')) {
                        return AppStrings.pleasEnterPassword;
                      }
                      return null;
                    },
                    obscure: BlocProvider.of<LoginCubit>(context).isloginPasswordShowing,
                    controller:
                        BlocProvider.of<LoginCubit>(context).passwordController,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (value) {},
                      ),
                      Text( 
                        AppStrings.Rememberfordays,
                        style: Theme.of(context).textTheme.labelSmall!.copyWith(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.gray,
                        )
                      ),
                      Text(AppStrings.forgetpassword,
                          style: Theme.of(context).textTheme.labelSmall!.copyWith(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        )
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      if (BlocProvider.of<LoginCubit>(context).loginKey.currentState!.validate()) {
                        GoRouter.of(context).go("/Home_screen");
                      }

                    },
             child: CustomContainer(
                      width: 327.w,
                      height: 56.h,
                      color: AppColors.primary,
                      radius: 14,
                      child: Center(child: Text( AppStrings.login  ,  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: AppColors.white,
                             )
                            )
                           ),
                          ),
                        ),
                   
                        InkWell(
                          onTap: () {
                            
                          },
                          child: CustomContainer(
                          width: 327.w,
                          height: 56.h,
                          color: AppColors.white,
                          radius: 14,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(AppAssets.goolgeLogoSvg),
                              Text(AppStrings.SignInWithGoogle, style: Theme.of(context).textTheme.titleLarge,)
                            ],
                          
                          ),  
                          ),
                        ),
                    
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(AppStrings.DontHaveAccount,
                        style:  Theme.of(context).textTheme.labelSmall!.copyWith(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.gray,
                        )
                      ),
                      InkWell(
                        onTap: () {
                              GoRouter.of(context).go("/SignUp_screen");
                        },
                        child: Text(AppStrings.SignupFree,
                          style: TextStyle(
                              fontSize: 14.sp, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
