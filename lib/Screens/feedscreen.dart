// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:twitter/Screens/homescreen.dart';
import 'package:twitter/Screens/notificationscreen.dart';
import 'package:twitter/Screens/searchscreen.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  int slectedTab = 0;
  List<Widget> _feedScreens = [HomeScreen(), SearchScreen(), NotificationScreen(),
  profileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Text(
          "Feed Screen",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
