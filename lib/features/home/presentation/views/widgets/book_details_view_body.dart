import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_list_view_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_book_details_app_bar.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width =MediaQuery.of(context).size.width;
    return  Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 25.0),
      child: Column(
        children: [
          const BookDetailsCustomAppBar() ,

          const SizedBox(
            height:6 ,
          ),
          Padding(
            padding:  EdgeInsets.symmetric(
                horizontal: width*0.22),
            child: const CustomImageForBook(),
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
            height:6 ,
          ),
          const BookRated()
        ],
      ),
    );
  }
}

