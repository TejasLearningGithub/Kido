import 'package:flutter/material.dart';
import 'package:kido_project/widget/leads_items_card.dart';
import 'package:kido_project/widget/widget_lead_screen.dart';

class Enquiries extends StatefulWidget {
  const Enquiries({super.key});

  @override
  State<Enquiries> createState() => _EnquiriesState();
}

class _EnquiriesState extends State<Enquiries> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enquiries'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Row(
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.filter_alt)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.search))
            ],
          )
        ],
      ),
      //backgroundColor: const Color.fromARGB(255, 221, 221, 221),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Text('Today'),
            SizedBox(
              height: 718,
              width: double.maxFinite,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 18.0, top: 7.0),
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
                    height: 685,
                    width: 400,
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return CommonListCard(
                              leadId: 'LD003171',
                              myLeadStatus: 'New Lead - YTC / No Response',
                              parentName: 'Renu Pathak',
                              childName: 'Rahil',
                              gender: '(M)',
                              iconButton: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.star_outline),
                              ),
                              childAge: '4.4 Years',
                              myColor: myColorFunction(LeadScreeStatus.enrolled)
                                  as MaterialColor,
                              programCategory: 'Preschool',
                              myFontColor: myFontColor,
                              myLeadStatusText: myLeadStatusPrintText(
                                  LeadScreeStatus.enrolled));
                        }),
                  ),
                ],
              ),
            ),
            // const Padding(
            //   padding: EdgeInsets.only(left: 18.0, top: 10.0),
            //   child: Align(
            //     alignment: Alignment.topLeft,
            //     child: Text(
            //       'Today',
            //       style: TextStyle(
            //           color: Colors.black,
            //           fontSize: 20,
            //           fontWeight: FontWeight.bold),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
