import 'package:flutter/material.dart';
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
              icon: Icon(
                Icons.notifications,
              ),
            ),
          ],
        ),
        backgroundColor: Color(0xFF00356A),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            DashboardTile(
              imgUrl: 'assets/images/recrument.png',
              textString: 'LEADS',
            ),
            DashboardTile(
              imgUrl: 'assets/images/enquiry.png',
              textString: 'ENQUERY',
            ),
            DashboardTile(
              imgUrl: 'assets/images/followup.png',
              textString: 'FOLLOW UPS',
            ),
          ],
        ),
      ),
      drawer: Drawer(),
    );
  }
}
