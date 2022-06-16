import 'dart:async';
import 'package:flutter/material.dart';
import 'package:selfscreening/shared/themes.dart';
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
      backgroundColor: whiteBackgroundColor,
      body: Center(
        child: Container(
          height: 150,
          width: 150,
          child: Center(
              child: Image(image: AssetImage('assets/images/checklist.gif'))),
        ),
      ),
    );
  }
}
