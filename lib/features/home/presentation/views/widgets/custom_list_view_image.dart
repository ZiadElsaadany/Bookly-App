

import 'package:flutter/material.dart';

class CustomListViewItemImageForBook extends StatelessWidget {
  const CustomListViewItemImageForBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3/4,
      child: Container(

        margin: const EdgeInsets.symmetric(horizontal: 8),
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