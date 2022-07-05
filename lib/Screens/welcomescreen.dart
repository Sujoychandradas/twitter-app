import 'package:flutter/material.dart';
import 'package:twitter/Screens/loginscreen.dart';
import 'package:twitter/Screens/registrationscreen.dart';
import 'package:twitter/Widgets/roundedbutton.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width),
                  Image.asset(
                    'assets/images/twitter.png',
                    height: 200,
                    width: 200,
                  ),
                  Text(
                    "See What's happening in the world right now.",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Column(
                children: [
                  MaterialButton(
                    elevation: 5,
                    color: Color(0xff00acee),
                    child: const Text(
                      'LOG IN',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    minWidth: 320,
                    height: 60,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  MaterialButton(
                    elevation: 5,
                    color: Color(0xff00acee),
                    child: const Text(
                      'Create Account',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegistrationScreen()),
                      );
                    },
                    minWidth: 320,
                    height: 60,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
