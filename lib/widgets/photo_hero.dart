import 'package:flutter/material.dart';

class PhotoHero extends StatelessWidget {
  const PhotoHero({Key? key, required this.imageURL, required this.width, required this.onTap});

  final String imageURL;
  final VoidCallback onTap;
  final double width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Hero(
        tag: imageURL,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            child: Image.asset(imageURL, fit: BoxFit.cover,),
          ),
        ),
      ),
    );
  }
}
