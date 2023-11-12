import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_button.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomButton(text: "999\$", textColor: Colors.black, buttonColor:  Colors.white,radius: BorderRadius.only(
            topLeft: Radius.circular(12),

            bottomLeft: Radius.circular(12)
        ),)),
        Expanded(child: CustomButton(text:"Free Preview" , textColor: Colors.white, buttonColor:  Color(0xffEF8262), radius: BorderRadius.only(
            topRight: Radius.circular(12),

            bottomRight: Radius.circular(12)
        ),)),

      ],
    );
  }
}
