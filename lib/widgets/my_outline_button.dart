import 'package:flutter/material.dart';

class MyOutlineButton extends StatelessWidget {
  MyOutlineButton(
      {Key? key,
      required this.nameButton,
      required this.heightButton,
      required this.widthButton,
      required this.func})
      : super(key: key);

  final String nameButton;
  final double widthButton, heightButton;

  var func;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      margin: EdgeInsets.only(left: 16, top: 32),
      child: OutlinedButton(
          onPressed: func,
          child: Text(nameButton,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w900,
                  letterSpacing: 0.52)),
          style: OutlinedButton.styleFrom(
            fixedSize: Size(widthButton, heightButton),
            side: BorderSide(color: Colors.black, width: 1),
          )),
    );
  }
}
