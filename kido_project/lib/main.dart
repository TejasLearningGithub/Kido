import 'package:flutter/material.dart';
import 'package:kido_project/screen/Dashboard/dashBoard_main.dart';
import 'package:kido_project/screen/add_lead.dart';
import 'package:kido_project/screen/dash_board.dart';
import 'package:kido_project/screen/enquiries.dart';
import 'package:kido_project/screen/follow_up_main.dart';
import 'package:kido_project/screen/followupdetail.dart';
import 'package:kido_project/screen/lead_form.dart';
import 'package:kido_project/screen/leads_screen.dart';
import 'package:kido_project/screen/login_screen.dart';
import 'package:kido_project/widget/dashboard_tile.dart';
import 'package:kido_project/widget/leads_items_card.dart';
import 'package:kido_project/widget/radio_gender.dart';

import 'screen/Tab/tab_data_screens/add_followup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Followupdetail());
  }
}
