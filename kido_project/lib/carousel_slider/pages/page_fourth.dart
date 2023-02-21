import 'package:flutter/material.dart';

class PageFourth extends StatefulWidget {
  const PageFourth({super.key});

  @override
  State<PageFourth> createState() => _PageFourthState();
}

class _PageFourthState extends State<PageFourth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
        'assets/images/splash_screen_fifth.png',
        height: 910,
        width: 410,
        fit: BoxFit.fill,
      ),
    );
  }
}
