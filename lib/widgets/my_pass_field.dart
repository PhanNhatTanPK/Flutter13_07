import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyPassField extends StatelessWidget {
  MyPassField(
      {Key? key,
      required this.fieldName,
      this.myController,
      this.validator,
      required this.obscureText,
      this.onTap})
      : super(key: key);

  final String fieldName;
  TextEditingController? myController;
  bool obscureText;
  String? Function(String?)? validator;
  dynamic? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 12, bottom: 12, left: 21, right: 21),
      child: TextFormField(
        validator: validator,
        obscureText: obscureText,
        controller: myController,
        decoration: InputDecoration(
            suffixIcon: InkWell(
              onTap: onTap,
              child: Icon(
                obscureText ? FontAwesomeIcons.eye : FontAwesomeIcons.eyeSlash,
                size: 15.0,
                color: Colors.black,
              ),
            ),
            labelText: fieldName,
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
                style: BorderStyle.solid,
                width: 2,
              ),
              borderRadius: BorderRadius.zero,
            )),
      ),
    );
  }
}
