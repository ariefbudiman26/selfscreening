import 'package:flutter/material.dart';
import 'package:selfscreening/themes.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';

class SignInPage extends StatefulWidget {
  SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController emailController = TextEditingController(text: '');
  final TextEditingController passwordController =
      TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Row(
        children: [
          Container(
            child: Text(
              'Sign In',
              style:
                  whiteTextStyle.copyWith(fontSize: 28, fontWeight: semiBold),
            ),
          ),
          Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/sign-up-page');
            },
            child: Container(
              alignment: Alignment.centerRight,
              child: Text(
                'Don\'t have an account? Sign Up',
                style:
                    purpleTextStyle.copyWith(fontSize: 14, fontWeight: medium),
              ),
            ),
          ),
        ],
      );
    }

    Widget emailInput() {
      return CustomTextField(
        title: 'Email Address',
        hintText: 'Your Email Address',
        controller: emailController,
      );
    }

    Widget passwordInput() {
      return CustomTextField(
        title: 'Password',
        hintText: 'Your Password',
        obsecureText: true,
        controller: passwordController,
      );
    }

    Widget signInButton() {
      return CustomButton(title: 'Sign In', onPressed: () {});
    }

    Widget footer() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Powered by: ',
            style: greyTextStyle.copyWith(fontWeight: light),
          ),
          GestureDetector(
            onTap: () {},
            child: Text(
              'Arief Budiman',
              style: purpleTextStyle.copyWith(fontWeight: light),
            ),
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: blackBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.fromLTRB(defaultMargin, 80, defaultMargin, 30),
          children: [
            header(),
            SizedBox(
              height: 150,
            ),
            emailInput(),
            passwordInput(),
            SizedBox(
              height: 50,
            ),
            signInButton(),
            footer(),
          ],
        ),
      ),
    );
  }
}
