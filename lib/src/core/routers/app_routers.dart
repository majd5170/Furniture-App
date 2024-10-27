import 'package:furniture_app/src/presentation/views/screen/Detail_screen.dart';
import 'package:furniture_app/src/presentation/views/screen/Favourite_screen.dart';
import 'package:furniture_app/src/presentation/views/screen/Home_screen.dart';
import 'package:furniture_app/src/presentation/views/screen/OnboardScreens.dart';
import 'package:furniture_app/src/presentation/views/screen/Profile_screen.dart';
import 'package:furniture_app/src/presentation/views/screen/Shopping_screen.dart';
import 'package:furniture_app/src/presentation/views/screen/loginScreen.dart';
import 'package:furniture_app/src/presentation/views/screen/signinscreen.dart';
import 'package:furniture_app/src/presentation/views/screen/Spalsh_screen.dart';
import 'package:go_router/go_router.dart';



GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => SplashScreen(),
   
       routes: [
        GoRoute(
        path: '/OnboardScreens',
        builder: (context, state) => OnBoarding(),
        ),
        GoRoute(
        path: '/SignIn_screen',
        builder: (context, state) => LoginScreen(),
        ),
        GoRoute(
        path: '/SignUp_screen',
        builder: (context, state) => SignInScreen(),
        ),
        GoRoute(
        path: '/Home_screen',
        builder: (context, state) => HomeScreen(),
        ),
        GoRoute(
        path: '/Detail_screen',
        builder: (context, state) => DetailScreen(),
        ),
        GoRoute(
        path: '/Profile_screen',
        builder: (context, state) => ProfileScreen(),
        ),
        GoRoute(
        path: '/Shopping_screen',
        builder: (context, state) => ShoppingScreen(),
        ),
        GoRoute(
        path: '/Favourite_screen',
        builder: (context, state) => FavouriteScreen(),
        ),
       ] 
      ),
    ]
  );