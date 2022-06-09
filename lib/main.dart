import 'package:flutter/material.dart';
import 'package:selfscreening/ui/pages/home_page.dart';
import 'package:selfscreening/ui/pages/landing_page.dart';
import 'package:selfscreening/ui/pages/sign_in_page.dart';
import 'package:selfscreening/ui/pages/sign_up_page.dart';
import 'package:selfscreening/ui/pages/splash_page.dart';

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
        '/home-page': (context) => HomePage(),
        '/sign-in-page': (context) => SignInPage(),
        '/sign-up-page': (context) => SignUpPage(),
      },
    );
  }
}
