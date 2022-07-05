import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String btnText;
  final Function onBtnPressed;
  const RoundedButton(
      {Key? key, required this.btnText, required this.onBtnPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      color: Color(0xff00acee),
      borderRadius: BorderRadius.circular(30),
      child: MaterialButton(
        onPressed: onBtnPressed(),
        minWidth: 320,
        height: 60,
        child:
            Text(btnText, style: TextStyle(fontSize: 20, color: Colors.white)),
      ),
    );
  }
}
