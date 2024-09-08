import 'package:flutter/material.dart';
import 'package:furniture_app/src/core/theme/theme.dart';
import 'package:furniture_app/src/presentation/views/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: getAppTheme(),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
