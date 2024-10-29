import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  GlobalKey<FormState> loginKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isloginPasswordShowing = true;
  IconData suffixIcon = Icons.visibility;

  void changLoginPasswordSuffixIcon() {
    isloginPasswordShowing = !isloginPasswordShowing;
    suffixIcon =
        isloginPasswordShowing ? Icons.visibility : Icons.visibility_off;
    emit(ChangLoginPasswordSuffixIcon());
  }
}
