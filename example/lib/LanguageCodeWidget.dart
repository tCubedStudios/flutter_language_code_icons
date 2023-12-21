
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LanguageCodeWidget extends StatelessWidget {

  final double width;
  final double height;
  final double? iconSize;
  final IconData iconData;
  final String iconCodePoint;
  final Color color;

  const LanguageCodeWidget(
    this.iconData,
    this.iconCodePoint,
    {
      super.key,
      this.width = 48.0,
      this.height = 48.0,
      this.iconSize,
      this.color = const Color.fromARGB(255, 103, 58, 183)
    }
  );

  @override
  Widget build(BuildContext context) => SizedBox(
    width: width,
    height: height,
    child: Column(
      children: [
        Icon(
          iconData,
          size: iconSize,
          color: color,
        ),
        Text(
          iconCodePoint,
          style: TextStyle(
            color: color
          ),
        )
      ],
    )
  );
}