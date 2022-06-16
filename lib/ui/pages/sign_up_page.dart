import 'package:flutter/material.dart';
import 'package:selfscreening/themes.dart';
import 'package:selfscreening/ui/widgets/custom_dropdown_button.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController nameController = TextEditingController(text: '');
  final TextEditingController emailController = TextEditingController(text: '');
  final TextEditingController departmentController =
      TextEditingController(text: '');
  final TextEditingController passwordController =
      TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Row(
        children: [
          Container(
            child: Text(
              'Sign Up',
              style:
                  whiteTextStyle.copyWith(fontSize: 28, fontWeight: semiBold),
            ),
          ),
          Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/sign-in-page');
            },
            child: Container(
              alignment: Alignment.centerRight,
              child: Text(
                'Have an account? Sign In',
                style:
                    purpleTextStyle.copyWith(fontSize: 14, fontWeight: medium),
              ),
            ),
          ),
        ],
      );
    }

    Widget nameInput() {
      return CustomTextField(
        title: 'Full Name',
        hintText: 'Your Full Name',
        controller: nameController,
      );
    }

    Widget emailInput() {
      return CustomTextField(
        title: 'Email Address',
        hintText: 'Your Email Address',
        controller: emailController,
      );
    }

    Widget departmentInput() {
      return CustomDropdownButton(
        controller: departmentController,
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

    Widget signUpButton() {
      return CustomButton(title: 'Sign Up', onPressed: () {});
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
          child: Stack(
        children: [
          ListView(
            padding: EdgeInsets.fromLTRB(defaultMargin, 80, defaultMargin, 30),
            children: [
              header(),
              SizedBox(
                height: 80,
              ),
              nameInput(),
              departmentInput(),
              emailInput(),
              passwordInput(),
              SizedBox(
                height: 50,
              ),
              signUpButton(),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              footer(),
              SizedBox(
                height: 5,
              ),
            ],
          ),
        ],
      )),
    );
  }
}
