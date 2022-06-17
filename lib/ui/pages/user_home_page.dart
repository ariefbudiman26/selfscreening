import 'package:flutter/material.dart';
import 'package:selfscreening/shared/themes.dart';

import '../widgets/custom_button.dart';

class UserHomePage extends StatefulWidget {
  const UserHomePage({Key? key}) : super(key: key);

  @override
  State<UserHomePage> createState() => _UserHomePageState();
}

class _UserHomePageState extends State<UserHomePage> {
  @override
  Widget build(BuildContext context) {
    Widget flexbileWidget() {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage('assets/images/use_facemask.jpg'),
                    fit: BoxFit.cover),
              ),
            ),
            SizedBox(
              height: 80,
            ),
          ],
        ),
      );
    }

    Widget selfScreeningButton() {
      return CustomButton(
          title: 'Self Screening',
          onPressed: () {
            Navigator.pushNamed(context, '/screening-page');
          });
    }

    return Scaffold(
      backgroundColor: whiteBackgroundColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: purpleButtonColor,
            leading: Icon(
              Icons.logout,
            ),
            pinned: true,
            expandedHeight: MediaQuery.of(context).size.height / 3,
            flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text(
                  'Arief Budiman',
                  style: whiteTextStyle.copyWith(
                      fontSize: 20, fontWeight: semiBold),
                ),
                background: flexbileWidget()),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 250,
                  child: selfScreeningButton(),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Screening History',
                      style: greyTextStyle.copyWith(
                          fontSize: 16, fontWeight: medium),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
            return Container(
              height: 100,
              width: 50,
              color: Colors.white,
            );
          }, childCount: 9))
        ],
      ),
    );
  }
}
