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
    var size = MediaQuery.of(context).size;
    var screenHeight = size.height;
    var screenWidth = size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: screenWidth,
            height: screenHeight,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/splash.jpg'),
              ),
            ),
          ),
          Container(
            child: Center(
                child: Text(
              "SELF SCREENING",
              style: whiteTextStyle.copyWith(
                  fontSize: 30, fontWeight: medium, letterSpacing: 10),
            )),
          ),
        ],
      ),
    );
  }
}
