import 'package:flutter/material.dart';


class PageFirst extends StatelessWidget {
  const PageFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
        'assets/images/splash_screen_second.png',
        height: 910,
        width: 410,
        fit: BoxFit.fill,
      ),
    );
  }
}
