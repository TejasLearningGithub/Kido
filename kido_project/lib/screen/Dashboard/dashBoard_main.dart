import 'package:flutter/material.dart';
import 'package:kido_project/screen/dash_board.dart';
import 'package:kido_project/screen/enquiries.dart';
import 'package:kido_project/screen/follow_up_main.dart';
import 'package:kido_project/screen/leads_screen.dart';

class DashBoardMain extends StatefulWidget {
  const DashBoardMain({super.key});

  @override
  State<DashBoardMain> createState() => _DashBoardMainState();
}

class _DashBoardMainState extends State<DashBoardMain> {
  int _selectedIndex = 0;
  static const List<Widget> _dashBoardList = <Widget>[
    DashBoard(),
    LeadsScreen(),
    Enquiries(),
    FollowUpMain()
  ];

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _dashBoardList.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            // backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/leads.png'),
            label: 'Leads',
            // backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/srch.png',
            ),
            label: 'Enquiries',
            //  backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/follow_up.png'),
            label: 'Follow up\'s',
            //  backgroundColor: Colors.blue,
          ),
        ],
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.blue,
        iconSize: 35,
        onTap: onItemTapped,
        elevation: 5,
        currentIndex: _selectedIndex,
      ),
    );
  }
}
