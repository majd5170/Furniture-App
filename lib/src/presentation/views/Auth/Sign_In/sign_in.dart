import 'package:flutter/material.dart';
import 'package:furniture_app/src/core/utils/resources/app_color.dart';
import 'package:furniture_app/src/core/utils/widgets/Container_widget.dart';
import 'package:furniture_app/src/core/utils/widgets/textField_widget.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome Back',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
            ),
            Text(
              'Welcome Back! please enter your details.',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.gray),
            ),
            TextFieldWidgets(
              hinttext: 'Enter your Email',
              labeltext: 'Email',
              obscure: false,
            ),
            TextFieldWidgets(
              hinttext: 'Enter your Password',
              labeltext: 'Password',
              obscure: true,
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
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.gray),
                ),
                Text(
                  'forget password',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.black),
                ),
              ],
            ),
            ContainerWidget(
                width: 327,
                height: 56,
                text: '=',
                color: AppColors.primary,
                radius: 14),
            ContainerWidget(
                width: 327,
                height: 56,
                text: 'sign in with google',
                color: AppColors.white,
                radius: 14),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'don have an account?  ',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.gray),
                ),
                Text(
                  'sign up fir free',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}