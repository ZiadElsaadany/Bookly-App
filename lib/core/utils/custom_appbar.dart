import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 40
      ),
      child: Row(
        children: [
          Image.asset(AssetData.logo,
            height: 20,
          ),
          const Spacer(),
          IconButton(onPressed: ( ) { } , icon: const Icon(FontAwesomeIcons.magnifyingGlass,
            size: 25,
          ))
        ],
      ),
    );
  }
}
