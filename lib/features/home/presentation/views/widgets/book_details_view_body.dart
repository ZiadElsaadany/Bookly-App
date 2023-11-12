import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_list_view_image.dart';
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

          Padding(
            padding:  EdgeInsets.symmetric(
                horizontal: width*0.17),
            child: const CustomImageForBook(),
          ) ,
          Text(
            "",
            style: Styles.textStyle20,
          ),
        ],
      ),
    );
  }
}

