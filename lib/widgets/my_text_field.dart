import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  MyTextField(
      {Key? key, required this.fieldName,  this.myController, this.validator})
      : super(key: key);

  final String fieldName;
  TextEditingController? myController;
  String? Function(String?)? validator;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:12, bottom: 12, left: 21,right: 21),
      // decoration: ShapeDecoration(
      //   color: Colors.white,
      //   shape: RoundedRectangleBorder(side: BorderSide(width: 2))
      // ),
      child: TextFormField(
        validator: validator,
        controller: myController,
        decoration: InputDecoration(
          labelText: fieldName,
          border: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
            borderSide:  BorderSide(color: Colors.black,style: BorderStyle.solid, width: 2, ),
            borderRadius: BorderRadius.zero,
          )

        ),
      ),
    );
  }
}
