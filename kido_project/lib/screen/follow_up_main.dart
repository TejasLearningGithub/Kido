import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:kido_project/screen/followupdetail.dart';
import 'package:kido_project/widget/leads_items_card.dart';
import 'dart:math' as math;

class FollowUpMain extends StatefulWidget {
  const FollowUpMain({super.key});

  @override
  State<FollowUpMain> createState() => _FollowUpMainState();
}

class _FollowUpMainState extends State<FollowUpMain> {
  List<bool> isVisible = [];
  var count = 3;

  @override
  void initState() {
    super.initState();
    isVisible = [];
    for (var i = 0; i < 10; i++) {
      isVisible.add(false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FOLLOW UPS'),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.filter_alt)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [MyFirstWidget()],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}

class MyFirstWidget extends StatefulWidget {
  const MyFirstWidget({super.key});

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
  @override
  void initState() {
    super.initState();
    isVisible = [];
    for (var i = 0; i < 10; i++) {
      isVisible.add(false);
    }
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

              //Card(
              //   elevation: 10,
              //   child: Container(
              //     width: double.maxFinite,
              //     height: 50,
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [
              //         Row(
              //           children: const [
              //             SizedBox(
              //               width: 20,
              //             ),
              //             Text(
              //               'Overdue',
              //               style: TextStyle(
              //                 color: Colors.red,
              //                 fontSize: 18,
              //                 fontWeight: FontWeight.bold,
              //               ),
              //             ),
              //           ],
              //         ),
              //         Row(
              //           mainAxisAlignment: MainAxisAlignment.start,
              //           children: [
              //             Text('$count'),
              //             const SizedBox(
              //               width: 8,
              //             ),
              //             const Icon(
              //               Icons.arrow_forward_ios,
              //               size: 21,
              //             ),
              //           ],
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              expanded: Column(
                children: [
                  // Card(
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [
                  //       Row(
                  //         children: const [
                  //           SizedBox(
                  //             width: 20,
                  //           ),
                  //           Text(
                  //             'Overdue',
                  //             style: TextStyle(
                  //               color: Colors.red,
                  //               fontSize: 18,
                  //               fontWeight: FontWeight.bold,
                  //             ),
                  //           ),
                  //         ],
                  //       ),
                  //       Row(
                  //         mainAxisAlignment: MainAxisAlignment.start,
                  //         children: [
                  //           Text('$count'),
                  //           const Icon(
                  //             Icons.keyboard_arrow_down_sharp,
                  //             size: 33,
                  //           )
                  //         ],
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  //for (var i in Iterable.generate(5))
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: GestureDetector(
                      onTap: () {
                        //print('=====Pressed=====');
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Followupdetail(
                              leadNumber: 'LD003171',
                              parentName: 'Renu Pathak',
                              childName: 'Rahil',
                              gender: '(M)',
                              age: '4.4 years',
                              mobParennt: '1234567890',
                              mobParentAlternate: '1234567890',
                              email: 'abc@gmail.com',
                              address: 'Kandavili, Mumbai, Maharastra',
                              ldDate: '05 Mar 2022',
                              program: 'Nursery',
                            ),
                          ),
                        );
                      },
                      child: CommonListCard(
                        leadId: 'LD003171',
                        myLeadStatus:
                            myLeadStatusPrintText(LeadScreeStatus.warm),
                        parentName: 'Renu Pathak',
                        childName: 'Rahil',
                        gender: '(M)',
                        iconButton: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.star_border_rounded)),
                        childAge: '4.9 years',
                        myColor: myColorFunction(LeadScreeStatus.enrolled)
                            as MaterialColor,
                        programCategory: 'Pre School',
                        myFontColor: myFunc(LeadScreeStatus.warm),
                        myLeadStatusText:
                            myLeadStatusPrintText(LeadScreeStatus.enrolled),
                      ),
                    ),
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
                          "Overdue",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(color: Colors.red),
                        ),
                      ),
                      const Text('3'),
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
                            'Yesterday-Overdue',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.start,
                      //   children: [
                      //     Text('${count + 2}'),
                      //     const Icon(
                      //       Icons.keyboard_arrow_down_sharp,
                      //       size: 33,
                      //     )
                      //   ],
                      // ),
                    ],
                  ),
                  //for (var i in Iterable.generate(5))
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: GestureDetector(
                      onTap: () {
                        //print('=====Pressed=====');
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Followupdetail(
                              leadNumber: 'LD003171',
                              parentName: 'Renu Pathak',
                              childName: 'Rahil',
                              gender: '(M)',
                              age: '4.4 years',
                              mobParennt: '1234567890',
                              mobParentAlternate: '1234567890',
                              email: 'abc@gmail.com',
                              address: 'Kandavili, Mumbai, Maharastra',
                              ldDate: '05 Mar 2022',
                              program: 'Nursery',
                            ),
                          ),
                        );
                      },
                      child: CommonListCard(
                          leadId: 'LD003171',
                          myLeadStatus: 'New Lead - ytc / No Response',
                          parentName: 'Renu Pathak',
                          childName: 'Rahil',
                          gender: '(M)',
                          iconButton: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.star_border_rounded)),
                          childAge: '4.9 years',
                          myColor: Colors.blue,
                          programCategory: 'My Cat',
                          myFontColor: Colors.blue,
                          myLeadStatusText: ''),
                    ),
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
            ),
          )
        ],
      ),
    );
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
}

myLeadStatusPrintText(LeadScreeStatus enrolled) {
  if (LeadScreeStatus.enrolled == enrolled) {
    return 'enrolled';
  } else if (LeadScreeStatus.lost == enrolled) {
    return 'lost';
  } else if (LeadScreeStatus.warm == enrolled) {
    return 'w';
  } else if (LeadScreeStatus.ytc == enrolled) {
    return 'ytc';
  }
}

enum LeadScreeStatus { lost, warm, ytc, enrolled }
