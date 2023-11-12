import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class BookRated extends StatelessWidget {
  const BookRated({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(FontAwesomeIcons.solidStar,
        color: Color(0xffFFDD4F),
          size: 14,


        ),
        SizedBox(
          width: 5,
        ),
        Text("4.8",
        style: Styles.textStyle16,
        ) ,

        SizedBox(
          width: 8,
        ),
        Opacity(
          opacity: 0.5,
          child: Text("(2390)",
          style: Styles.textStyle16
          ),
        )

      ],
    );
  }
}
