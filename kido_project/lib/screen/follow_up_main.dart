import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:kido_project/widget/leads_items_card.dart';

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
    // TODO: implement initState
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
        leading: Icon(Icons.arrow_back),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.filter_alt)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [MyFirstWidget()],
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
    // TODO: implement initState
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
          // CommonListCard(
          //     '1',
          //     'myLeadStatus',
          //     'parentName',
          //     'childName',
          //     'gender',
          //     IconButton(onPressed: () {}, icon: Icon(Icons.person)),
          //     '1',
          //     Colors.blue),
          ScrollOnExpand(
            child: ExpandablePanel(
              theme: const ExpandableThemeData(
                //expandIcon: Icons.arrow_downward,
                //collapseIcon: Icons.arrow_forward_ios,
                //hasIcon: false,
                tapBodyToCollapse: true,
                tapBodyToExpand: true,
              ),

              // header: Card(
              //   child: Row(
              //     children: const [
              //       Text('see data'),
              //       //Icon(Icons.arrow_downward)
              //     ],
              //   ),
              // ),
              collapsed: Card(
                elevation: 10,
                child: Container(
                  width: double.maxFinite,
                  height: 50,
                  // decoration: BoxDecoration(color: Colors.blue),
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
              // expanded: Container(
              //     width: double.maxFinite,
              //     height: double.maxFinite,
              //     child: MyTextListWidget()),
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
                    CommonListCard(
                      leadId: 'LD003171',
                      myLeadStatus: myLeadStatusPrintText(leadScreeStatus.Warm),
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
          const SizedBox(
            height: 28,
          ),
          const Text(
            'Second Overdue',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 25,
            ),
          ),
          ScrollOnExpand(
            child: ExpandablePanel(
              theme: const ExpandableThemeData(
                //expandIcon: Icons.arrow_downward,
                //collapseIcon: Icons.arrow_forward_ios,
                //hasIcon: false,
                tapBodyToCollapse: false,
                tapBodyToExpand: false,
              ),

              // header: Card(
              //   child: Row(
              //     children: const [
              //       Text('see data'),
              //       //Icon(Icons.arrow_downward)
              //     ],
              //   ),
              // ),
              collapsed: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Row(
                    //   children: const [
                    //     SizedBox(
                    //       width: 20,
                    //     ),
                    //     Text(
                    //       'Overdue',
                    //       style: TextStyle(
                    //         color: Colors.red,
                    //         fontSize: 18,
                    //         fontWeight: FontWeight.bold,
                    //       ),
                    //     ),
                    //   ],
                    // ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.start,
                    //   children: [
                    //     Text('$count'),
                    //     const SizedBox(
                    //       width: 8,
                    //     ),
                    //     const Icon(
                    //       Icons.arrow_forward_ios,
                    //       size: 21,
                    //     ),
                    //   ],
                    // ),
                  ],
                ),
              ),
              // expanded: Container(
              //     width: double.maxFinite,
              //     height: double.maxFinite,
              //     child: MyTextListWidget()),
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
                        child: CommonListCard(
                            leadId: 'LD003171',
                            myLeadStatus: 'Lost',
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
                            myLeadStatusText: '')),
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

  // Widget MyTextListWidget() {
  //   return ListView.builder(
  //     shrinkWrap: true,
  //     itemCount: 15,
  //     itemBuilder: (context, index) {
  //       return CommonListCard(
  //         '${index + 1}',
  //         'Warm',
  //         'Abc',
  //         'Child Name',
  //         'Male',
  //         IconButton(onPressed: () {}, icon: Icon(Icons.star)),
  //         '15',
  //         Colors.blue,
  //       );
  //     },
  //   );
  // }

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
      // setState(() {
      return myFontColor = Colors.blue;
      // });

      //return 'Enrolled' ;
    } else if (leadScreeStatus.Lost == enrolled) {
      // setState(() {
      return myFontColor = Colors.red;
      // });
      // return 'Lost';
    } else if (leadScreeStatus.Warm == enrolled) {
      // setState(() {
      return myFontColor = Colors.brown;
      // });
      // return 'Warm';
    } else if (leadScreeStatus.YTC == enrolled) {
      // setState(() {
      return myFontColor = Colors.blueGrey;
      // });
      // return 'YTC';
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
