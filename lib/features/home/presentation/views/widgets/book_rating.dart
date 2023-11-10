import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class BookRated extends StatelessWidget {
  const BookRated({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        const Icon(FontAwesomeIcons.solidStar,
        color: Color(0xffFFDD4F),
        ),
        const SizedBox(
          width: 6.3,
        ),
        const Text("4.8",
        style: Styles.textStyle16,
        ) ,

        const SizedBox(
          width: 5,
        ),
        Text("(2390)",
        style: Styles.textStyle16.copyWith(

          color: Color(0xff707070)

        ),
        )

      ],
    );
  }
}
