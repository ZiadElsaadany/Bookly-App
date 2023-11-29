import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
class CustomImageForBook extends StatelessWidget {
  const CustomImageForBook({Key? key, required this.imageUrl}) : super(key: key);

  final String imageUrl ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          right: 16.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: AspectRatio(
          aspectRatio: 3/4,
          child: CachedNetworkImage(
            imageUrl: imageUrl,
            fit: BoxFit.cover,
            errorWidget: (c,s,r) {
              return const Icon(Icons.error);
            },
            placeholder: (c,d) {
              return const Center(child: CircularProgressIndicator());
            } ,



          ),
        ),
      ),
    );
  }
}