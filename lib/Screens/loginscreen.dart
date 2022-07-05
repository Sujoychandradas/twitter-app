import 'package:flutter/material.dart';
import 'package:twitter/Services/auth_services.dart';
import 'package:twitter/Widgets/roundedbutton.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late String _email;
  late String _password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff00acee),
        elevation: 0,
        title: Text(
          'Log In',
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
                hintText: 'Enter Your email',
              ),
              onChanged: (value) {
                _email = value;
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Enter Your Password',
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
                bool isvalid = await AuthService.login(_email, _password);
                if (isvalid) {
                  Navigator.pop(context);
                } else {
                  print('Login Problem');
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
