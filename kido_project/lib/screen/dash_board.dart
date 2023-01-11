import 'package:flutter/material.dart';
import 'package:kido_project/widget/common_widget.dart';
import 'package:kido_project/widget/dashboard_tile.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Dashboard'),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
              ),
            ),
          ],
        ),
        backgroundColor: const Color(0xFF00356A),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const DashboardTile(
              imgUrl: 'assets/images/recrument.png',
              textString: 'LEADS',
            ),
            const DashboardTile(
              imgUrl: 'assets/images/enquiry.png',
              textString: 'ENQUERY',
            ),
            const DashboardTile(
              imgUrl: 'assets/images/followup.png',
              textString: 'FOLLOW UPS',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Text(
                    'Notifications',
                    style: commonMediumFonts.copyWith(
                      color: Color(0xFF00356A),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'See All',
                      style: commonMediumFonts.copyWith(
                        color: const Color.fromARGB(100, 189, 83, 25),
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        size: 30,
                        color: Color.fromARGB(100, 189, 83, 25),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            dashBoardNotificationList(context),
          ],
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
