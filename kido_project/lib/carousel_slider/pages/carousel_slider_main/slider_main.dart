import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kido_project/carousel_slider/pages/page_first.dart';
import 'package:kido_project/carousel_slider/pages/page_fourth.dart';
import 'package:kido_project/carousel_slider/pages/page_second.dart';
import 'package:kido_project/carousel_slider/pages/page_third.dart';
import 'package:kido_project/screen/login_screen.dart';
//import 'package:kido_project/utils/my_shareprefrence.dart';
import 'package:shared_preferences/shared_preferences.dart';

final List<Widget> imgList = [
  const PageFirst(),
  const PageSecond(),
  const PageThird(),
  const PageFourth(),
  const LoginScreen()
];

class SliderMain extends StatefulWidget {
  const SliderMain({super.key});

  @override
  State<SliderMain> createState() => _SliderMainState();
}

class _SliderMainState extends State<SliderMain> {
  var boolValue = true;

  String? isLogin;
  // SharedPreferences? myPrefs;
  // @override
  // void initState() {
  //   // TODO: implement initState
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarouselSlider(
        options: CarouselOptions(
          height: 900,
          reverse: false,
          autoPlay: boolValue,
          enableInfiniteScroll: false,
          viewportFraction: 1,
          onPageChanged: (index, reason) {
            if (index == imgList.length - 1) {
              setState(() {
                boolValue = false;
              });
            }
          },
        ),
        items: imgList.toList(),
      ),
    );
  }
}
