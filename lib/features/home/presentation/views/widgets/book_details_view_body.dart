import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/models/book_model/BookModel.dart';
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
  const BookDetailsBody({Key? key, required this.bookModel}) : super(key: key);

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return   Padding(
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
                BookDetailsSection(
                  bookModel: bookModel,
                ),
                const SizedBox(
                  height:30 ,
                ),
                const BooksAction(),
                // for all size Expanded to make it always bottom
                const Expanded(
                  child: SizedBox(
                    height:50 ,
                  ),
                ),
               const SimilarSection(),
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

