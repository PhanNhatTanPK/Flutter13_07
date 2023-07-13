import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField(
      {Key? key, required this.fieldName, required this.myController})
      : super(key: key);

  final String fieldName;
  final TextEditingController myController;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:12, bottom: 12, left: 21,right: 21),
      // decoration: ShapeDecoration(
      //   color: Colors.white,
      //   shape: RoundedRectangleBorder(side: BorderSide(width: 2))
      // ),
      child: TextFormField(
        controller: myController,
        validator: (value){
          if(value == null || value.isEmpty) {
            return "Please enter some text";
          }
          else null;
        },
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
