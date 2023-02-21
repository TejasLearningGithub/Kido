import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:kido_project/screen/Dashboard/enum_screen.dart';

import 'package:kido_project/screen/dash_board.dart';
import 'package:kido_project/screen/enquiries.dart';



class TabNavigatorRoutes {
  // static const String root = '/';
  // static const String detail = '/detail';
  //static const String splash = '/splash';
  static const String dashBoard = '/dashboard';
  static const String lead = '/lead';
  static const String enquiries = '/enquiries';
  static const String followUp = '/followup';
}

class TabNavigator extends StatelessWidget {
  final GlobalKey<NavigatorState>? navigatorKey;
  final BottomNavItem tabItem;

  const TabNavigator({
    super.key,
    required this.navigatorKey,
    required this.tabItem,
  });

  // void _push(BuildContext context) {
  //   var routeBuilders = _routeBuilders(context);

  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //       builder: (context) =>
  //           routeBuilders[TabNavigatorRoutes.dashBoard]!(context),
  //     ),
  //   );
  // }


  @override
  Widget build(BuildContext context) {
    return Navigator(
        key: navigatorKey,
        initialRoute: TabNavigatorRoutes.dashBoard,
        onGenerateRoute: onGenerateRoute
        // onGenerateRoute: (routeSetting) {
        //   return MaterialPageRoute(
        //       builder: (context) => routeBuildrs[routeSetting.name]!(context));
        // },
        );
  }

  static Route onGenerateRoute(RouteSettings settings) {
    //print('Route: ${settings.name}');
    switch (settings.name) {
      // case '/':
      //   return MaterialPageRoute(
      //       settings: const RouteSettings(name: '/'),
      //       builder: (_) => const Scaffold());

      case '/dashboard':
        return CupertinoPageRoute(
            builder: (context) => const DashBoard(),
            settings: RouteSettings(
                name: TabNavigatorRoutes.dashBoard,
                arguments: settings.arguments));

      case '/enquiries':
        return MaterialPageRoute(
            builder: (context) => const Enquiries(),
            settings: RouteSettings(
              name: TabNavigatorRoutes.enquiries,
              arguments: settings.arguments,
            ));

      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('Something went wrong'),
        ),
      ),
    );
  }
}
