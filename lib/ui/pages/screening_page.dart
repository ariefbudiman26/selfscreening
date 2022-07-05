import 'package:flutter/material.dart';
import 'package:selfscreening/ui/widgets/question_tile.dart';

import '../../shared/themes.dart';
import '../widgets/custom_button.dart';

class ScreeningPage extends StatefulWidget {
  const ScreeningPage({Key? key}) : super(key: key);

  @override
  State<ScreeningPage> createState() => _ScreeningPageState();
}

class _ScreeningPageState extends State<ScreeningPage> {
  @override
  Widget build(BuildContext context) {
    Widget submitButton() {
      return CustomButton(
          title: 'Submit',
          onPressed: () {
            Navigator.pushNamed(context, '/result-page');
          });
    }

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
                  whiteTextStyle.copyWith(fontSize: 20, fontWeight: semiBold),
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
                  question:
                      'Apakah pernah keluar rumah/ tempat umum (pasar, fasyankes, kerumunan orang, dan lain lain) ?',
                ),
                SizedBox(
                  height: 15,
                ),
                QuestionTile(
                  question: 'Apakah pernah menggunakan transportasi umum ?',
                ),
                SizedBox(
                  height: 15,
                ),
                QuestionTile(
                  question:
                      'Apakah pernah melakukan perjalanan ke luar kota/internasional ? (wilayah yang terjangkit/zona merah) ?',
                ),
                SizedBox(
                  height: 15,
                ),
                QuestionTile(
                  question:
                      'Apakah anda mengikuti kegiatan yang melibatkan orang banyak ?',
                ),
                SizedBox(
                  height: 15,
                ),
                QuestionTile(
                  question:
                      'Apakah memiliki riwayat kontak erat dengan orang yang dinyatakan kasus suspek, kasus probable, atau konfirm COVID-19 (berjabat tangan, berbicara, berada dalam satu ruangan/ satu rumah) ?',
                ),
                QuestionTile(
                  question:
                      'Apakah saat ini mengalami demam/ batuk/pilek/ sakit tenggorokan/sesak ?',
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(40, 30, 40, 30),
              child: submitButton(),
            ),
          ]),
        )
      ],
    ));
  }
}
