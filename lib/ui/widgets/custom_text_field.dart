import 'package:flutter/material.dart';
import 'package:selfscreening/shared/themes.dart';

class CustomTextField extends StatelessWidget {
  final String title;
  final String hintText;
  final bool obsecureText;
  final TextEditingController controller;

  const CustomTextField({
    Key? key,
    required this.title,
    required this.hintText,
    this.obsecureText = false,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          title,
          style: greyTextStyle.copyWith(fontWeight: medium),
        ),
        SizedBox(
          height: 6,
        ),
        TextFormField(
          style: greyTextStyle.copyWith(fontWeight: medium),
          obscureText: obsecureText,
          cursorColor: greyTextColor,
          controller: controller,
          decoration: InputDecoration(
            fillColor: greyColumnColor,
            filled: true,
            hintText: hintText,
            hintStyle: greyTextStyle,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(defaultRadius),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(defaultRadius),
              borderSide: BorderSide(color: purpleTextColor),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(defaultRadius),
              borderSide: BorderSide(color: greyColumnColor),
            ),
          ),
        ),
      ]),
    );
  }
}
