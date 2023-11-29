import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_listview.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/custom_appbar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(
      ),
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 15
            ),      child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              FeaturedListViewBooks(),
              SizedBox(
                height: 50,
              ),
              Text("Best Seller", style: Styles.titleMedium,),
              SizedBox(
                height: 20,
              ),
            ],
          ),
          ),
        ),
        // to fill reminder for screen
        SliverFillRemaining(
          child:               Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 8.0),
            child: BestSellerListView(),
          ),
        )

      ],
    );
  }
}


