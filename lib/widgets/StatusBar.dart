import 'package:flutter/material.dart';

class StatusBar extends StatelessWidget {
  const StatusBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Center(
          child: Container(
            margin: EdgeInsets.only(top: 20),
            width: 410,
            height: 44,
            padding: EdgeInsets.only(left: 21, top: 8, bottom: 13, right: 14),
            decoration: BoxDecoration(),
            child: Stack(
              children: [
                Positioned(
                  child: Text(
                    "9:27",
                    style: TextStyle(
                        fontFamily: "Roobert",
                        fontStyle: FontStyle.italic,
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                  ),
                ),

                Positioned(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    textDirection: TextDirection.rtl,

                    children: [
                      Image.asset("images/Battery.png", width: 38,),
                      Image.asset("images/CellularConnection.png"),
                      Image.asset("images/Wifi.png"),
                    ],
                  ),
                ),
              ],
            ),
        ),
        ),
      ],
    );
  }
}
