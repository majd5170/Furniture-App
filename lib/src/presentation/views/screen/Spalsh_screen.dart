import 'package:flutter/material.dart';
import 'package:furniture_app/src/core/utils/resources/app_assets.dart';
import 'package:furniture_app/src/core/utils/resources/app_color.dart';
import 'package:go_router/go_router.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigate();
  }

  void navigate() {
    Future.delayed(Duration(seconds: 5), () {
    GoRouter.of(context).go("/OnboardScreens");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        
        child: Image.asset(AppAssets.applogo),
      ),
    );
  }
}
