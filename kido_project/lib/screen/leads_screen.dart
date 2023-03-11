import 'dart:developer';
import 'dart:math' as math;
import 'package:date_format/date_format.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:kido_project/MyScreens/shared_pref.dart';
import 'package:kido_project/leads/provider/leads_provider.dart';
import 'package:kido_project/login/provider/login_provider.dart';
//import 'package:kido_project/utils/my_shareprefrence.dart';
import 'package:kido_project/widget/leads_items_card.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utils/constants.dart';

class LeadsScreen extends StatefulWidget {
  String? token;
  LeadsScreen({super.key, this.token});

  @override
  State<LeadsScreen> createState() => _LeadsScreenState();
}

enum LeadScreenStatus { lost, warm, ytc, enrolled }

class _LeadsScreenState extends State<LeadsScreen> {
  // List<bool> isFav = [];
  // List<bool> myFav = [];
  LeadScreenStatus? myLeadStatus;
  var myFontColor = Colors.blue;
  var myColorOfContainer = Colors.white;
  var myPref = SharedPrefs();

  var myToken;
  var myTokenM;
  var presentToken = '';
  var spToken;
  var yesterdayLeadsProvider;
  var yesterday;
  var kidoLoginToken;
  @override
  void initState() {
    super.initState();
    // myFav = [];
    // for (var i = 0; i < 15; i++) {
    //   myFav.add(false);
    // }
    getTokenFromSF();
    print('Token With =  $presentToken');

    //printToken();
    //myTokenM = printToken();

    var getToken = myPref.getToken();
    print(getToken);
    // var myKidoLoginProvider =
    //     Provider.of<KidoLoginProvider>(context, listen: false);

    //kidoLoginToken = myKidoLoginProvider.myPersonCreateGetter?.data?.token;
    print('Token From Method = ${myPref.getToken()}');
    // WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
    //   Provider.of<LeadsProvider>(context, listen: false)
    //       .getYesterdaysData(spToken);
    // });
    print('Token named spToken = $spToken');
    print('widget binding called');
    //getTokenFromSF();
  }

  // printToken() async {
  //   myToken = await myPref.getToken();

  //   print('printed token = $myToken');
  // }

  getTokenFromSF() async {
    spToken = await myPref.getToken();
    print('Available Token Present = $spToken');
    return spToken;
  }

  @override
  Widget build(BuildContext context) {
    yesterdayLeadsProvider = Provider.of<LeadsProvider>(context, listen: false);

    //yesterday = Provider.of<LeadsProvider>(context, listen: false);
    return Scaffold(
      //backgroundColor: Color.fromARGB(255, 221, 221, 221),
      //backgroundColor: const Color(0xFF00356A),
      backgroundColor: Colors.white,
      appBar: AppBar(
        //leading: const Icon(Icons.arrow_back),
        title: const Text('LEADS'),
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.filter_alt_outlined,
                  size: 27,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  size: 27,
                ),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyFirstWidget(
              token: widget.token,
            )
          ],
        ),
      ),
    );
  }

  Color myColorFunction([LeadScreenStatus? enrolled]) {
    switch (enrolled) {
      case LeadScreenStatus.enrolled:
        myColorOfContainer = Colors.green;
        break;
      case LeadScreenStatus.lost:
        myColorOfContainer = Colors.red;
        break;
      case LeadScreenStatus.ytc:
        myColorOfContainer = Colors.blueGrey;
        break;
      case LeadScreenStatus.warm:
        myColorOfContainer = Colors.brown;
        break;
      default:
        myColorOfContainer = Colors.white;
    }
    return myColorOfContainer;
  }

  myFunc([LeadScreenStatus? enrolled]) {
    if (LeadScreenStatus.enrolled == enrolled) {
      return myFontColor = Colors.blue;
    } else if (LeadScreenStatus.lost == enrolled) {
      return myFontColor = Colors.red;
    } else if (LeadScreenStatus.warm == enrolled) {
      return myFontColor = Colors.brown;
    } else if (LeadScreenStatus.ytc == enrolled) {
      return myFontColor = Colors.blueGrey;
    }
  }
}

myLeadStatusPrintText(LeadScreenStatus enrolled) {
  if (LeadScreenStatus.enrolled == enrolled) {
    return 'Enrolled';
  } else if (LeadScreenStatus.lost == enrolled) {
    return 'Lost';
  } else if (LeadScreenStatus.warm == enrolled) {
    return 'Warm';
  } else if (LeadScreenStatus.ytc == enrolled) {
    return 'YTC';
  }
}

class MyFirstWidget extends StatefulWidget {
  String? token;

  MyFirstWidget({super.key, this.token});

  @override
  State<MyFirstWidget> createState() => _MyFirstWidgetState();
}

