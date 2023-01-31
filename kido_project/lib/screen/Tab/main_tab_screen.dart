import 'package:flutter/material.dart';
import 'package:kido_project/screen/Tab/child_info.dart';
import 'package:kido_project/screen/Tab/tab_data_screens/family_info.dart';

class MainTabScreen extends StatefulWidget {
  const MainTabScreen({super.key});

  @override
  State<MainTabScreen> createState() => _MainTabScreenState();
}

class _MainTabScreenState extends State<MainTabScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  TabBar get _tabBar => TabBar(
        controller: _tabController,
        unselectedLabelColor: Colors.white,
        labelColor: Colors.blue,
        tabs: [
          Tab(text: 'Child\nInfo'),
          Tab(text: 'Family\nInfo'),
          Tab(text: 'Location\nInfo'),
          Tab(text: 'Follow\nUp'),
        ],
      );

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enquery Form'),
        bottom: PreferredSize(
            preferredSize: _tabBar.preferredSize,
            child: Material(
              color: Colors.deepOrange.shade900,
              child: _tabBar,
            )),
      ),
      body: TabBarView(
        controller: _tabController,
        physics: NeverScrollableScrollPhysics(),
        children: [
          //ChildInfo(onNext: () => _tabController.index = 1),
          ChildInfo(onNext: () => _tabController.index = 1),
          FamilyInfo(
            onNext: () => _tabController.index = 2,
            onPrevious: () => _tabController.index = 0,
          ),
          Center(child: Text('Location Info')),
          Center(child: const Text('Follow Up')),
        ],
      ),
    );
  }
}

class ReadOnlyTabBar extends StatelessWidget implements PreferredSizeWidget {
  final TabBar child;

  const ReadOnlyTabBar({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(child: child);
  }

  @override
  Size get preferredSize => child.preferredSize;
}
