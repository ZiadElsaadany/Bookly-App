import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: ( ) {
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 125,
            child: AspectRatio(
              aspectRatio: 2.8/4,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        image: AssetImage("assets/images/Book 1 High.png"),
                        fit: BoxFit.fill
                    )
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
           Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Harry Potter and the Goblet of Fire",
                  style: Styles.textStyle20,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 3,),
                const Text("J.K. Rowling",
                  style: Styles.textStyle14,
                ),
                const SizedBox(height: 3,),

                Row(
                  children: [
                    Text("19.99 €",
                    style: Styles.textStyle20.copyWith(
                      fontWeight: FontWeight.bold
                    ),
                    ),
                   const Spacer(),
                    const BookRated()


                  ],
                )
              ],
            ),
          )

        ],
      ),
    );
  }
}



