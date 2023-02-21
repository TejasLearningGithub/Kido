import 'package:flutter/material.dart';
import 'package:kido_project/screen/Dashboard/enum_screen.dart';


class DashBoardMain extends StatelessWidget {
  //const DashBoardMain({super.key});
  final BottomNavItem currentTab;
  final ValueChanged<BottomNavItem>? onSelectTab;
  const DashBoardMain({
    super.key,
    required this.currentTab,
    required this.onSelectTab,
  });

  BottomNavigationBarItem _buildItem(
    BottomNavItem item,
    String label,
    String imgpath,
  ) {
    return BottomNavigationBarItem(
      icon: ImageIcon(
        AssetImage(imgpath),
      ),
      label: label,
      activeIcon: ImageIcon(
        AssetImage(imgpath),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.blue,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      items: [
        _buildItem(BottomNavItem.home, 'Home', 'assets/images/enquiry.png'),
        _buildItem(
            BottomNavItem.leadsScreen, 'Leads', 'assets/images/leads.png'),
        _buildItem(
            BottomNavItem.enquiries, 'Enquiries', 'assets/images/enquiry.png'),
        _buildItem(BottomNavItem.followupMain, 'Follow Up',
            'assets/images/follow_up.png'),
      ],
      onTap: (index) {
        onSelectTab!(BottomNavItem.values[index]);
      },
      currentIndex: currentTab.index,
      selectedItemColor: Colors.orange,
      unselectedItemColor: Colors.white,
    );
  }
}
