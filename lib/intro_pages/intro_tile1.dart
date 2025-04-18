import 'package:flutter/material.dart';

class IntroTile1 extends StatelessWidget {
  const IntroTile1 ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 188, 188, 188),
      child: Center(
        child: Text('Page 1'),
      )
    );
  }
}