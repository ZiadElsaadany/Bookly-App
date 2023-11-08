import 'package:bookly/constants.dart';
import 'package:bookly/features/presentations/views/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
        home: const SplashScreen(),
    theme: ThemeData().copyWith(scaffoldBackgroundColor: kPrimaryColor
    ));
  }
}

