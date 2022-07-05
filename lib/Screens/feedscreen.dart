// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:twitter/Screens/createtweetscreen.dart';
import 'package:twitter/Screens/homescreen.dart';
import 'package:twitter/Screens/notificationscreen.dart';
import 'package:twitter/Screens/profilescreen.dart';
import 'package:twitter/Screens/searchscreen.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  int _selectedTab = 0;
  List<Widget> _feedScreens = [
    HomeScreen(),
    SearchScreen(),
    NotificationScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        child: Image.asset("assets/images/tweet.png"),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => CreateTweetScreen()));
        },
      ),
      backgroundColor: Colors.blue,
      body: _feedScreens.elementAt(_selectedTab),
      bottomNavigationBar: CupertinoTabBar(
        onTap: (index) {
          setState(
            () {
              _selectedTab = index;
            },
          );
        },
        activeColor: Color(0xff00acee),
        currentIndex: _selectedTab,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home)),
          BottomNavigationBarItem(icon: Icon(Icons.search)),
          BottomNavigationBarItem(icon: Icon(Icons.notifications)),
          BottomNavigationBarItem(icon: Icon(Icons.person))
        ],
      ),
    );
  }
}
