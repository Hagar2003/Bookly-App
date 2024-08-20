import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/features/home/presentation/view_models/views/home_view.dart';
import 'package:bookly_app/features/home/presentation/view_models/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    //navigate to home
    navigateToHome();
  }


  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: Image.asset(AssetData.logo)),
        SizedBox(
          height: 9,
        ),
        animatedWidget(slidingAnimation: slidingAnimation)
      ],
    );
  }

  void initSlidingAnimation() {
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    slidingAnimation = Tween<Offset>(begin: Offset(0, 3), end: Offset.zero)
        .animate(controller);
    controller.forward();
  }

  void navigateToHome() {
    Future.delayed(Duration(seconds: 1), () {
      Get.to(() => HomeView(),transition: Transition.fade,duration: Kduration);
    });
  }
}
