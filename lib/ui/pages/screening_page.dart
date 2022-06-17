import 'package:flutter/material.dart';
import 'package:selfscreening/ui/widgets/question_tile.dart';

import '../../shared/themes.dart';

class ScreeningPage extends StatefulWidget {
  const ScreeningPage({Key? key}) : super(key: key);

  @override
  State<ScreeningPage> createState() => _ScreeningPageState();
}

class _ScreeningPageState extends State<ScreeningPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: purpleButtonColor,
          automaticallyImplyLeading: false,
          pinned: true,
          expandedHeight: MediaQuery.of(context).size.height / 8,
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            title: Text(
              'Self Screening',
              style:
                  whiteTextStyle.copyWith(fontSize: 18, fontWeight: semiBold),
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 30,
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            Column(
              children: const [
                QuestionTile(
                  question: '1. Apakah Anda Sehat hari ini ?',
                ),
                SizedBox(
                  height: 15,
                ),
                QuestionTile(
                  question: '2. Apakah Anda Sehat hari ini ?',
                ),
                SizedBox(
                  height: 15,
                ),
                QuestionTile(
                  question: '3. Apakah Anda Sehat hari ini ?',
                ),
                SizedBox(
                  height: 15,
                ),
                QuestionTile(
                  question: '4. Apakah Anda Sehat hari ini ?',
                ),
                SizedBox(
                  height: 15,
                ),
                QuestionTile(
                  question: '5. Apakah Anda Sehat hari ini ?',
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ]),
        )
      ],
    ));
  }
}
