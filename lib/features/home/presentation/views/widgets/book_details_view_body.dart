import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_list_view_image.dart';
import 'package:bookly/features/home/presentation/views/widgets/similar_section.dart';
import 'package:bookly/features/home/presentation/views/widgets/similar_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'book_details_action_uri.dart';
import 'book_details_scetion.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.symmetric(
          horizontal: 25.0),
      child:CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody:  false,
            child:  Column(
              children: [
                BookDetailsCustomAppBar() ,

                SizedBox(
                  height:6 ,
                ),
                BookDetailsSection( ),
                SizedBox(
                  height:30 ,
                ),
                BooksAction(),
                // for all size Expanded to make it always bottom
                Expanded(
                  child: SizedBox(
                    height:50 ,
                  ),
                ),
               SimilarSection(),
                SizedBox(
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

