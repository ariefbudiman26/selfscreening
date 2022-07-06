import 'package:flutter/material.dart';

import '../../shared/themes.dart';
import '../widgets/custom_button.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  int result = 3;
  @override
  Widget build(BuildContext context) {
    Widget understandButton() {
      return CustomButton(
          title: 'Mengerti',
          onPressed: () {
            Navigator.pushNamed(context, '/user-home-page');
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
                'Result',
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
                children: [
                  Center(
                    child: Text(
                      'Your Score',
                      style: purpleTextStyle.copyWith(
                          fontSize: 16, fontWeight: bold),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        result.toString(),
                        style: greyTextStyle.copyWith(
                            fontSize: 70,
                            color: result == 0
                                ? Colors.green
                                : result >= 1 && result <= 4
                                    ? Colors.yellow
                                    : Colors.red),
                      ),
                      Text(
                        '/14',
                        style: greyTextStyle.copyWith(fontSize: 70),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: defaultMargin, right: defaultMargin),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          '0 = Risiko Rendah',
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 12,
                              fontWeight: bold),
                        ),
                        Text(
                          '1-4 = Risiko Sedang',
                          style: TextStyle(
                              color: Colors.yellow,
                              fontSize: 12,
                              fontWeight: bold),
                        ),
                        Text(
                          '>5 = Risiko Tinggi',
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 12,
                              fontWeight: bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(
                        defaultMargin, 30, defaultMargin, 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Risiko Tinggi: ',
                          style: greyTextStyle.copyWith(fontWeight: semiBold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Agar dilakukan investigasi dan tidak diperkenankan masuk bekerja / isolasi mandiri 14 hari atau jika ada indikasi kuat maka dilakukan pemeriksaan rapid test/rt-PCR.',
                          style: greyTextStyle,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Risiko Rendah - Sedang: ',
                          style: greyTextStyle.copyWith(fontWeight: semiBold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Diperbolehkan masuk bekerja namun dilakukan pemeriksaan suhu tubuh di pintu masuk tempat kerja. Apabila didapatkan suhu > 38°C agar dilakukan investigasi dan pemeriksaan petugas kesehatan. Jika dipastikan pekerja tidak memenuhi kriteria suspek, probable, atau kontak erat. Pekerja dapat masuk bekerja.',
                          style: greyTextStyle,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding:
                    EdgeInsets.fromLTRB(defaultMargin, 30, defaultMargin, 30),
                child: understandButton(),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
