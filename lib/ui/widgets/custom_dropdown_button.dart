import 'package:flutter/material.dart';

import '../../shared/themes.dart';

class CustomDropdownButton extends StatefulWidget {
  final TextEditingController controller;
  const CustomDropdownButton({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  State<CustomDropdownButton> createState() => _CustomDropdownButtonState();
}

class _CustomDropdownButtonState extends State<CustomDropdownButton> {
  String? selectedValue = 'Admin & General';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Department',
            style: greyTextStyle.copyWith(fontWeight: medium),
          ),
          SizedBox(
            height: 6,
          ),
          DropdownButtonFormField<String>(
            style: greyTextStyle.copyWith(fontSize: 16),
            hint: Text(
              'Your Department',
              style: greyTextStyle.copyWith(fontSize: 16),
            ),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
                borderSide: BorderSide(color: purpletTextColor),
              ),
              filled: true,
              fillColor: greyColumnColor,
            ),
            //value: selectedValue,
            items: ['Admin & General', 'Finance & Accountng']
                .map(
                  (String item) => DropdownMenuItem<String>(
                    child: Text(item),
                    value: item,
                  ),
                )
                .toList(),
            onChanged: (String? value) {
              setState(() {
                selectedValue = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
