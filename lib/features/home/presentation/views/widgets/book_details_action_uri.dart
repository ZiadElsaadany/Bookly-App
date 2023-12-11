import 'package:bookly/features/home/data/models/book_model/BookModel.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/widgets/custom_button.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({Key? key, required this.bookModel}) : super(key: key);

  final BookModel bookModel ;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Expanded(child: CustomButton(
          onPressed: ()   {

          },


          text: "Free", textColor: Colors.black, buttonColor:  Colors.white,radius: const BorderRadius.only(
            topLeft: Radius.circular(12),

            bottomLeft: Radius.circular(12)
        ),)),
        Expanded(child: CustomButton(
          onPressed: ( )async{

              if (!await canLaunchUrl(Uri.parse(bookModel.volumeInfo!.previewLink!))) {

                await launchUrl(Uri.parse(bookModel.volumeInfo!.previewLink!));

              }

          },
          text:"Preview" , textColor: Colors.white, buttonColor:  const Color(0xffEF8262), radius: const BorderRadius.only(
            topRight: Radius.circular(12),

            bottomRight: Radius.circular(12)
        ),)),

      ],
    );
  }
}
