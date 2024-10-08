import 'package:flutter/material.dart';
import 'package:furniture_app/src/core/utils/resources/app_color.dart';
import 'package:furniture_app/src/core/utils/widgets/Container_widget.dart';
import 'package:furniture_app/src/core/utils/widgets/textField_widget.dart';

import '../Sign_In/sign_in.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Create Account',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
            ),
            Text(
              'Let\'s Create Account Toghter',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.gray),
            ),
            TextFieldWidgets(
                labeltext: 'Full name',
                hinttext: 'Enter Your Name',
                obscure: false),
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
            CustomContainer(
                width: 327,
                height: 56,
                text: 'Sign Up',
                color: AppColors.primary,
                radius: 14, text_color: AppColors.white,),
            CustomContainer(
                width: 327,
                height: 56,
                text: 'sign in with google',
                color: AppColors.white,
                radius: 14, text_color: AppColors.white,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already Have An Account?  ',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.gray),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
          context, MaterialPageRoute(builder: (_) => SignInScreen()));
                  },
                  child: Text(
                    'Sign In',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
