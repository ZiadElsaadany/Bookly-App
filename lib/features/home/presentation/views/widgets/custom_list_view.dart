import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_loading_widget.dart';
import 'package:bookly/features/home/presentation/view_model/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/view_model/featured_books_cubit/featured_books_states.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_list_view_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedListViewBooks extends StatelessWidget {
  const FeaturedListViewBooks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksStates>(
      builder: (context, state) {
      if(state is GetFeaturedBookSuccess){
        return SizedBox(
          height: MediaQuery
              .of(context)
              .size
              .height * .3,
          child: ListView.builder(

            physics: const BouncingScrollPhysics(),

            scrollDirection: Axis.horizontal,
            itemBuilder: (ctx, index) {
              return  CustomImageForBook(imageUrl:

                state.books[index].volumeInfo?.imageLinks?.thumbnail??""
                ,);
            },
            itemCount: 5,
          ),
        );
      }else if(state is GetFeaturedBookFailure ) {
         return CustomErrorWidget(
           errorMessage: state.errorMessage,
         );
      }else{
        return const CustomLoadingWidget();

      }
      }
    );
  }
}
