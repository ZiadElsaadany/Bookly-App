import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_loading_widget.dart';
import 'package:bookly/features/home/presentation/view_model/similar_cubit/similar_books_cubit.dart';
import 'package:bookly/features/home/presentation/view_model/similar_cubit/similar_books_tates.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_list_view_image.dart';

class SimilarWidget extends StatelessWidget {
  const SimilarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarCubit, SimilarStates>(
      builder: (context, state) {
      if(state is GetSimilarSuccess )  {
        return SizedBox(
          height: MediaQuery
              .of(context)
              .size
              .height * .15,
          child: ListView.builder(


            scrollDirection: Axis.horizontal,
            itemBuilder: (ctx, index) {
              return  CustomImageForBook(imageUrl:state.books[index].volumeInfo?.imageLinks?.thumbnail??"",);
            },
            itemCount: state.books.length,
          ),
        );
      }else if(state is GetSimilarFailure )   {
        return  CustomErrorWidget(errorMessage: state.errorMessage)   ;
      }else{
        return const CustomLoadingWidget();
      }
      },
    );
  }
}


