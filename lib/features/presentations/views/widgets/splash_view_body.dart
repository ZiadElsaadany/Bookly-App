
import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [


        Image.asset(AssetData.logo),
        Text("Read Free Books",
        textAlign: TextAlign.center,

        )

      ],
    );
  }
}
