import 'package:flutter/material.dart';

import 'package:flutter1307/widgets/photo_hero.dart';

class PhotoDetail extends StatelessWidget {
  const PhotoDetail(
      {Key? key,
      required this.imageUrl,
      required this.avatar,
      required this.name,
      required this.nickName});

  final String imageUrl;
  final String avatar;
  final String name;
  final String nickName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
        children: [
          Container(
            width: 410,
            height: 820,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(),
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    width: 410,
                    height: 820,
                    child: PhotoHero(
                        imageURL: imageUrl,
                        width: 200,
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    width: 410,
                    height: 300,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0.01, -1.00),
                        end: Alignment(-0.01, 1),
                        colors: [Colors.black, Color(0x00C4C4C4)],
                      ),
                    ),
                  ),
                ),
            Positioned(
                  top: 46,
                  left: 16,
                  child: CircleAvatar(child: Image(image: AssetImage(avatar)))),
              Positioned(
                top: 46,
                left: 62,
                child: Text(
                  name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Positioned(
                  top: 61,
                  left: 62,
                  child: Text(
                    nickName,
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.800000011920929),
                      fontSize: 11,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                    ),
                  )),
              Positioned(
                  top: 44,
                  right: 14,
                  child: TextButton(
                    onPressed: () {},
                    child: Icon(Icons.close, color: Colors.white),
                  ))
            ],
            ),
          ),
        ],
      ));
  }
}
