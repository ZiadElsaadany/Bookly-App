
import 'package:bookly/features/home/presentation/views/widgets/similar_widgets.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class SimilarSection extends StatelessWidget {
  const SimilarSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
      ],
    );
  }
}
