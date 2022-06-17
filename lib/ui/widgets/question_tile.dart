import 'package:flutter/material.dart';
import 'package:selfscreening/shared/themes.dart';

class QuestionTile extends StatelessWidget {
  final String question;
  const QuestionTile({Key? key, required this.question}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width / 1.2,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(defaultRadius),
      ),
      child: Row(
        children: [
          Text(question),
        ],
      ),
    );
  }
}
