import 'package:flutter/material.dart';

class PageSecond extends StatefulWidget {
  const PageSecond({super.key});

  @override
  State<PageSecond> createState() => _PageSecondState();
}

class _PageSecondState extends State<PageSecond> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
        'assets/images/splash_screen_third.png',
        height: 910,
        width: 410,
        fit: BoxFit.fill,
      ),
    );
  }
}
