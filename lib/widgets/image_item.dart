import 'package:flutter/material.dart';
import 'package:flutter1307/model/item.dart';

class ImageItem extends StatelessWidget {
  const ImageItem({Key? key, required this.item}): super(key:key);

  final Item item;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: Image(image: AssetImage(item.imageURL
      ), fit: BoxFit.fill,),
    );
  }
}
