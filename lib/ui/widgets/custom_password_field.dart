import 'package:flutter/material.dart';
import 'package:selfscreening/shared/themes.dart';

class CustomTextFieldPassword extends StatefulWidget {
  final String title;
  final String hintText;
  final TextEditingController controller;

  const CustomTextFieldPassword({
    Key? key,
    required this.title,
    required this.hintText,
    required this.controller,
  }) : super(key: key);

  @override
  State<CustomTextFieldPassword> createState() =>
      _CustomTextFieldPasswordState();
}

class _CustomTextFieldPasswordState extends State<CustomTextFieldPassword> {
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          widget.title,
          style: greyTextStyle.copyWith(fontWeight: medium),
        ),
        SizedBox(
          height: 6,
        ),
        TextFormField(
          style: greyTextStyle.copyWith(fontWeight: medium),
          obscureText: isObscure,
          cursorColor: greyTextColor,
          controller: widget.controller,
          decoration: InputDecoration(
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  isObscure = !isObscure;
                });
              },
              icon: Icon(isObscure ? Icons.visibility : Icons.visibility_off),
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
            ),
            fillColor: greyColumnColor,
            filled: true,
            hintText: widget.hintText,
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
