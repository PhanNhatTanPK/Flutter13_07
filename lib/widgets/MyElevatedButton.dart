import 'package:flutter/material.dart';

class MyElevatedButton extends StatelessWidget {
  MyElevatedButton({Key? key, required this.nameButton,  required this.heightButton, required this.widthButton, required this.func }): super(key: key);

  final String nameButton;
  final widthButton , heightButton ;
  var func;


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: func,
        style: OutlinedButton.styleFrom(
            padding: EdgeInsets.all(2),
            backgroundColor: Colors.black,
            fixedSize: Size(widthButton, heightButton),
            side: BorderSide(color: Colors.black, width: 2),
            shape: RoundedRectangleBorder(
                borderRadius:
                BorderRadius.all(Radius.circular(6)))),
        child: Text(nameButton,
            style: TextStyle(
                fontWeight: FontWeight.w900,
                fontFamily: "Roboto",
                letterSpacing: 0.52,
                fontSize: 13,
                color: Colors.white)),
      );

  }
}
