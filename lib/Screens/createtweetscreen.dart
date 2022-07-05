

import 'package:flutter/material.dart';

class CreateTweetScreen extends StatefulWidget {
  const CreateTweetScreen({Key? key}) : super(key: key);

  @override
  State<CreateTweetScreen> createState() => _CreateTweetScreenState();
}

class _CreateTweetScreenState extends State<CreateTweetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('CreateTweet'),
      ),
    );
  }
}