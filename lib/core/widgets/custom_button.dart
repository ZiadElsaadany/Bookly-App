import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.text, required this.textColor, required this.buttonColor,
    required this.radius}) : super(key: key);


  final String text ;
  final Color textColor;
  final Color buttonColor;
  final BorderRadiusGeometry radius;
  // to splash color
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: MaterialButton(onPressed: ( ) { } ,

        color:buttonColor ,
        shape:RoundedRectangleBorder(
          borderRadius:radius
        ),

        child: Text(text,
        style: Styles.textStyle16.copyWith(
          color: textColor ,
          fontWeight: FontWeight.bold
        ),
        ),
      ),
    );
  }
}