class _MyFirstWidgetState extends State<MyFirstWidget> {
  List<bool> isVisible = [];
  var count = 3;
  LeadScreeStatus? myLeadStatus;
  var myFontColor = Colors.blue;
  var myColor = Colors.yellow;
  var myColorOfContainer = Colors.white;
  var myPref = SharedPrefs();

  var myToken;
  var myTokenM;
  var presentToken = '';
  var spToken;
  var yesterdayLeadsProvider;
  var yesterday;
  var kidoLoginToken;
  // @override
  void initState() {
    super.initState();
    // myFav = [];
    // for (var i = 0; i < 15; i++) {
    //   myFav.add(false);
    // }
    //getTokenFromSF();
    print('Token With =  $presentToken');

    //printToken();
    //myTokenM = printToken();

    //var getToken = myPref.getToken();
    //print(getToken);
    // var myKidoLoginProvider =
    //     Provider.of<KidoLoginProvider>(context, listen: false);

    //kidoLoginToken = myKidoLoginProvider.myPersonCreateGetter?.data?.token;
    // print('Token From Method = ${myPref.getToken()}');
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<LeadsProvider>(context, listen: false)
          .getYesterdaysData(spToken ?? widget.token);
    });
    print('==================================');
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<LeadsProvider>(context, listen: false)
          .getTodaysData(spToken ?? widget.token);
    });
    print('==================================');
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<LeadsProvider>(context, listen: false)
          .getWeeksData(spToken ?? widget.token);
    });
    print('Token named spToken = $spToken');
    print('widget binding called');
    getTokenFromSF();
  }

  // printToken() async {
  //   myToken = await myPref.getToken();

  //   print('printed token = $myToken');
  // }

  getTokenFromSF() async {
    spToken = await myPref.getToken();
    print('Available Token Present = $spToken');
    return spToken;
  }

  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
      initialExpanded: true,
      child: Column(
        children: [
          ScrollOnExpand(
            child: ExpandablePanel(
              theme: const ExpandableThemeData(
                tapBodyToCollapse: false,
                tapBodyToExpand: false,
              ),
              collapsed: Container(),
              expanded: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Consumer<LeadsProvider>(
                        builder: (context, value, child) {
                      return SizedBox(
                        height: 200,
                        width: double.maxFinite,
                        child: ListView.builder(
                            itemCount: value.myTodaysLeads?.data?.length ?? 0,
                            itemBuilder: (context, index) {
                              return CommonListCard(
                                leadId:
                                    value.myTodaysLeads?.data?[index].leadNo ??
                                        'Abc',
                                myLeadStatus: myLeadStatusPrintText(
                                    LeadScreenStatus.warm),
                                parentName: value.myTodaysLeads?.data?[index]
                                        .parentName ??
                                    'no load',
                                childName: value.myTodaysLeads?.data?[index]
                                        .childFirstName ??
                                    'no load',
                                gender: '(M)',
                                iconButton: IconButton(
                                    onPressed: () {},
                                    icon:
                                        const Icon(Icons.star_border_rounded)),
                                childAge: '4.9 years',
                                myColor:
                                    myColorFunction(LeadScreeStatus.enrolled)
                                        as MaterialColor,
                                programCategory: value.myTodaysLeads
                                        ?.data?[index].statusId.name ??
                                    'no load',
                                myFontColor: myFunc(LeadScreeStatus.warm),
                                myLeadStatusText: myLeadStatusPrintText(
                                    LeadScreenStatus.enrolled),
                              );
                            }),
                      );
                    }),
                  ),
                ],
              ),
              builder: (_, collapsed, expanded) {
                return Expandable(
                  collapsed: collapsed,
                  expanded: expanded,
                  theme: const ExpandableThemeData(
                    crossFadePoint: 0,
                  ),
                );
              },
              header: Container(
                //color: Colors.indigoAccent,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      ExpandableIcon(
                        theme: const ExpandableThemeData(
                          //expandIcon: Icons.arrow_drop_down,
                          //collapseIcon: Icons.arrow_back,
                          iconColor: Colors.white,
                          iconSize: 28.0,
                          iconRotationAngle: math.pi / 2,
                          iconPadding: EdgeInsets.only(right: 5),
                          hasIcon: false,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "Today",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(color: Colors.red),
                        ),
                      ),
                      //const Text('3'),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 28,
          ),
          ScrollOnExpand(
            child: ExpandablePanel(
              theme: const ExpandableThemeData(
                tapBodyToCollapse: false,
                tapBodyToExpand: false,
              ),
              collapsed: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [],
                ),
              ),
              expanded: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Yesterday',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child:
                        //ListView.builder(
                        //    itemCount: 2,
                        //    itemBuilder: (context, index) {
                        // Consumer<LeadsProvider>(

                        // builder: (context, value, child) {

                        Consumer<LeadsProvider>(
                      builder: (context, value, child) {
                        //value.myLeads?.data?.length != 0 ?
                        return SizedBox(
                          height: 200,
                          width: double.maxFinite,
                          child: ListView.builder(
                            itemCount: value.myLeads?.data?.length ?? 0,
                            itemBuilder: (context, index) {
                              return CommonListCard(
                                  leadId: value.myLeads?.data?[index].leadNo ??
                                      'not available',
                                  myLeadStatus: value.myLeads?.data?[index]
                                          .statusId.name ??
                                      'not available',
                                  parentName:
                                      value.myLeads?.data?[index].parentName ??
                                          'not',
                                  childName: value.myLeads?.data?[index]
                                          .childFirstName ??
                                      'not',
                                  gender: '(M)',
                                  iconButton: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                          Icons.star_border_rounded)),
                                  childAge: '4.9 years',
                                  myColor: Colors.blue,
                                  programCategory: value.myLeads?.data?[index]
                                          .substatusId.name ??
                                      'not',
                                  myFontColor: Colors.blue,
                                  myLeadStatusText: value.myLeads?.data?[index]
                                          .schoolId.schoolName ??
                                      'not');
                            },
                          ),
                        );
                        // :  Center(child: Text('No Data Available'));
                      },
                    ),
                  )
                ],
              ),
              builder: (_, collapsed, expanded) {
                return Expandable(
                  collapsed: collapsed,
                  expanded: expanded,
                  theme: const ExpandableThemeData(
                    crossFadePoint: 0,
                  ),
                );
              },
            ),
          ),
          ScrollOnExpand(
            child: ExpandablePanel(
              theme: const ExpandableThemeData(
                tapBodyToCollapse: false,
                tapBodyToExpand: false,
              ),
              collapsed: Container(),
              expanded: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child:
                        //ListView.builder(
                        //    itemCount: 2,
                        //    itemBuilder: (context, index) {
                        // Consumer<LeadsProvider>(

                        // builder: (context, value, child) {

                        Consumer<LeadsProvider>(
                      builder: (context, value, child) {
                        //value.myLeads?.data?.length != 0 ?
                        return SizedBox(
                          height: 200,
                          width: double.maxFinite,
                          child: ListView.builder(
                            itemCount: value.myWeekLeads?.data?.length ?? 0,
                            itemBuilder: (context, index) {
                              return CommonListCard(
                                  leadId:
                                      value.myWeekLeads?.data?[index].leadNo ??
                                          'not available',
                                  myLeadStatus: 'New Lead - ytc / No Response',
                                  parentName: value.myWeekLeads?.data?[index]
                                          .parentName ??
                                      'no load',
                                  childName: value.myWeekLeads?.data?[index]
                                          .childFirstName ??
                                      'no load',
                                  gender: '(M)',
                                  iconButton: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                          Icons.star_border_rounded)),
                                  childAge: '4.9 years',
                                  myColor: Colors.blue,
                                  programCategory: 'My Cat',
                                  myFontColor: Colors.blue,
                                  myLeadStatusText: '');
                            },
                          ),
                        );
                        // :  Center(child: Text('No Data Available'));
                      },
                    ),
                  )
                ],
              ),
              builder: (_, collapsed, expanded) {
                return Expandable(
                  collapsed: collapsed,
                  expanded: expanded,
                  theme: const ExpandableThemeData(
                    crossFadePoint: 0,
                  ),
                );
              },
              header: Container(
                //color: Colors.indigoAccent,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      ExpandableIcon(
                        theme: const ExpandableThemeData(
                          //expandIcon: Icons.arrow_drop_down,
                          //collapseIcon: Icons.arrow_back,
                          iconColor: Colors.white,
                          iconSize: 28.0,
                          iconRotationAngle: math.pi / 2,
                          iconPadding: EdgeInsets.only(right: 5),
                          hasIcon: false,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "Week",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(color: Colors.red),
                        ),
                      ),
                      //const Text('3'),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  myFunc([LeadScreeStatus? enrolled]) {
    if (LeadScreeStatus.enrolled == enrolled) {
      return myFontColor = Colors.blue;
    } else if (LeadScreeStatus.lost == enrolled) {
      return myFontColor = Colors.red;
    } else if (LeadScreeStatus.warm == enrolled) {
      return myFontColor = Colors.brown;
    } else if (LeadScreeStatus.ytc == enrolled) {
      return myFontColor = Colors.blueGrey;
    }
  }

  Color myColorFunction([LeadScreeStatus? enrolled]) {
    switch (enrolled) {
      case LeadScreeStatus.enrolled:
        myColorOfContainer = Colors.green;
        break;
      case LeadScreeStatus.lost:
        myColorOfContainer = Colors.red;
        break;
      case LeadScreeStatus.ytc:
        myColorOfContainer = Colors.blueGrey;
        break;
      case LeadScreeStatus.warm:
        myColorOfContainer = Colors.brown;
        break;
      default:
        myColorOfContainer = Colors.white;
    }
    return myColorOfContainer;
  }
}
