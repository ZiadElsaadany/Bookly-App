import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class BookRated extends StatelessWidget {
  const BookRated({Key? key, required this.rating, required this.count}) : super(key: key);

  final num rating;
  final num count;
  @override
  Widget build(BuildContext context) {
    return   Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(FontAwesomeIcons.solidStar,
        color: Color(0xffFFDD4F),
          size: 14,


        ),
        const SizedBox(
          width: 5,
        ),
        Text(rating.toString(),
        style: Styles.textStyle16,
        ) ,

        const SizedBox(
          width: 8,
        ),
        Opacity(
          opacity: 0.5,
          child: Text(count.toString(),
          style: Styles.textStyle16
          ),
        )

      ],
    );
  }
}
