import 'package:booking_app/core/utils/assets.dart';
import 'package:booking_app/features/home/presentaion/views/homeView.dart';
import 'package:booking_app/features/splash/presentation/views/widgets/slidingText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../constants.dart';


class SplashViewBody extends StatefulWidget{
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {

  late AnimationController animationController ;
  late Animation <Offset> slidingAnimation ;


  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateWithTransition();
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
        Image.asset(AssetsData.logo),
        const SizedBox(
          height: 5,
        ),
        SlidingText(slidingAnimation: slidingAnimation),

      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidingAnimation = Tween<Offset>(begin: const Offset(0, 5) , end: Offset.zero).animate(animationController) ;

    animationController.forward();
  }

  void navigateWithTransition() {
    Future.delayed(const Duration(seconds: 3),() {
      Get.to(() =>const HomeView(),transition: Transition.fadeIn, duration: kTransitionDuration);
    });
  }
}


