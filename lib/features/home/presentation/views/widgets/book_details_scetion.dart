import 'package:bookly/features/home/data/models/book_model/BookModel.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';
import 'custom_list_view_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({Key? key, required this.bookModel}) : super(key: key);

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width =MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding:  EdgeInsets.symmetric(
              horizontal: width*0.22),
          child:  CustomImageForBook(
            imageUrl:             bookModel.volumeInfo?.imageLinks?.thumbnail??""

          ),
        ) ,
        const SizedBox(
          height:35 ,
        ),
         Text(
          bookModel.volumeInfo?.title??"",
          textAlign: TextAlign.center,
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height:6 ,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
    bookModel.volumeInfo?.authors?[0]??"",
            style: Styles.titleMedium.copyWith(
                fontStyle: FontStyle.italic
            ),
          ),
        ),
        const SizedBox(
          height:10 ,
        ),
         BookRated(
          count: bookModel.volumeInfo?.averageRating??0,

          rating: bookModel.volumeInfo?.ratingsCount??0,
        ),
      ],
    );
  }
}
