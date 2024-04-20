import 'package:flutter/material.dart';
import 'package:memory_box/onboarding/page_1.dart';
import 'package:memory_box/onboarding/page_2.dart';
import 'package:memory_box/onboarding/page_3.dart';
import 'package:memory_box/onboarding/page_4.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class onboarding extends StatelessWidget {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // page view
          SizedBox(
            height: 700,
            child: PageView(
              controller: _controller,
              children: const [
                Page1(),
                Page2(),
                Page3(),
                Page4(),
              ],
            ),
          ),

          SmoothPageIndicator(
            controller: _controller,
            count: 4,
            effect: WormEffect(
              activeDotColor: Colors.deepPurple,
              dotColor: Colors.deepPurple.shade100,
              dotHeight: 10,
              dotWidth: 10,
              spacing: 16,
              //verticalOffset: 50,

            ),
          ),
        ],
      ),
    );
  }
}