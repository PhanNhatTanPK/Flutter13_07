import 'package:flutter/material.dart';

    class MyIconButton extends StatelessWidget {
      const MyIconButton({Key? key, required this.imageUrl}): super(key: key);

      final String imageUrl;

      @override
      Widget build(BuildContext context) {
        return Padding(
          padding: const EdgeInsets.only(left: 11),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextButton(
                  onPressed: () {}, child: Image.asset(imageUrl)),
            ],
          ),
        );
      }
    }
