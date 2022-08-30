import 'package:flutter/material.dart';
import 'package:nav_app/screens/batch/batches.dart';
import 'package:nav_app/screens/settings/settings.dart';
import 'package:nav_app/screens/user/user.dart';

class DashboardNavigation extends StatefulWidget {
  const DashboardNavigation({Key? key}) : super(key: key);

  @override
  State<DashboardNavigation> createState() => _DashboardNavigationState();
}

class _DashboardNavigationState extends State<DashboardNavigation> {
  int _page = 1;
  PageController pageController = PageController(initialPage: 1);
  void navigationTapped(int page) => pageController.jumpToPage(page);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        
        physics: const AlwaysScrollableScrollPhysics(),
        controller: pageController,
        onPageChanged: (int page) {
          setState(() {
            _page = page;
          });
        },
        children: const [
          User(),
          Batches(),
          Settings(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'User',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: 'Batches',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        elevation: 0,
        backgroundColor: const Color(0xff16213E),
        selectedItemColor: const Color(0xffFF4A4A),
        unselectedItemColor: const Color(0xff8e929b),
        iconSize: 24,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _page,
        onTap: navigationTapped,
      ),
    );
  }
}
