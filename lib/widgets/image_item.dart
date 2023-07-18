import 'package:flutter/material.dart';

import 'package:flutter1307/models/card_item.dart';
import 'package:flutter1307/models/item.dart';

import 'package:flutter1307/widgets/photo_detail.dart';
import 'package:flutter1307/widgets/photo_hero.dart';

class ImageItem extends StatelessWidget {
  const ImageItem({Key? key, required this.item}) : super(key: key);

  final CartItem item;

  @override
  Widget build(BuildContext context) {
    return Container(

        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Center(
          child: PhotoHero(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute<void>(builder: (BuildContext context) {
            return Container(
                child: PhotoDetail(
                    imageUrl: item.image,
                    avatar: item.avatar,
                    name: item.name,
                    nickName: item.link));
          }));
        },
        width: 343,
        imageURL: item.image,
      )),
    ]));
  }
}
