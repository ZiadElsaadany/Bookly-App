

import 'package:flutter/material.dart';

class CustomImageForBook extends StatelessWidget {
  const CustomImageForBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3/4,
      child: Container(

        margin: const EdgeInsets.only(right: 12),
        decoration:BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: const DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/Book 1 High.png")
            )
        ),
      ),
    );
  }
}