import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:kido_project/screen/followupdetail.dart';
import 'package:kido_project/widget/common_widget.dart';
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
            icon: Icon(Icons.arrow_back)),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.filter_alt)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [MyFirstWidget()],
        ),
      ),
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
  leadScreeStatus? myLeadStatus;
  var myFontColor = Colors.blue;
  var myColor = Colors.yellow;
  var myColorOfContainer;
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
      child: Column(
        children: [
          ScrollOnExpand(
            child: ExpandablePanel(
              theme: const ExpandableThemeData(
                tapBodyToCollapse: false,
                tapBodyToExpand: false,
              ),
              collapsed: Card(
                elevation: 10,
                child: Container(
                  width: double.maxFinite,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Overdue',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('$count'),
                          const SizedBox(
                            width: 8,
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                            size: 21,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              expanded: Column(
                children: [
                  Card(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Overdue',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('$count'),
                            const Icon(
                              Icons.keyboard_arrow_down_sharp,
                              size: 33,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  for (var i in Iterable.generate(5))
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: GestureDetector(
                        onTap: () {
                          print('=====Pressed=====');
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Followupdetail(
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
                              myLeadStatusPrintText(leadScreeStatus.Warm),
                          parentName: 'Renu Pathak',
                          childName: 'Rahil',
                          gender: '(M)',
                          iconButton: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.star_border_rounded)),
                          childAge: '4.9 years',
                          myColor: myColorFunction(leadScreeStatus.ENROLLED)
                              as MaterialColor,
                          programCategory: 'Pre School',
                          myFontColor: myFunc(leadScreeStatus.Warm),
                          myLeadStatusText:
                              myLeadStatusPrintText(leadScreeStatus.ENROLLED),
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
                color: Colors.indigoAccent,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      ExpandableIcon(
                        theme: const ExpandableThemeData(
                          expandIcon: Icons.arrow_right,
                          collapseIcon: Icons.arrow_drop_down,
                          iconColor: Colors.white,
                          iconSize: 28.0,
                          iconRotationAngle: math.pi / 2,
                          iconPadding: EdgeInsets.only(right: 5),
                          hasIcon: false,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "Items",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(color: Colors.white),
                        ),
                      ),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('${count + 2}'),
                          const Icon(
                            Icons.keyboard_arrow_down_sharp,
                            size: 33,
                          )
                        ],
                      ),
                    ],
                  ),
                  for (var i in Iterable.generate(5))
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: GestureDetector(
                        onTap: () {
                          print('=====Pressed=====');
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Followupdetail(
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
                            myLeadStatus: 'New Lead - YTC / No Response',
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

  Color myColorFunction([leadScreeStatus? enrolled]) {
    switch (enrolled) {
      case leadScreeStatus.ENROLLED:
        myColorOfContainer = Colors.green;
        break;
      case leadScreeStatus.Lost:
        myColorOfContainer = Colors.red;
        break;
      case leadScreeStatus.YTC:
        myColorOfContainer = Colors.blueGrey;
        break;
      case leadScreeStatus.Warm:
        myColorOfContainer = Colors.brown;
        break;
      default:
        myColorOfContainer = Colors.white;
    }
    return myColorOfContainer;
  }

  myFunc([leadScreeStatus? enrolled]) {
    if (leadScreeStatus.ENROLLED == enrolled) {
      return myFontColor = Colors.blue;
    } else if (leadScreeStatus.Lost == enrolled) {
      return myFontColor = Colors.red;
    } else if (leadScreeStatus.Warm == enrolled) {
      return myFontColor = Colors.brown;
    } else if (leadScreeStatus.YTC == enrolled) {
      return myFontColor = Colors.blueGrey;
    }
  }
}

myLeadStatusPrintText(leadScreeStatus enrolled) {
  if (leadScreeStatus.ENROLLED == enrolled) {
    return 'Enrolled';
  } else if (leadScreeStatus.Lost == enrolled) {
    return 'Lost';
  } else if (leadScreeStatus.Warm == enrolled) {
    return 'Warm';
  } else if (leadScreeStatus.YTC == enrolled) {
    return 'YTC';
  }
}

enum leadScreeStatus { Lost, Warm, YTC, ENROLLED }
