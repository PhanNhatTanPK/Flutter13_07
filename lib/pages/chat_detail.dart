import 'package:flutter/material.dart';

import 'package:flutter1307/widgets/my_icon_button.dart';

import '../widgets/massage.dart';

class ChatDetail extends StatefulWidget {
  const ChatDetail({super.key});

  @override
  State<ChatDetail> createState() => _ChatDetailState();
}

class _ChatDetailState extends State<ChatDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: MyIconButton(imageUrl: "images/Chevron.png"),
          title: Text(
            "James",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 17,
              fontStyle: FontStyle.italic,
              fontFamily: 'Roobert',
              fontWeight: FontWeight.w400,
              letterSpacing: -0.41,
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 32),
              child: Massage(
                  image: "images/Ellipse5.png",
                  massage:
                      "Really love your most recent photo. I’ve been trying to capture the same thing for a few months and would love some tips!"),
            ),
          ],
        ));
  }
}
