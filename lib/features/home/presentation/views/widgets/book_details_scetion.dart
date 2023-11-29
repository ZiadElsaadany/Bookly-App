import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';
import 'custom_list_view_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width =MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding:  EdgeInsets.symmetric(
              horizontal: width*0.22),
          child: const CustomImageForBook(imageUrl: '',),
        ) ,
        const SizedBox(
          height:35 ,
        ),
        const Text(
          "The hungle Book",
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height:6 ,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            "Ziad Elsaadany",
            style: Styles.titleMedium.copyWith(
                fontStyle: FontStyle.italic
            ),
          ),
        ),
        const SizedBox(
          height:10 ,
        ),
         BookRated(
          count: 0,

          rating: 0,
        ),
      ],
    );
  }
}
