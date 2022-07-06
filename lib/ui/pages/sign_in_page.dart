import 'package:flutter/material.dart';
import 'package:selfscreening/shared/themes.dart';
import 'package:url_launcher/url_launcher.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_password_field.dart';
import '../widgets/custom_text_field.dart';

final Uri _url = Uri.parse('https://www.instagram.com/ariefbudiman26/');

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
      return CustomTextFieldPassword(
        title: 'Password',
        hintText: 'Your Password',
        controller: passwordController,
      );
    }

    Widget signInButton() {
      return CustomButton(
          title: 'Sign In',
          onPressed: () {
            Navigator.pushNamed(context, '/user-home-page');
          });
    }

    Widget footer() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Developed by: ',
            style: greyTextStyle.copyWith(fontWeight: light),
          ),
          GestureDetector(
            onTap: () {
              _launchUrl();
            },
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
          child: Stack(
        children: [
          ListView(
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
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              footer(),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ],
      )),
    );
  }
}

void _launchUrl() async {
  if (!await launchUrl(_url)) throw 'Could not launch $_url';
}
