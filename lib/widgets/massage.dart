import 'package:flutter/material.dart';

class Massage extends StatelessWidget {
  const Massage({Key? key, required this.massage, required this.image})
      : super(key: key);

  final String massage;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            margin: EdgeInsets.all(16),
            width: 28,
            height: 28,
            decoration: ShapeDecoration(
                shape: OvalBorder(),
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.fill))),
        Container(
            height: 84,
            width: 299,
            decoration: ShapeDecoration(
                color: Colors.black.withOpacity(0.029999999329447746),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                  topRight: Radius.circular(6),
                  bottomLeft: Radius.circular(6),
                  bottomRight: Radius.circular(6),
                ))),
            child: Container(
                height: 52,
                width: 269,
                margin: EdgeInsets.all(16),
                child: Text(massage))),
      ],
    );
  }
}
