import 'package:flutter/material.dart';
import 'package:selfscreening/shared/themes.dart';

class QuestionTile extends StatefulWidget {
  final String question;
  const QuestionTile({Key? key, required this.question}) : super(key: key);

  @override
  State<QuestionTile> createState() => _QuestionTileState();
}

class _QuestionTileState extends State<QuestionTile> {
  int selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    Widget radioButton() {
      return Column(
        children: [
          RadioListTile<int>(
            value: 1,
            title: Text(
              'Yes',
              style: greyTextStyle.copyWith(fontSize: 16),
            ),
            groupValue: selectedValue,
            onChanged: (value) => setState(() {
              selectedValue = 1;
            }),
          ),
          RadioListTile<int>(
            value: 2,
            title: Text(
              'No',
              style: greyTextStyle.copyWith(fontSize: 16),
            ),
            groupValue: selectedValue,
            onChanged: (value) => setState(() {
              selectedValue = 2;
            }),
          ),
        ],
      );
    }

    return Container(
      padding: const EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width / 1.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(defaultRadius),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.question,
            style: greyTextStyle.copyWith(fontSize: 16),
          ),
          SizedBox(
            height: 10,
          ),
          radioButton(),
        ],
      ),
    );
  }
}
