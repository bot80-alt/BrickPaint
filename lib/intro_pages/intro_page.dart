import 'package:brick_paint/intro_pages/intro_tile1.dart';
import 'package:brick_paint/intro_pages/intro_tile2.dart';
import 'package:brick_paint/intro_pages/intro_tile3.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class FirstIntro extends StatefulWidget {
  const FirstIntro({super.key});
  
  @override
  State<FirstIntro> createState() => _FirstIntroState();
}

class _FirstIntroState extends State<FirstIntro> {
  // Page controller
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            body: Stack(
              children: [ 
                PageView(
                  controller:  _controller,
                  children: [
                  IntroTile1(),
                  IntroTile2(),
                  IntroTile3(),
                ],
              ),

              // dot indicator
              Container(
                alignment: Alignment(0, 0.75),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        _controller.jumpToPage(3);
                      },
                      child: Text('Skip'),
                    ),

                    // dot indicator
                    SmoothPageIndicator(controller: _controller ,count: 3),

                    GestureDetector(
                      onTap: () {
                        _controller.nextPage(duration: Duration(microseconds: 500),
                        curve: Curves.easeIn);
                      },
                      child: Text('Next'),
                    ),
                  ],
                )
              )
             ],
            ),
    );
  }
}