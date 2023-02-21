import 'package:flutter/material.dart';

class PageThird extends StatefulWidget {

  const PageThird({ super.key });

  @override
  State<PageThird> createState() => _PageThirdState();
}

class _PageThirdState extends State<PageThird> {

   @override
   Widget build(BuildContext context) {
       return Scaffold(
      body: Image.asset(
        'assets/images/splash_screen_fourth.png',
        height: 910,
        width: 410,
        fit: BoxFit.fill,
      ),
    );
  }
}