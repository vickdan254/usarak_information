import 'package:flutter/material.dart';
import 'package:usarak_information/travel/travel_home_view.dart';
import 'package:usarak_information/travel/travel_pages.dart';

import 'travel_home_view.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentindex = 0;
  final List<Widget> _children = [
    HomeView(),
    ExplorerPage(),
    PastTripsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Travel Budget App'),
      ),
      body: _children[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: onTabTapped,
          currentIndex: _currentindex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              title: Text('Explore'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              title: Text('Past Trips'),
            ),
          ]),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentindex = index;
    });
  }
}
