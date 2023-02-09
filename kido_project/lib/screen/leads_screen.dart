import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:kido_project/widget/leads_items_card.dart';

class LeadsScreen extends StatefulWidget {
  const LeadsScreen({super.key});

  @override
  State<LeadsScreen> createState() => _LeadsScreenState();
}

enum leadScreeStatus { Lost, Warm, YTC, ENROLLED }

class _LeadsScreenState extends State<LeadsScreen> {
  DateTime currentTime = DateTime.now();
  var myColor = Colors.yellow;
  var mydate = formatDate(DateTime.now(), [dd, '/', mm, '/', yyyy]);
  var myColorOfContainer;
  var formattedDate =
      DateFormat('dd MMM yyyy').format(DateTime.now()).toString();
  List<bool> isFav = [];
  List<bool> myFav = [];
  leadScreeStatus? myLeadStatus;
  var myFontColor = Colors.blue;
  @override
  void initState() {
    // TODO: implement initState
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
      backgroundColor: Color.fromARGB(255, 221, 221, 221),
      //backgroundColor: const Color(0xFF00356A),
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
            Container(
              height: 700,
              width: double.maxFinite,
              child: ListView.builder(
                itemCount: 15,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      CommonListCard(
                        leadId: 'LD003171',
                        //leadScreeStatus.ENROLLED.toString(),
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

                        myColor: myColorFunction(leadScreeStatus.ENROLLED)
                            as MaterialColor,
                        parentName: 'Renu pathak',
                        programCategory: 'Preschool',
                        myFontColor: myFunc(leadScreeStatus.ENROLLED),
                        myLeadStatusText:
                            myLeadStatusPrintText(leadScreeStatus.YTC),
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
