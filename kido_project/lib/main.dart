import 'package:flutter/material.dart';
import 'package:kido_project/screen/dash_board.dart';
import 'package:kido_project/screen/enquiry_child_info.dart';
import 'package:kido_project/screen/leads_screen.dart';
import 'package:kido_project/screen/login_screen.dart';
import 'package:kido_project/widget/dashboard_tile.dart';
import 'package:kido_project/widget/leads_items_card.dart';
import 'package:kido_project/widget/radio_gender.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const EnqueryChildInfo());
  }
}
