import 'package:bookly/features/home/presentation/views/widgets/custom_list_view_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomListViewBooks extends StatelessWidget {
  const CustomListViewBooks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.3,
      child: ListView.builder(
        
        padding: const EdgeInsets.symmetric(
          horizontal: 5
        ),

        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx,index) {
        return   const CustomListViewItemImageForBook();
      },
      itemCount: 5,
      ),
    );
  }
}
