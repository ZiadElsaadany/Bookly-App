import 'package:flutter/material.dart';

import 'custom_list_view_image.dart';

class SimilarWidget extends StatelessWidget {
  const SimilarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.15,
      child: ListView.builder(



        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx,index) {
          return   const CustomImageForBook(imageUrl: '',);
        },
        itemCount: 5,
      ),
    );
  }
}


