import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: 20
      ),
      child: Row(
        children: [
          Image.asset(AssetData.logo,
            height: 20,
          ),
          const Spacer(),
          IconButton(onPressed: ( ) {
            GoRouter.of(context).push(AppRouter.kSearchView);
          } , icon: const Icon(searchIcon,
            size: 25,
          ))
        ],
      ),
    );
  }
}
