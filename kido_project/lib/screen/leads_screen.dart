import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:kido_project/widget/leads_items_card.dart';

class LeadsScreen extends StatefulWidget {
  const LeadsScreen({super.key});

  @override
  State<LeadsScreen> createState() => _LeadsScreenState();
}

enum LeadScreenStatus { lost, warm, ytc, enrolled }

class _LeadsScreenState extends State<LeadsScreen> {
  DateTime currentTime = DateTime.now();
  var myColor = Colors.yellow;
  var mydate = formatDate(DateTime.now(), [dd, '/', mm, '/', yyyy]);
  var myColorOfContainer = Colors.white;
  var formattedDate =
      DateFormat('dd MMM yyyy').format(DateTime.now()).toString();
  List<bool> isFav = [];
  List<bool> myFav = [];
  LeadScreenStatus? myLeadStatus;
  var myFontColor = Colors.blue;
  @override
  void initState() {
    super.initState();
    myFav = [];
    for (var i = 0; i < 15; i++) {
      myFav.add(false);
    }
  }

  String? mstatus;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromARGB(255, 221, 221, 221),
      //backgroundColor: const Color(0xFF00356A),
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
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
            const Padding(
              padding: EdgeInsets.only(left: 18.0, top: 10.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Today',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 700,
              width: double.maxFinite,
              child: ListView.builder(
                itemCount: 15,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      CommonListCard(
                        leadId: 'LD003171',
                        //LeadScreenStatus.ENROLLED.toString(),
                        myLeadStatus: 'New Lead - YTC / No Response',
                        childAge: '4.9 years',
                        childName: 'Rahil',
                        gender: '(M)',
                        iconButton: IconButton(
                          onPressed: () {
                            setState(() {
                              myFav[index] = !myFav[index];
                            });
                          },
                          icon: Icon(
                            myFav[index] ? Icons.star : Icons.star_border,
                            color: Colors.amber.shade500,
                          ),
                        ),

                        myColor: myColorFunction(LeadScreenStatus.enrolled)
                            as MaterialColor,
                        parentName: 'Renu pathak',
                        programCategory: 'Preschool',
                        myFontColor: myFunc(LeadScreenStatus.enrolled),
                        myLeadStatusText:
                            myLeadStatusPrintText(LeadScreenStatus.ytc),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  );
                },
              ),
            ),
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
