import 'package:flutter/material.dart';
import 'package:selfscreening/themes.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

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
