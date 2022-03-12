// ignore_for_file: prefer_const_constructors

import 'package:controllers/view/homepage.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_assignment/home/two.dart';
import 'homepage.dart';
import 'welcome.dart';

class BottomNav extends StatefulWidget {
  String userID;
  BottomNav({Key? key, required this.userID}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentindex = 0;

   late List<Widget> pages;
  @override
  void initState() {
    pages = [
    // Your screens must be listed here according to how you want them to display
    // New(),
    // New(),
    // New(),
    // New()
    HomePage(userID: widget.userID,),

    Text('Hi'),
  ];
    super.initState();
  }
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
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.black,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.chat),
                label: "Second",
              ),
              // BottomNavigationBarItem(
              //   icon: Icon(Icons.group),
              //   label: "Groups",
              // ),
              // BottomNavigationBarItem(
              //   icon: Icon(Icons.view_agenda),
              //   label: "Status",
              // ),
              // BottomNavigationBarItem(
              //   icon: Icon(Icons.call),
              //   label: "Calls",
              // ),
            ],
          ),
        ));
  }
}

 
