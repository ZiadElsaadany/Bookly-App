import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_list_view_image.dart';
import 'package:bookly/features/home/presentation/views/widgets/similar_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'book_details_action_uri.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width =MediaQuery.of(context).size.width;
    return  Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 25.0),
      child:CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody:  false,
            child:  Column(
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
                  height:10 ,
                ),
                const BookRated(),
                const SizedBox(
                  height:30 ,
                ),
                const BooksAction(),
                const Expanded(
                  child: SizedBox(
                    height:50 ,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                      "You can also like",
                      style: Styles.textStyle14.copyWith(
                          fontWeight: FontWeight.w600
                      )
                  ),
                ),
                const SizedBox(
                  height:16 ,
                ),
                const SimilarWidget(),
                const SizedBox(
                  height:40 ,
                ),


              ],
            ),
          )
        ],
      ),
    );
  }
}

