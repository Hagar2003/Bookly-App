import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(mainAxisAlignment:MainAxisAlignment.center,
    children: [
        Center(child: Image.asset(AssetData.logo))
      ],
    );
  }
}