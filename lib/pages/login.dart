import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter1307/models/user.dart';

import 'package:flutter1307/pages/home_page.dart';

import 'package:flutter1307/widgets/bottom_bar.dart';
import 'package:flutter1307/widgets/my_elevated_button.dart';
import 'package:flutter1307/widgets/my_text_field.dart';
import 'package:flutter1307/widgets/status_bar.dart';
import 'package:provider/provider.dart';

import '../widgets/my_pass_field.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  //Variables
  final _emailController = TextEditingController();
  final _passController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  bool _obscureText = true;

  // Login
  void _loginUser(String email, String pass, BuildContext context) async {
    UserModel provider = Provider.of<UserModel>(context,listen: false);
    if (await provider.login(email, pass)) {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return HomePage();
      }));
    }
  }

  // Use for password field
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {FocusScope.of(context).requestFocus(FocusNode())},
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 16),
                    child: TextButton(
                      onPressed: () {},
                      child: Image.asset("images/Union.png"),
                    ),
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
                key: formKey,
                child: Column(
                  children: [
                    MyTextField(
                      fieldName: "Email",
                      myController: _emailController,
                      validator: (value) {
                        // _validateEmail(value);
                        if (value!.isEmpty) {
                          return "Please enter email";
                        } else if (!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value!)) {
                          return "Enter correct email";
                        } else {
                          return null;
                        }
                      },
                    ),
                    MyPassField(
                      obscureText: _obscureText,
                      onTap: () => _toggle(),
                      fieldName: "Password",
                      myController: _passController,
                      validator: (value) {
                        if(value!.isEmpty) {
                          return "Please enter password";
                        }
                        else if(value.toString().length < 6) {
                          return "Password must least 6 character";
                        }
                        else {
                          return null;
                        }
                      },
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 12),
                      child: MyElevatedButton(
                          nameButton: "LOG IN",
                          heightButton: 60.0,
                          widthButton: 370.0,
                          func: () {
                            if (formKey.currentState!.validate()) {
                              _loginUser(
                                  _emailController.text, _passController.text, context);
                            } else {
                              return null;
                            }
                          }),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
