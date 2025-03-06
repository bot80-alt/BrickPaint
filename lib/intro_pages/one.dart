import 'package:flutter/material.dart';
class FirstIntro extends StatelessWidget {

  const FirstIntro({super.key});

// next button function

void next(BuildContext context)
{
  Navigator.pushNamed(context, 'second');
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        foregroundDecoration: DecorationImage(image: ),
      ), 
    );
  }
}