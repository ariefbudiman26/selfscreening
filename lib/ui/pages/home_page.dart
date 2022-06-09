import 'package:flutter/material.dart';
import '../../themes.dart';
import '../widgets/custom_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var screenHeight = size.height;
    var screenWidth = size.width;

    Widget signUpButton() {
      return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/sign-up-page');
        },
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(bottom: 50),
          child: Text(
            'Don\'t have an account? Sign Up',
            style: purpleTextStyle.copyWith(
                fontSize: 16,
                fontWeight: light,
                decoration: TextDecoration.underline),
          ),
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: screenWidth,
            height: screenHeight,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/home.jpg'),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomButton(
                    title: 'Sign In',
                    width: 150,
                    margin: EdgeInsets.only(top: 50, bottom: 50),
                    onPressed: () {
                      Navigator.pushNamed(context, '/sign-in-page');
                    }),
                signUpButton(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
