import 'package:flutter/material.dart';
class CustomImageForBook extends StatelessWidget {
  const CustomImageForBook({Key? key, required this.imageUrl}) : super(key: key);

  final String imageUrl ;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3/4,
      child: Container(
        margin: const EdgeInsets.only(right: 12),
        decoration:BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image:  DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(imageUrl)
            )
        ),
      ),
    );
  }
}