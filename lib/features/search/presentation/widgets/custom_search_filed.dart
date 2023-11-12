import 'package:flutter/material.dart';

import '../../../../constants.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({Key? key}) : super(key: key);




  OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(
            color: Colors.white
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return TextField(

      decoration: InputDecoration(
          hintText: "Search",
          enabledBorder: outlineInputBorder(),
          focusedBorder: outlineInputBorder(),
          suffixIcon: TextButton(
            child: const Opacity(
              opacity: 0.8,
              child: Icon(searchIcon,
              color: Colors.white,
              ),
            ),
            onPressed: ( ) { } ,
          )
      ),
    );
  }
}
