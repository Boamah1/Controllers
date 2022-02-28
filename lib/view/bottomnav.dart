// ignore_for_file: prefer_const_constructors

import 'package:controllers/view/homepage.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_assignment/home/two.dart';
import 'homepage.dart';
import 'welcome.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentindex = 0;
  List pages = [
    // Your screens must be listed here according to how you want them to display
    // New(),
    // New(),
    // New(),
    // New()
    HomePage(),

    Text('Hi'),
  ];
  void _onItemTap(int selecteditems) {
    setState(
      () {
        currentindex = selecteditems;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: pages.length,
        child: Scaffold(
          body: pages[currentindex],
          bottomNavigationBar: BottomNavigationBar(
            onTap: _onItemTap,
            currentIndex: currentindex,
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.black,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.chat),
                label: "Second",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.group),
                label: "Groups",
              ),
              // BottomNavigationBarItem(
              //   icon: Icon(Icons.view_agenda),
              //   label: "Status",
              // ),
              BottomNavigationBarItem(
                icon: Icon(Icons.call),
                label: "Calls",
              ),
            ],
          ),
        ));
  }
}

 
