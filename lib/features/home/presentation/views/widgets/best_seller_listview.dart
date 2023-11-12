import 'package:bookly/features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // take height for children
      // shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.only(
        top: 0,
      ),
        scrollDirection: Axis.vertical,
        itemCount: 5 ,itemBuilder: (ctx,index) {
      return const Padding(
        padding: EdgeInsets.symmetric(
            horizontal: 8.0,
        vertical: 10
        ),
        child: BestSellerItem(),
      );
    } );
  }
}
