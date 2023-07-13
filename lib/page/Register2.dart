import 'package:flutter/material.dart';
import 'package:flutter1307/page/Login.dart';
import 'package:flutter1307/widgets/MyElevatedButton.dart';
import 'package:flutter1307/widgets/MyTextField.dart';
import 'package:flutter1307/widgets/StatusBar.dart';

class Register2 extends StatefulWidget {
  const Register2({super.key});

  @override
  State<Register2> createState() => _Register2State();
}

class _Register2State extends State<Register2> {
  //Variables
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(children: [
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
                  "Log in",
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
              MyTextField(fieldName: "Name", myController: _nameController),
              Container(
                margin: EdgeInsets.only(top: 12, bottom: 32),
                child: MyElevatedButton(
                    nameButton: "SIGN UP",
                    heightButton: 60.0,
                    widthButton: 370.0,
                    func: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return Login();
                        }),
                      );
                    }),
              ),
            ],
          )),
          Center(
            child: SizedBox(
                width: 370,
                child: Text.rich(TextSpan(
                  children: [
                    TextSpan(
                      text: 'By signing up, you agree to Photo’s ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: 'Terms of Service',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(
                      text: ' and \n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: 'Privacy Policy',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(
                      text: '.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ))),
          )
        ]));
  }
}
