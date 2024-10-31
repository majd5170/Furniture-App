import 'package:flutter/material.dart';
import 'package:furniture_app/src/core/utils/resources/app_assets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: 50,
          height: 50,
          child: Image.asset(AppAssets.goolgeLogoSvg)),
      ),
    );
  }
}