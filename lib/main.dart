import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app/firebase_options.dart';
import 'package:furniture_app/src/core/domain/models/loacl_notifaction_service.dart';
import 'package:furniture_app/src/core/routers/app_routers.dart';
import 'package:furniture_app/src/core/theme/theme.dart';




void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LoaclNotifactionService.init();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375,812),
      builder: (context, child) => MaterialApp.router(
        routerConfig: router,
        theme: getAppTheme(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
