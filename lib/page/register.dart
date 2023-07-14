import 'package:flutter/material.dart';
import 'package:flutter1307/page/register2.dart';
import 'package:flutter1307/widgets/my_elevated_button.dart';
import 'package:flutter1307/widgets/my_text_field.dart';
import 'package:flutter1307/widgets/status_bar.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}



class _RegisterState extends State<Register> {
  @override

  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passController = TextEditingController();



  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            StatusBar(),
            Row(
              children: [
                TextButton(
                  onPressed: () {},
                  child: Image.asset("images/Union.png"),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 21, bottom: 20),
              child: Row(
                children: [
                  Text(
                    "Register",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 36,
                      fontFamily: 'Comfortaa',
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.54,
                    ),
                  ),
                ],
              ),
            ),
            Form(
                child: Column(
                  key: _formKey,
                  children: [
                    MyTextField(fieldName: "Email", myController: _emailController),
                    MyTextField(
                        fieldName: "Password", myController: _passController),
                    Container(
                      margin: EdgeInsets.only(top:12),
                      child: MyElevatedButton(
                          nameButton: "NEXT",
                          heightButton: 60.0,
                          widthButton: 370.0, func: () {
                            Navigator.push(
                            context, MaterialPageRoute(builder: (context) {
                            return Register2();
                            }),  );}),
                    )],
                )),

          ],
        ));
  }
  }

