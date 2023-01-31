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
        title: Text('Enquiries'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        actions: [
          Row(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.filter_alt)),
              IconButton(onPressed: () {}, icon: Icon(Icons.search))
            ],
          )
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
              height: 450,
              width: double.maxFinite,
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return CommonListCard(
                        leadId: 'LD003171',
                        myLeadStatus: 'Lost',
                        parentName: 'Renu Pathak',
                        childName: 'Rahil',
                        gender: '(M)',
                        iconButton: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.star_outline),
                        ),
                        childAge: '4.4 Years',
                        myColor: myColorFunction(leadScreeStatus.ENROLLED)
                            as MaterialColor,
                        programCategory: 'Preschool',
                        myFontColor: myFontColor,
                        myLeadStatusText:
                            myLeadStatusPrintText(leadScreeStatus.Lost));
                  }),
            )
          ],
        ),
      ),
    );
  }
}
