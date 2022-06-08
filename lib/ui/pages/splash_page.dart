import 'dart:async';

import 'package:flutter/material.dart';
import 'package:selfscreening/themes.dart';
import 'package:selfscreening/ui/pages/landing_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushNamed(context, '/landing-page');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: splashColor,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 100,
            height: 100,
            margin: EdgeInsets.only(bottom: 50),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/check.jpg'),
              ),
            ),
          ),
          // Text(
          //   'SELF SCREENING',
          //   style: whiteTextStyle.copyWith(
          //       fontSize: 16, fontWeight: medium, letterSpacing: 12),
          // ),
        ],
      )),
    );
  }
}
