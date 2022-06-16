import 'package:flutter/material.dart';
import 'package:selfscreening/themes.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  late PageController _pageController;
  int _pageIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 15, top: 15, right: 15, bottom: 30),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  itemCount: data.length,
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      _pageIndex = index;
                    });
                  },
                  itemBuilder: (context, index) => LandingPageContent(
                    image: data[index].image,
                  ),
                ),
              ),
              Row(
                children: [
                  ...List.generate(
                      data.length,
                      (index) => Padding(
                            padding: const EdgeInsets.only(right: 4),
                            child: Indicator(
                              isActive: index == _pageIndex,
                            ),
                          )),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      _pageIndex == (data.length - 1)
                          ? Navigator.pushNamed(context, '/sign-in-page')
                          : _pageController.nextPage(
                              duration: const Duration(milliseconds: 800),
                              curve: Curves.ease);
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      height: 60,
                      alignment: Alignment.center,
                      width: _pageIndex == (data.length - 1) ? 150 : 60,
                      decoration: BoxDecoration(
                        color: purpleButtonColor,
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: _pageIndex == (data.length - 1)
                          ? Text(
                              "Get Started",
                              style: whiteTextStyle,
                            )
                          : const Icon(
                              Icons.arrow_forward_rounded,
                              color: Colors.white,
                            ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Indicator extends StatelessWidget {
  const Indicator({
    Key? key,
    this.isActive = false,
  }) : super(key: key);

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(microseconds: 300),
      height: isActive ? 12 : 4,
      width: 4,
      decoration: BoxDecoration(
        color:
            isActive ? purpleButtonColor : purpleButtonColor.withOpacity(0.4),
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
      ),
    );
  }
}

class LandingImage {
  final String image;

  LandingImage({required this.image});
}

final List<LandingImage> data = [
  LandingImage(image: "assets/images/use_facemask.jpg"),
  LandingImage(image: "assets/images/wash_hands.jpg"),
  LandingImage(image: "assets/images/keep_distance.jpg"),
  LandingImage(image: "assets/images/clean_surfaces.jpg"),
];

class LandingPageContent extends StatelessWidget {
  const LandingPageContent({Key? key, required this.image}) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Image.asset(
            image,
            height: 250,
          ),
        )
      ],
    );
  }
}
