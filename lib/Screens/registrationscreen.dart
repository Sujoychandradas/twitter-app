import 'package:flutter/material.dart';
import 'package:twitter/Services/auth_services.dart';
import 'package:twitter/Widgets/roundedbutton.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  late String _email;
  late String _password;
  late String _name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff00acee),
        elevation: 0,
        title: Text(
          'Registration',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 30),
            TextField(
              decoration: InputDecoration(
                hintText: 'Name',
              ),
              onChanged: (value) {
                _name = value;
              },
            ),
            SizedBox(height: 30),
            TextField(
              decoration: InputDecoration(
                hintText: 'Email',
              ),
              onChanged: (value) {
                _email = value;
              },
            ),
            SizedBox(height: 30),
            TextField(
              decoration: InputDecoration(
                hintText: 'Password',
              ),
              onChanged: (value) {
                _password = value;
              },
            ),
            SizedBox(
              height: 40,
            ),
            MaterialButton(
              elevation: 5,
              color: Color(0xff00acee),
              child: const Text(
                'Create account',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              onPressed: () async {
                bool isvalid =
                    await AuthService.signup(_name, _email, _password);
                if (isvalid) {
                  Navigator.pop(context);
                } else {
                  print('somthing worng');
                }
              },
              minWidth: 320,
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}
