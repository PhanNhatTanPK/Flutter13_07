import 'package:flutter/material.dart';

import '../models/chat_info.dart';

class Chat extends StatelessWidget {
  Chat({super.key});

  List<ChatInfo> _list = [
    ChatInfo(avatar: "images/Ellipse5.png", name: "James", content: "Thank you! That was very helpful!"),
    ChatInfo(avatar: "images/Ellipse6.png", name: "Will Kenny", content: "I know... I’m trying to get the funds."),
    ChatInfo(avatar: "images/Ellipse7.png", name: "Beth Williams", content: "I’m looking for tips around capturing the milky way. I have a 6D with a 24-100mm..."),
    ChatInfo(avatar: "images/Ellipse8.png", name: "Rev Shawn", content: "Wanted to ask if you’re available for a portrait shoot next week."),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 175,
              height: 44,
              padding: const EdgeInsets.symmetric(vertical: 11),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Chats',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'Roobert',
                      fontWeight: FontWeight.w400,
                      height: 22,
                      letterSpacing: -0.41,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Container(
            child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: _list.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(child: Text(_list[index].avatar)),
              title: Text(_list[index].name),
              subtitle: Text(_list[index].content),
            );
          },
        ))
      ],
    ));
  }
}
