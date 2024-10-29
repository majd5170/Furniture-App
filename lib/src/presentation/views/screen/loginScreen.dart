import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      appBar: AppBar(
        leading: Text(''),
      ),
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
                    style:
                        TextStyle(fontSize: 32.sp, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'Welcome Back! please enter your details.',
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.gray),
                  ),
                  TextFieldWidgets(
                    hinttext: 'Enter your Email',
                    labeltext: 'Email',
                    controller:
                        BlocProvider.of<LoginCubit>(context).emailController,
                    validate: (data) {
                      if (data!.isEmpty || !data.contains('@gmail.com')) {
                        return AppStrings.pleasEnterEmail;
                      }
                    },
                  ),
                  TextFieldWidgets(
                    hinttext: 'Enter your Password',
                    labeltext: 'Password',
                    icon: BlocProvider.of<LoginCubit>(context).suffixIcon,
                    sufiicIconOnpressed: () {
                      BlocProvider.of<LoginCubit>(context)
                          .changLoginPasswordSuffixIcon();
                    },
                    validate: (data) {
                      if (data!.isEmpty || !data.contains('5170')) {
                        return AppStrings.pleasEnterPassword;
                      }
                    },
                    obscure: true,
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
                        'Remember for 30 days',
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.gray),
                      ),
                      Text(
                        'forget password',
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.black),
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
                      text: '=',
                      color: AppColors.primary,
                      radius: 14,
                      text_color: AppColors.white,
                    ),
                  ),
                  CustomContainer(
                    width: 327.w,
                    height: 56.h,
                    text: 'Sign In With Google',
                    color: AppColors.white,
                    radius: 14,
                    text_color: AppColors.black,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don have an account?  ',
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.gray),
                      ),
                      Text(
                        'Sign up fir free',
                        style: TextStyle(
                            fontSize: 14.sp, fontWeight: FontWeight.w500),
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
