import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/search/presentation/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';

import 'custom_search_filed.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
          horizontal: 30.0,
      vertical: 10
      ),
      child: CustomScrollView(

        slivers: [

          SliverToBoxAdapter(
            child:    CustomSearchField(),),
          SliverToBoxAdapter(
            child:    SizedBox(
              height: 20,
            ),),  SliverToBoxAdapter(
            child:    Text(
            "Search Result",
              style: Styles.titleMedium,
            ),),  SliverToBoxAdapter(
            child:    SizedBox(
              height: 16,
            ),),
          SliverFillRemaining(
            child:
            Padding(
              padding: EdgeInsets.only(
                  bottom: 8.0),
              child: SearchResultListView(),
            ),
          )

        ],
      ),
    );
  }
}


