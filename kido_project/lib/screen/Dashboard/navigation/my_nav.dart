import 'package:flutter/material.dart';
import 'package:kido_project/screen/Dashboard/dash_board_main.dart';
import 'package:kido_project/screen/Dashboard/enum_screen.dart';
import 'package:kido_project/screen/Dashboard/tab_navigator.dart';

class MyNav extends StatefulWidget {
  // String? token;
 MyNav({super.key,});

  @override
  State<MyNav> createState() => _MyNavState();
}

class _MyNavState extends State<MyNav> {
  var _currentTab = BottomNavItem.home;
  final _navigatorKeys = {
    BottomNavItem.home: GlobalKey<NavigatorState>(),
    BottomNavItem.leadsScreen: GlobalKey<NavigatorState>(),
    BottomNavItem.enquiries: GlobalKey<NavigatorState>(),
    BottomNavItem.followupMain: GlobalKey<NavigatorState>(),
  };

  void _selectTab(BottomNavItem tabItem) {
    if (tabItem == _currentTab) {
      _navigatorKeys[tabItem]!.currentState!.popUntil((route) => route.isFirst);
    } else {
      setState(() {
        _currentTab = tabItem;
      });
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final isFirstRouteInCurrentTab =
            !await _navigatorKeys[_currentTab]!.currentState!.maybePop();
        if (isFirstRouteInCurrentTab) {
          // if not on the 'main' tab
          if (_currentTab != BottomNavItem.home) {
            // select 'main' tab
            _selectTab(BottomNavItem.home);
            // back button handled by app
            return false;
          }
        }
        // let system handle back button if we're on the first route
        return isFirstRouteInCurrentTab;
      },
      child: Scaffold(
        body: Stack(children: <Widget>[
          _buildOffStageNavigator(BottomNavItem.home),
          _buildOffStageNavigator(BottomNavItem.leadsScreen),
          _buildOffStageNavigator(BottomNavItem.enquiries),
          _buildOffStageNavigator(BottomNavItem.followupMain),
        ]),
        bottomNavigationBar: DashBoardMain(
          currentTab: _currentTab,
          onSelectTab: _selectTab,
        ),
      ),
    );
  }

  Widget _buildOffStageNavigator(BottomNavItem item) {
    return Offstage(
      offstage: _currentTab != item,
      child: TabNavigator(
        navigatorKey: _navigatorKeys[item],
        tabItem: item,
      ),
    );
  }
}
