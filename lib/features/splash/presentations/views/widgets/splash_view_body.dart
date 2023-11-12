
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class SplashBody extends StatefulWidget {
  const SplashBody({Key? key}) : super(key: key);

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> with SingleTickerProviderStateMixin{


  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  late Animation<Offset> slidingAnimation2;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   initSplashAnimation();
  navigateToHome();

  }
 void initSplashAnimation( ){
   animationController = AnimationController(
     //with SingleTickerProviderStateMixin
     // that handle ticker
     // refresh for each second on duration
       vsync:this,
       duration:const Duration(seconds: 1)

   );


   slidingAnimation = Tween<Offset>(begin: const Offset(0,10),end:const Offset(0,0) ).animate(animationController);
   animationController.forward();
 }

 void  navigateToHome(){
   Future.delayed(const Duration
     (
       seconds: 2
   ),
         ()  {
GoRouter.of(context).push(AppRouter.kHomeScreenPath);
     } ,
   );
 }
  @override
  void dispose() {
    super.dispose();
    animationController.dispose();

  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [


        Image.asset(AssetData.logo),
        AnimatedBuilder(
          animation: slidingAnimation,
          builder: (context,_) {
            return SlideTransition(
              position: slidingAnimation,
              child: const Text("Read Free Books",
              textAlign: TextAlign.center,

              ),
            );
          }
        )

      ],
    );
  }
}
