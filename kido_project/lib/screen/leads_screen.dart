import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:kido_project/widget/leads_items_card.dart';

class LeadsScreen extends StatelessWidget {
  DateTime currentTime = DateTime.now();
  var mydate = formatDate(DateTime.now(), [dd, '/', mm, '/', yyyy]);
  var formattedDate =
      DateFormat('dd MMM yyyy').format(DateTime.now()).toString();
  LeadsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Leads'),
      ),
      body: ListView.builder(
        itemCount: 9,
        itemBuilder: (context, index) {
          return Column(
            children: [
              CommonListCard(
                leadId: 'LD003171',
                status: 'Lost',
                parentName: 'Renu Pathak',
                childName: 'Rahil',
                gender: 'M',
                age: '4 years, 9 months',
                callStatus: 'To callback/Follow up',
                socialMedicalCampaignInfo: 'Montana Website',
                ldDate: '1 jan 2022',
                lastFollowUpDate: '1 jan 2022',
                nextFollowUpDate: '1 jan 2022',
                isFavourite: false,
              )
            ],
          );
        },
      ),
    );
  }
}
