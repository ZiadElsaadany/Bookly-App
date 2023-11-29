import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_loading_widget.dart';
import 'package:bookly/features/home/presentation/view_model/best_seller_books_cubit/best_seller_cubit.dart';
import 'package:bookly/features/home/presentation/view_model/best_seller_books_cubit/best_seller_states.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BestSellerBooksCubit, BestSellerBooksStates>(
      builder: (context, state) {
        if(state is GetBestSellerBookSuccess ) {
          return ListView.builder(

              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.only(
                top: 0,
              ),
              scrollDirection: Axis.vertical,
              itemCount: state.books.length,
              itemBuilder: (ctx, index) {
                return  Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0,
                      vertical: 10
                  ),
                  child: BestSellerItem(
                    bookModel:state.books[index],
                  ),
                );
              });
        }
        else if(state is GetBestSellerBookFailure ) {
          return CustomErrorWidget(errorMessage: state.errorMessage) ;
        }else{
          return const CustomLoadingWidget();
        }
      },
    );
  }
}
