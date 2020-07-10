import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:event_app/const_values.dart';
import 'package:event_app/screens/home.dart';
import 'package:event_app/screens/search_screen.dart';
import 'package:event_app/screens/star_screen.dart';
import 'package:flutter/material.dart';

class TabScreen extends StatefulWidget {
  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  final List<Map<String, Object>> _pages = [
    {
      'page': HomeScreen(),
    },
    {
      'page': SearchScreen(),
    },
    {
      'page': StarScreen(),
    },
  ];

  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("VEvents"),
        actions: <Widget>[
          Icon(Icons.notifications),
          SizedBox(width: 15.0),
          Icon(Icons.apps),
          SizedBox(width: 15.0),
        ],
      ),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavyBar(
        backgroundColor: mainColor,
        onItemSelected: _selectPage,
        selectedIndex: _selectedPageIndex,
        items: [
          BottomNavyBarItem(
            icon: Icon(Icons.home),
            title: Text(
              'Home',
            ),
            activeColor: subColor,
            inactiveColor: Colors.white,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
              icon: Icon(Icons.search),
              title: Text(
                'Search',
              ),
              activeColor: subColor,
              inactiveColor: Colors.white,
              textAlign: TextAlign.center),
          BottomNavyBarItem(
            icon: Icon(
              Icons.star_border,
            ),
            title: Text(
              'Star',
            ),
            activeColor: subColor,
            inactiveColor: Colors.white,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
