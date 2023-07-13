import 'package:flutter/material.dart';
import 'package:flutter1307/page/HomePage.dart';
import 'package:flutter1307/widgets/BottomBar.dart';
import 'package:flutter1307/widgets/MyElevatedButton.dart';
import 'package:flutter1307/widgets/MyTextField.dart';
import 'package:flutter1307/widgets/StatusBar.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  //Variables
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passController = TextEditingController();

  @override
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
                MyTextField(fieldName: "Email", myController: _emailController),
                MyTextField(
                    fieldName: "Password", myController: _passController),
                Container(
                    margin: EdgeInsets.only(top:12),
                    child: MyElevatedButton(
                        nameButton: "LOG IN",
                        heightButton: 60.0,
                        widthButton: 370.0, func: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return HomePage();
                          }),
                        );}), ),
              ],
            )),

          ],
        ));
  }
}
