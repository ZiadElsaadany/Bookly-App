import 'package:flutter/material.dart';

import '../widgets/search_view_body_widget.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SearchViewBody(),
      ),
    );
  }
}

