import 'dart:developer';

import 'package:books_app/presentation/screens/books_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController pageViewController = PageController();

  int? _currentIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          _currentIndex == 2
              ? Container()
              : GestureDetector(
                  onTap: () {
                    pageViewController.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.bounceInOut,
                    );
                  },
                  child: Text("Skip"),
                ),
          SizedBox(width: 20),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              onPageChanged: (value) {
                setState(() {
                  _currentIndex = value;
                  log(value.toString());
                });
              },
              controller: pageViewController,
              children: [
                OnboardingWidget1(),
                OnboardingWidget2(),
                OnboardingWidget3(),
              ],
            ),
          ),
          if (_currentIndex != 2)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: SmoothPageIndicator(
                axisDirection: Axis.horizontal,
                effect: ExpandingDotsEffect(
                  activeDotColor: Colors.amber,
                ),
                controller: pageViewController,
                count: 3, // Number of pages
              ),
            ),
        ],
      ),
    );
  }
}

class OnboardingWidget3 extends StatelessWidget {
  const OnboardingWidget3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/images/book1.png",
          height: MediaQuery.of(context).size.height * 0.45,
        ),
        Text(
          "Only books can help you",
          style: Theme.of(context).textTheme.bodyLarge,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 10),
        Text(
          textAlign: TextAlign.center,
          "Books adkasdnas dknas kajd askj ma,msn dkasjdasnj ajsdjnas asjdask",
        ),
        SizedBox(
          height: 150,
        ),
        ElevatedButton(
          onPressed: () async {
            SharedPreferences _prefs = await SharedPreferences.getInstance();
            await _prefs.setBool("isFirstTimer", false);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BooksScreen(),
              ),
            );
          },
          child: Text(
            "Get Started",
          ),
        ),
      ],
    );
  }
}

class OnboardingWidget1 extends StatelessWidget {
  const OnboardingWidget1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/images/onboard_1.png",
          height: MediaQuery.of(context).size.height * 0.65,
        ),
        Text(
          "Only books can help you",
          style: Theme.of(context).textTheme.bodyLarge,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 10),
        Text(
          textAlign: TextAlign.center,
          "Books adkasdnas dknas kajd askj ma,msn dkasjdasnj ajsdjnas asjdask",
        ),
      ],
    );
  }
}

class OnboardingWidget2 extends StatelessWidget {
  const OnboardingWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/images/onboard_2.png",
          height: MediaQuery.of(context).size.height * 0.65,
        ),
        Text(
          "Only Teacher can help you while coding",
          style: Theme.of(context).textTheme.bodyLarge,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 10),
        Text(
          textAlign: TextAlign.center,
          "Books adkasdnas dknas kajd askj ma,msn dkasjdasnj ajsdjnas asjdask",
        ),
      ],
    );
  }
}
