import 'package:flutter/material.dart';
import 'package:flutter1307/page/login.dart';
import 'package:flutter1307/page/register.dart';
import 'package:flutter1307/widgets/bottom_bar.dart';
import 'package:flutter1307/widgets/my_elevated_button.dart';

class LoggedOut extends StatelessWidget {
  const LoggedOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Center(
                child: Container(
                  padding: EdgeInsets.all(10),
                  constraints:
                  const BoxConstraints.expand(width: 410, height: 707),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/Untitled.png"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 84.0,
                        top: 312,
                        child: Image.asset("images/img_1.png",
                            height: 38, width: 38),
                      ),
                      Positioned(
                        left: 84.0,
                        top: 312,
                        child: Image.asset(
                          "images/img.png",
                          height: 38,
                          width: 38,
                        ),
                      ),
                      Positioned(
                        left: 142,
                        top: 307,
                        child: Text("photo",
                            style: TextStyle(
                              fontSize: 48,
                              fontFamily: "Comfortaa",
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            )),
                      ),
                      Positioned(
                        bottom: 20,
                        child: CircleAvatar(
                            child: Image.asset("images/img_2.png")),
                      ),
                      Positioned(
                          bottom: 33,
                          left: 52,
                          child: Text("Pawel Czerwinski",
                              style: TextStyle(
                                  fontFamily: "Roboto",
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700))),
                      Positioned(
                          bottom: 20,
                          left: 52,
                          child: Text("@pawel_czerwinski",
                              style: TextStyle(
                                  fontFamily: "Roboto",
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400))),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 32),
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) {
                          return Login();
                        }));
                      },
                      style: OutlinedButton.styleFrom(
                          padding: EdgeInsets.all(2),
                          backgroundColor: Colors.white,
                          fixedSize: Size(167, 52),
                          side: BorderSide(color: Colors.black, width: 2),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(6)))),
                      child: Text("LOG IN",
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontFamily: "Roboto",
                              letterSpacing: 0.52,
                              fontSize: 13,
                              color: Colors.black)),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 20, left: 18),
                      child: MyElevatedButton(
                          nameButton: "Register",
                          heightButton: 52.0,
                          widthButton: 167.0, func: () {
                        Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return Register();
                              }),
                            );
                          })),
                ],
              ),
            ],
          ),
          BottomBar(),
        ],
      ),
    );
  }
}
