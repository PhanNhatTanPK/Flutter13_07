import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter1307/widgets/my_icon_button.dart';

class MyBottomBar extends StatelessWidget {
  const MyBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.min,
        children: [
          //Home button
          MyIconButton(imageUrl: "images/new.png"),

          //Search button
          MyIconButton(imageUrl: "images/search.png"),

          // Add button in bottom bar
          Padding(
            padding: const EdgeInsets.only(
              left: 11,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 40.0,
                  width: 70.0,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                    begin: Alignment(-0.38, -0.93),
                    end: Alignment(0.38, 0.93),
                    colors: [Color(0xFFFF00D6), Color(0xFFFF4C00)],
                  ),borderRadius: BorderRadius.circular(20)),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    child: Icon(Icons.add),
                  ),
                )
              ],
            ),
          ),

          // Comment button
          MyIconButton(imageUrl: "images/Comment.png"),

          // Account button
          MyIconButton(imageUrl: "images/bell.png")
          
        ]);
  }
}
