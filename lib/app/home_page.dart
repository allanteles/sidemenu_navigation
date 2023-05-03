import 'package:flutter/material.dart';
import 'package:sidemenu_navigation/app/screens/dashboard_page.dart';
import 'package:sidemenu_navigation/app/screens/messages_page.dart';
import 'package:sidemenu_navigation/app/screens/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final _listPage = const [
    DashboardPage(),
    MessagesPage(),
    ProfilePage(),
  ];

  void selectPage(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(children: [
      SizedBox(
        width: 220,
        child: Center(child: menuNavigation(_currentIndex)),
      ),
      Expanded(child: _listPage[_currentIndex])
    ]));
  }

  Widget menuNavigation(int index) {
    const textStyle = TextStyle(color: Colors.white, fontSize: 16);
    return NavigationRail(
      backgroundColor: Colors.blueGrey,
      destinations: const [
        NavigationRailDestination(
          icon: Icon(
            Icons.dashboard,
            color: Colors.white,
          ),
          label: Text(
            'Dashboard',
            style: textStyle,
          ),
        ),
        NavigationRailDestination(
          icon: Icon(
            Icons.message,
            color: Colors.white,
          ),
          label: Text(
            'Message',
            style: textStyle,
          ),
        ),
        NavigationRailDestination(
          icon: Icon(
            Icons.person,
            color: Colors.white,
          ),
          label: Text(
            'Profile',
            style: textStyle,
          ),
        )
      ],
      selectedIndex: index,
      extended: true,
      onDestinationSelected: (index) {
        selectPage(index);
      },
    );
  }
}
