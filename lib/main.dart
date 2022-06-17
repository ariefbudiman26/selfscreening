import 'package:flutter/material.dart';
import 'package:selfscreening/ui/pages/landing_page.dart';
import 'package:selfscreening/ui/pages/screening_page.dart';
import 'package:selfscreening/ui/pages/sign_in_page.dart';
import 'package:selfscreening/ui/pages/sign_up_page.dart';
import 'package:selfscreening/ui/pages/splash_page.dart';
import 'package:selfscreening/ui/pages/user_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'PlusJakartaSans'),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/landing-page': (context) => LandingPage(),
        '/sign-in-page': (context) => SignInPage(),
        '/sign-up-page': (context) => SignUpPage(),
        '/user-home-page': (context) => UserHomePage(),
        '/screening-page': (context) => ScreeningPage(),
      },
    );
  }
}
