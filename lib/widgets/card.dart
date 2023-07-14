import 'package:flutter/material.dart';

import '../model/card_item.dart';

class CardImage extends StatelessWidget {
  CardImage({Key? key, required this.item}) : super(key: key);

  final CartItem item;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343,
      margin: EdgeInsets.only(left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        Image(image: AssetImage(item.image),fit: BoxFit.fitWidth),
          Container(
            margin: EdgeInsets.only(top: 16),
            width: 343,
            child: Stack(
              children: [
                Positioned(
                    child: CircleAvatar(
                        child: Image(image: AssetImage(item.avatar)),
                    )
                ),
                Positioned(
                  left: 50,
                  child: Text(item.name,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                      )),
                ),
                Positioned(
                  left: 50,
                  top:15,
                  child: Text(item.link,
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.800000011920929),
                        fontSize: 11,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                      )),
                )
              ],
            ),
          ),
      ]),
    );
  }
}
